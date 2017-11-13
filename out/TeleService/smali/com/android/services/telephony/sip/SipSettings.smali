.class public Lcom/android/services/telephony/sip/SipSettings;
.super Landroid/preference/PreferenceActivity;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipSettings$SipPreference;
    }
.end annotation


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

.field private mSipListContainer:Landroid/preference/PreferenceCategory;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/services/telephony/sip/SipSettings$SipPreference;",
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
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 80
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mUid:I

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/services/telephony/sip/SipSettings;)Lcom/android/services/telephony/sip/SipSharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/services/telephony/sip/SipSettings;)Landroid/net/sip/SipManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/services/telephony/sip/SipSettings;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/sip/SipSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/services/telephony/sip/SipSettings;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/services/telephony/sip/SipSettings;)Landroid/net/sip/SipProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->addProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/services/telephony/sip/SipSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->updateProfilesStatus()V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/services/telephony/sip/SipSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->retrieveSipLists()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipSettings;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method private addPreferenceFor(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 271
    new-instance v0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/services/telephony/sip/SipSettings$SipPreference;-><init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    .line 272
    .local v0, "pref":Lcom/android/services/telephony/sip/SipSettings$SipPreference;
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 275
    new-instance v1, Lcom/android/services/telephony/sip/SipSettings$4;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipSettings$4;-><init>(Lcom/android/services/telephony/sip/SipSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 283
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
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V

    .line 337
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
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

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/android/services/telephony/sip/SipSettings$8;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/sip/SipSettings$8;-><init>(Lcom/android/services/telephony/sip/SipSettings;)V

    return-object v0
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 122
    :try_start_0
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "pkgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 124
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 128
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgs":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 125
    :catch_0
    move-exception v1

    .line 126
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

    invoke-static {v3}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    .line 128
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
    .line 260
    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

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

    .line 261
    .local v1, "p":Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
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
    .line 202
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "profileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
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

    .line 206
    :cond_0
    return-object v0
.end method

.method private handleProfileClick(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v0

    .line 287
    .local v0, "uid":I
    iget v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mUid:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    .line 304
    :goto_0
    return-void

    .line 291
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

    new-instance v3, Lcom/android/services/telephony/sip/SipSettings$5;

    invoke-direct {v3, p0, p1}, Lcom/android/services/telephony/sip/SipSettings$5;-><init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 443
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

    .line 444
    return-void
.end method

.method private processActiveProfilesFromSipService()V
    .locals 7

    .prologue
    .line 248
    iget-object v6, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v6}, Landroid/net/sip/SipManager;->getListOfProfiles()[Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 249
    .local v0, "activeList":[Landroid/net/sip/SipProfile;
    move-object v2, v0

    .local v2, "arr$":[Landroid/net/sip/SipProfile;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 250
    .local v1, "activeProfile":Landroid/net/sip/SipProfile;
    invoke-direct {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;

    move-result-object v5

    .line 251
    .local v5, "profile":Landroid/net/sip/SipProfile;
    if-nez v5, :cond_0

    .line 252
    iget-object v6, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    goto :goto_1

    .line 257
    .end local v1    # "activeProfile":Landroid/net/sip/SipProfile;
    .end local v5    # "profile":Landroid/net/sip/SipProfile;
    :cond_1
    return-void
.end method

.method private retrieveSipLists()V
    .locals 6

    .prologue
    .line 210
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    .line 211
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    .line 212
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->processActiveProfilesFromSipService()V

    .line 213
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    new-instance v4, Lcom/android/services/telephony/sip/SipSettings$3;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/sip/SipSettings$3;-><init>(Lcom/android/services/telephony/sip/SipSettings;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 225
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v3}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 245
    :cond_1
    return-void

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 229
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

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

    .line 230
    .local v2, "p":Landroid/net/sip/SipProfile;
    invoke-direct {p0, v2}, Lcom/android/services/telephony/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 235
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Landroid/net/sip/SipProfile;
    :cond_3
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

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

    .line 236
    .restart local v2    # "p":Landroid/net/sip/SipProfile;
    iget v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mUid:I

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 238
    :try_start_0
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
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

    invoke-static {v3}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "profileUri"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 348
    new-instance v0, Lcom/android/services/telephony/sip/SipSettings$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/services/telephony/sip/SipSettings$7;-><init>(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method

.method private startSipEditor(Landroid/net/sip/SipProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/services/telephony/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/sip/SipEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sip_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 343
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/sip/SipSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 344
    return-void
.end method

.method private unregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 308
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/SipSettings$6;

    invoke-direct {v1, p0, p1}, Lcom/android/services/telephony/sip/SipSettings$6;-><init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    const-string v2, "unregisterProfile"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 318
    return-void
.end method

.method private updateProfilesStatus()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/SipSettings$2;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipSettings$2;-><init>(Lcom/android/services/telephony/sip/SipSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 199
    return-void
.end method


# virtual methods
.method deleteProfile(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 322
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;

    .line 323
    .local v0, "pref":Lcom/android/services/telephony/sip/SipSettings$SipPreference;
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Lcom/android/services/telephony/sip/SipSettings$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/services/telephony/sip/SipSettings$1;-><init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/content/Intent;I)V

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipSettings$1;->start()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    .line 136
    new-instance v1, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    .line 137
    new-instance v1, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    .line 139
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 140
    const v1, 0x7f04002a

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->setContentView(I)V

    .line 141
    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->addPreferencesFromResource(I)V

    .line 142
    const-string v1, "sip_account_list"

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    .line 144
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 145
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 413
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 414
    const v1, 0x7f08000a

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 415
    .local v0, "addAccountMenuItem":Landroid/view/MenuItem;
    const v1, 0x7f020012

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 416
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 417
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 159
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 428
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 429
    .local v0, "itemId":I
    sparse-switch v0, :sswitch_data_0

    .line 439
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 431
    :sswitch_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/services/telephony/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 435
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->onBackPressed()V

    goto :goto_0

    .line 429
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
    .line 422
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 423
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 153
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->updateProfilesStatus()V

    .line 154
    return-void
.end method
