.class public final Lcom/android/services/telephony/sip/SipAccountRegistry;
.super Ljava/lang/Object;
.source "SipAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/services/telephony/sip/SipAccountRegistry;


# instance fields
.field private final mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-direct {v0}, Lcom/android/services/telephony/sip/SipAccountRegistry;-><init>()V

    sput-object v0, Lcom/android/services/telephony/sip/SipAccountRegistry;->INSTANCE:Lcom/android/services/telephony/sip/SipAccountRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipAccountRegistry;->mAccounts:Ljava/util/List;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/sip/SipAccountRegistry;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipAccountRegistry;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipAccountRegistry;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipProfiles(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private getAccountEntry(Ljava/lang/String;)Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;
    .locals 3
    .param p1, "sipProfileName"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/services/telephony/sip/SipAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;

    .line 292
    .local v0, "entry":Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;
    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->getProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    .end local v0    # "entry":Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/services/telephony/sip/SipAccountRegistry;->INSTANCE:Lcom/android/services/telephony/sip/SipAccountRegistry;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipAccountRegistry] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method private startSipProfiles(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sipProfileName"    # Ljava/lang/String;
    .param p3, "enableProfile"    # Z

    .prologue
    .line 234
    new-instance v8, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-direct {v8, p1}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 235
    .local v8, "sipSharedPreferences":Lcom/android/services/telephony/sip/SipSharedPreferences;
    invoke-virtual {v8}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    .line 236
    .local v1, "isReceivingCalls":Z
    invoke-virtual {v8}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "primaryProfile":Ljava/lang/String;
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v9

    .line 238
    .local v9, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {p1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v6

    .line 239
    .local v6, "sipManager":Landroid/net/sip/SipManager;
    new-instance v5, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v5, p1}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    .line 240
    .local v5, "profileDb":Lcom/android/services/telephony/sip/SipProfileDb;
    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v7

    .line 242
    .local v7, "sipProfileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;

    .line 245
    .local v4, "profile":Landroid/net/sip/SipProfile;
    if-eqz p2, :cond_1

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 246
    :cond_1
    invoke-static {p1, v4}, Lcom/android/services/telephony/sip/SipUtil;->createPhoneAccount(Landroid/content/Context;Landroid/net/sip/SipProfile;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 247
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v9, v2}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 248
    if-eqz p3, :cond_2

    .line 249
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/telecom/TelecomManager;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V

    .line 251
    :cond_2
    invoke-direct {p0, v4, v6, p1, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipServiceForProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipManager;Landroid/content/Context;Z)V

    goto :goto_0

    .line 255
    .end local v2    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v4    # "profile":Landroid/net/sip/SipProfile;
    :cond_3
    if-eqz v3, :cond_4

    .line 258
    invoke-virtual {v8}, Lcom/android/services/telephony/sip/SipSharedPreferences;->cleanupPrimaryAccountSetting()V

    .line 260
    :cond_4
    return-void
.end method

.method private startSipProfilesAsync(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sipProfileName"    # Ljava/lang/String;
    .param p3, "enableProfile"    # Z

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/SipAccountRegistry$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/services/telephony/sip/SipAccountRegistry$1;-><init>(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    return-void
.end method

.method private startSipServiceForProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipManager;Landroid/content/Context;Z)V
    .locals 2
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "sipManager"    # Landroid/net/sip/SipManager;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "isReceivingCalls"    # Z

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->removeSipProfile(Ljava/lang/String;)V

    .line 278
    new-instance v0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;-><init>(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/net/sip/SipProfile;)V

    .line 279
    .local v0, "entry":Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->startSipService(Landroid/net/sip/SipManager;Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method removeSipProfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "sipProfileName"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getAccountEntry(Ljava/lang/String;)Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;

    move-result-object v0

    .line 164
    .local v0, "accountEntry":Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    return-void
.end method

.method public restartSipService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipProfiles(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 201
    return-void
.end method

.method setup(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->verifyAndPurgeInvalidPhoneAccounts(Landroid/content/Context;)V

    .line 117
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipProfilesAsync(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method startSipService(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sipProfileName"    # Ljava/lang/String;
    .param p3, "enableProfile"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipProfilesAsync(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method stopSipService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sipProfileName"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-direct {p0, p2}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getAccountEntry(Ljava/lang/String;)Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;

    move-result-object v0

    .line 182
    .local v0, "accountEntry":Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;
    if-eqz v0, :cond_0

    .line 183
    invoke-static {p1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v2

    .line 184
    .local v2, "sipManager":Landroid/net/sip/SipManager;
    invoke-virtual {v0, v2}, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->stopSipService(Landroid/net/sip/SipManager;)Z

    .line 188
    .end local v2    # "sipManager":Landroid/net/sip/SipManager;
    :cond_0
    invoke-static {p1, p2}, Lcom/android/services/telephony/sip/SipUtil;->createAccountHandle(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 189
    .local v1, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 190
    return-void
.end method

.method verifyAndPurgeInvalidPhoneAccounts(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v6

    .line 128
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    new-instance v4, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v4, p1}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    .line 129
    .local v4, "profileDb":Lcom/android/services/telephony/sip/SipProfileDb;
    const-string v7, "sip"

    invoke-virtual {v6, v7}, Landroid/telecom/TelecomManager;->getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 133
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-static {v0}, Lcom/android/services/telephony/sip/SipUtil;->getSipProfileNameFromPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "profileName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileFromName(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v3

    .line 135
    .local v3, "profile":Landroid/net/sip/SipProfile;
    if-nez v3, :cond_0

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifyAndPurgeInvalidPhoneAccounts, deleting account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/services/telephony/sip/SipAccountRegistry;->log(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v6, v0}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    .line 140
    .end local v0    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "profile":Landroid/net/sip/SipProfile;
    .end local v5    # "profileName":Ljava/lang/String;
    :cond_1
    return-void
.end method
