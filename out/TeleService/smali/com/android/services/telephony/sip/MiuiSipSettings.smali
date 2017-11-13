.class public Lcom/android/services/telephony/sip/MiuiSipSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiSipSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;
    }
.end annotation


# instance fields
.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

.field private mSipAddAccountTip:Landroid/view/View;

.field private mSipListContainer:Landroid/preference/PreferenceCategory;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSipProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 92
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mUid:I

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/services/telephony/sip/MiuiSipSettings;)Lcom/android/services/telephony/sip/SipSharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/services/telephony/sip/MiuiSipSettings;)Landroid/net/sip/SipManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/services/telephony/sip/MiuiSipSettings;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/services/telephony/sip/MiuiSipSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->handleSipReceiveCallsOption(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/sip/MiuiSipSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/services/telephony/sip/MiuiSipSettings;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/services/telephony/sip/MiuiSipSettings;)Landroid/net/sip/SipProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->addProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/services/telephony/sip/MiuiSipSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->updateProfilesStatus()V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/services/telephony/sip/MiuiSipSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->retrieveSipLists()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/services/telephony/sip/MiuiSipSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->updateSipAddAccountTip()V

    return-void
.end method

.method private addPreferenceFor(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 310
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    .line 311
    .local v0, "pref":Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 314
    new-instance v1, Lcom/android/services/telephony/sip/MiuiSipSettings$5;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/MiuiSipSettings$5;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 322
    return-void
.end method

.method private addProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "p"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V

    .line 374
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProfile, cannot set registration listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipSettings$9;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/sip/MiuiSipSettings$9;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V

    return-object v0
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 134
    :try_start_0
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "pkgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 136
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 140
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgs":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageNameFromUid, cannot find name of uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/sip/MiuiSipSettings;->log(Ljava/lang/String;)V

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;
    .locals 4
    .param p1, "activeProfile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 300
    .local v1, "p":Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    .end local v1    # "p":Landroid/net/sip/SipProfile;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 3
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "profileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_0
    return-object v0
.end method

.method private handleProfileClick(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v0

    .line 326
    .local v0, "uid":I
    iget v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mUid:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 327
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    .line 343
    :goto_0
    return-void

    .line 330
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080013

    new-instance v3, Lcom/android/services/telephony/sip/MiuiSipSettings$6;

    invoke-direct {v3, p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings$6;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/net/sip/SipProfile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 510
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "option":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 514
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    return-void
.end method

.method private declared-synchronized handleSipReceiveCallsOption(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setReceivingCallsEnabled(Z)V

    .line 540
    invoke-static {p0, p1}, Lcom/android/services/telephony/sip/SipUtil;->useSipToReceiveIncomingCalls(Landroid/content/Context;Z)V

    .line 543
    invoke-static {}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;

    move-result-object v0

    .line 544
    .local v0, "sipAccountRegistry":Lcom/android/services/telephony/sip/SipAccountRegistry;
    invoke-virtual {v0, p0}, Lcom/android/services/telephony/sip/SipAccountRegistry;->restartSipService(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    .line 538
    .end local v0    # "sipAccountRegistry":Lcom/android/services/telephony/sip/SipAccountRegistry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 480
    const-string v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipSettings] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method private processActiveProfilesFromSipService()V
    .locals 9

    .prologue
    .line 284
    :try_start_0
    iget-object v7, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v7}, Landroid/net/sip/SipManager;->getListOfProfiles()[Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 285
    .local v0, "activeList":[Landroid/net/sip/SipProfile;
    move-object v2, v0

    .local v2, "arr$":[Landroid/net/sip/SipProfile;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 286
    .local v1, "activeProfile":Landroid/net/sip/SipProfile;
    invoke-direct {p0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;

    move-result-object v6

    .line 287
    .local v6, "profile":Landroid/net/sip/SipProfile;
    if-nez v6, :cond_0

    .line 288
    iget-object v7, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/net/sip/SipProfile;->setCallingUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 293
    .end local v0    # "activeList":[Landroid/net/sip/SipProfile;
    .end local v1    # "activeProfile":Landroid/net/sip/SipProfile;
    .end local v2    # "arr$":[Landroid/net/sip/SipProfile;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "profile":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v3

    .line 294
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processActiveProfilesFromSipService error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/services/telephony/sip/MiuiSipSettings;->log(Ljava/lang/String;)V

    .line 296
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private registerForReceiveCallsCheckBox()V
    .locals 2

    .prologue
    .line 518
    const-string v0, "sip_receive_calls_key"

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    .line 520
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 522
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/services/telephony/sip/MiuiSipSettings$11;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/MiuiSipSettings$11;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 535
    return-void
.end method

.method private registerForSipCallOptionPreference()V
    .locals 4

    .prologue
    .line 484
    const-string v1, "button_sip_call_options"

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 485
    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f070002

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 489
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/services/telephony/sip/MiuiSipSettings$10;

    invoke-direct {v2, p0}, Lcom/android/services/telephony/sip/MiuiSipSettings$10;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 496
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 498
    .local v0, "optionsValueIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 506
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    return-void

    .line 485
    .end local v0    # "optionsValueIndex":I
    :cond_1
    const v1, 0x7f070001

    goto :goto_0
.end method

.method private retrieveSipLists()V
    .locals 6

    .prologue
    .line 239
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipPreferenceMap:Ljava/util/Map;

    .line 240
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipProfileList:Ljava/util/List;

    .line 241
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->processActiveProfilesFromSipService()V

    .line 242
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipProfileList:Ljava/util/List;

    new-instance v4, Lcom/android/services/telephony/sip/MiuiSipSettings$3;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/sip/MiuiSipSettings$3;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 253
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 254
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    :cond_0
    new-instance v3, Lcom/android/services/telephony/sip/MiuiSipSettings$4;

    invoke-direct {v3, p0}, Lcom/android/services/telephony/sip/MiuiSipSettings$4;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/sip/MiuiSipSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v3}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 280
    :cond_1
    return-void

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 259
    .local v2, "p":Landroid/net/sip/SipProfile;
    invoke-direct {p0, v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 270
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Landroid/net/sip/SipProfile;
    :cond_3
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 271
    .restart local v2    # "p":Landroid/net/sip/SipProfile;
    iget v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mUid:I

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 273
    :try_start_0
    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/net/sip/SipException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveSipLists, cannot set registration listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/sip/MiuiSipSettings;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "profileUri"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipSettings$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/services/telephony/sip/MiuiSipSettings$8;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method private startSipEditor(Landroid/net/sip/SipProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mProfile:Landroid/net/sip/SipProfile;

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/sip/MiuiSipEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sip_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 380
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 381
    return-void
.end method

.method private unregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 347
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/MiuiSipSettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/services/telephony/sip/MiuiSipSettings$7;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/net/sip/SipProfile;)V

    const-string v2, "unregisterProfile"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 357
    return-void
.end method

.method private updateProfilesStatus()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/MiuiSipSettings$2;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/MiuiSipSettings$2;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    return-void
.end method

.method private updateSipAddAccountTip()V
    .locals 2

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipAddAccountTip:Landroid/view/View;

    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 551
    return-void

    .line 548
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method deleteProfile(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 361
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;

    .line 362
    .local v0, "pref":Lcom/android/services/telephony/sip/MiuiSipSettings$SipPreference;
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipSettings$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/services/telephony/sip/MiuiSipSettings$1;-><init>(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/content/Intent;I)V

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/MiuiSipSettings$1;->start()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipManager:Landroid/net/sip/SipManager;

    .line 148
    new-instance v1, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    .line 149
    new-instance v1, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    .line 151
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 152
    const v1, 0x7f040020

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->setContentView(I)V

    .line 153
    const v1, 0x7f060025

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->addPreferencesFromResource(I)V

    .line 154
    const-string v1, "sip_account_list"

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    .line 156
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 157
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->registerForReceiveCallsCheckBox()V

    .line 158
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->registerForSipCallOptionPreference()V

    .line 159
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->updateProfilesStatus()V

    .line 161
    const v1, 0x7f0e006a

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mSipAddAccountTip:Landroid/view/View;

    .line 162
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->updateSipAddAccountTip()V

    .line 164
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 165
    .local v0, "actionBar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_0

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 450
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 451
    const v0, 0x7f08000a

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$attr;->actionBarNewIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 454
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 188
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 465
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 466
    .local v0, "itemId":I
    sparse-switch v0, :sswitch_data_0

    .line 476
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 468
    :sswitch_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 472
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->onBackPressed()V

    goto :goto_0

    .line 466
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 459
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 460
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 182
    :goto_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->updateSipAddAccountTip()V

    .line 183
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipReceiveCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method
