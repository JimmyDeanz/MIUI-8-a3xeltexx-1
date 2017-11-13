.class public Lcom/samsung/ucm/ucmservice/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final ALIASACCESSIBLE:I = 0x1

.field private static final ALIASINACCESSIBLE:I = 0x0

.field private static final ALIASUNKNOWN:I = 0x2

.field public static final BUNDLE_EXTRA_ACCESS_TYPE:Ljava/lang/String; = "access_type"

.field public static final BUNDLE_EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final BUNDLE_EXTRA_ESE_STORAGE_OPTION:Ljava/lang/String; = "ese_storage_option"

.field private static final TAG:Ljava/lang/String; = "PolicyManager"

.field public static final UCM_ACCESS_TYPE_CERTIFICATE:I = 0x68

.field public static final UCM_ACCESS_TYPE_STORAGE:I = 0x67

.field public static final UCM_AUTH_TYPE_LOCKED:I = 0x64

.field public static final UCM_EXEMPT_TYPE_AUTH:I = 0x6a

.field public static final UCM_STORAGE_OPTION_INSIDE:I = 0x65

.field public static final UCM_STORAGE_OPTION_OUTSIDE:I = 0x66


# instance fields
.field public hiddenPluginPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.sec.smartcard.manager"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.samsung.ucs.agent.boot"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->hiddenPluginPackages:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private getPackageNameForUid(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 503
    const/4 v2, 0x0

    .line 505
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 511
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 512
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 513
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 515
    :cond_0
    const-string v4, "android.uid.systemui"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 516
    const/4 v3, 0x1

    .line 519
    .end local v1    # "index":I
    :cond_1
    return v3

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    const-string v5, "Exception in getPackageNameForUid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAuthEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 5
    .param p1, "userid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "calleruid"    # I

    .prologue
    .line 336
    const-string v2, "PolicyManager"

    const-string/jumbo v3, "isAuthEnabled() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I

    move-result v0

    .line 338
    .local v0, "authType":I
    const/4 v1, 0x0

    .line 339
    .local v1, "status":Z
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled authType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v2, 0x64

    if-ne v2, v0, :cond_0

    .line 342
    invoke-virtual {p0, p3, p2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isPackageFromExemptList(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled calleruid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not auth exempt package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAuthTypeLockforUser(I)Z

    move-result v1

    .line 349
    :cond_0
    :goto_0
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled() status - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v1

    .line 346
    :cond_1
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled calleruid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is auth exempt package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAuthTypeLockforUser(I)Z
    .locals 8
    .param p1, "userid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    const-string v5, "PolicyManager"

    const-string/jumbo v6, "isAuthTypeLockforUser() called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-nez p1, :cond_2

    .line 357
    const-string v5, "PolicyManager"

    const-string/jumbo v6, "isAuthTypeLockforUser() userid == UserHandle.USER_OWNER"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 359
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-nez v0, :cond_1

    .line 360
    const-string v4, "PolicyManager"

    const-string/jumbo v5, "isAuthTypeLockforUser() KeyguardManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    return v3

    .line 363
    .restart local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 364
    const-string v3, "PolicyManager"

    const-string/jumbo v5, "isAuthTypeLockforUser() Keyguard is locked."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 365
    goto :goto_0

    .line 369
    .end local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_2
    const-string v5, "PolicyManager"

    const-string/jumbo v6, "isAuthTypeLockforUser() userid can be KNOX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 371
    .local v1, "pm":Landroid/os/PersonaManager;
    if-nez v1, :cond_3

    .line 372
    const-string v4, "PolicyManager"

    const-string/jumbo v5, "isAuthTypeLockforUser() PersonaManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_3
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 378
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAuthTypeLockforUser():  userid is not KNOX container: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :cond_4
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    .line 382
    .local v2, "sm":Landroid/os/PersonaManager$StateManager;
    const-string v5, "PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAuthTypeLockforUser():  Knox state is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v5}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 384
    goto :goto_0
.end method


# virtual methods
.method public addGrantKeychainAccess(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "grant"    # Z

    .prologue
    .line 582
    return-void
.end method

.method public clearKeychainAccess(I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
    .line 590
    return-void
.end method

.method public containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 224
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/4 v2, 0x1

    .line 230
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "string":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public delGrantKeychainAccess(Ljava/lang/String;I)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 586
    return-void
.end method

.method protected final getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Ljava/util/List;
    .locals 7
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 528
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.getCertificateAliases() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 531
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "aliasesStrArr":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 542
    .end local v1    # "aliasesStrArr":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return-object v0

    .line 535
    .restart local v1    # "aliasesStrArr":[Ljava/lang/String;
    .restart local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :cond_0
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.getCertificateAliases():  size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 537
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 538
    .end local v0    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "aliasesStrArr":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v2

    .line 539
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in getCertificateAliases: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 117
    const-string v2, "PolicyManager"

    const-string v3, "PolicyManager.getStorageAuthenticationType() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    .line 120
    .local v1, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v1, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 125
    .end local v1    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in getStorageAuthenticationType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v2, -0x1

    goto :goto_0
.end method

.method protected getWifiCertificateAliasesAsUser(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 134
    const-string v3, "PolicyManager"

    const-string v4, "PolicyManager.getWifiCertificateAliasesAsUser() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :try_start_0
    new-instance v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 137
    .local v0, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v3, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v3, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 139
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyManager.getWifiCertificateAliasesAsUser() for userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .line 144
    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getWifiCertificateAliasesAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 149
    .end local v0    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v2    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return-object v3

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in getWifiCertificateAliasesAsUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 7
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 316
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 317
    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 319
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.getallAliasesforCS() for csname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 321
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 324
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 325
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, v1}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getAllCertificateAliases(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 331
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return-object v0

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in getallAliasesforCS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 7
    .param p1, "uid"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 265
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 266
    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 268
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.getallAliasesforUid() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 270
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 273
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 274
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, v1}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in getallAliasesforUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 7
    .param p1, "userid"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 291
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 292
    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 294
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.getallAliasesforUserId() for userid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 296
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 299
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 300
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, v1}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliasesAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 306
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return-object v0

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in getallAliasesforUserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAccessAllowedforUid(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 178
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.isAccessAllowedforUid() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "access_type"

    const/16 v5, 0x67

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 184
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p2, v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result v2

    .line 185
    .local v2, "result":Z
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.isAccessAllowedforUid():  result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v2

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isAccessAllowedforUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAliasAllowedforUid(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 204
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.isAliasAllowedforUid() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "access_type"

    const/16 v5, 0x68

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string v4, "alias"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 211
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p3, v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result v2

    .line 212
    .local v2, "result":Z
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.isAliasAllowedforUid():  result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v2

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isAliasAllowedforUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAliasknown(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const/4 v2, 0x0

    .line 242
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.isAliasknown() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 246
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p3}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "aliasArray":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 255
    .end local v0    # "aliasArray":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v2

    .line 249
    .restart local v0    # "aliasArray":[Ljava/lang/String;
    .restart local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 250
    .local v2, "result":Z
    goto :goto_0

    .line 251
    .end local v0    # "aliasArray":[Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isAliasknown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 5
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    const/4 v1, 0x0

    .line 391
    if-nez p1, :cond_1

    .line 392
    const-string v2, "PolicyManager"

    const-string/jumbo v3, "csAgent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 396
    :cond_1
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 397
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "cspkgname":Ljava/lang/String;
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SE visibility being checked for cs Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_1
    if-nez v0, :cond_3

    .line 404
    const-string v2, "PolicyManager"

    const-string/jumbo v3, "cspkgname = NULL. Unknown CS. CS Not Obscure"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v0    # "cspkgname":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "cspkgname":Ljava/lang/String;
    goto :goto_1

    .line 407
    :cond_3
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->hiddenPluginPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isKeychainAccessGranted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method protected isPackageFromExemptList(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 158
    const-string v2, "PolicyManager"

    const-string v3, "PolicyManager.isPackageFromExemptList() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    .line 161
    .local v1, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    const/16 v2, 0x6a

    invoke-interface {v1, p1, p2, v2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isPackageFromExemptList(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 166
    .end local v1    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in isPackageFromExemptList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I
    .locals 8
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .param p2, "userid"    # I
    .param p3, "uid"    # I
    .param p4, "isRequestByMdmOrKnox"    # Z
    .param p5, "aliasName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 414
    if-eqz p1, :cond_0

    .line 415
    const-string v5, "PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--isSEStorageAccessAllowed()-- for Source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; UserId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    move v0, p3

    .line 423
    .local v0, "calleruid":I
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 424
    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v5, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 425
    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 426
    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 427
    const-string v5, "PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SE access being checked for cs Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 499
    .end local v0    # "calleruid":I
    .end local v1    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :goto_0
    return v3

    .line 417
    :cond_0
    const-string v3, "PolicyManager"

    const-string/jumbo v5, "csAgent is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 418
    goto :goto_0

    .line 429
    .restart local v0    # "calleruid":I
    .restart local v1    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_1
    const-string v3, "PolicyManager"

    const-string v5, "Package name for CS found NULL. Denying CS access."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 430
    goto :goto_0

    .line 438
    :cond_2
    if-eqz p4, :cond_3

    .line 439
    const-string v4, "PolicyManager"

    const-string v5, "MDM or KNOX licensed caller. Skipping additional validation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :cond_3
    const-string v5, "PolicyManager"

    const-string v6, "Not a MDM or KNOX licensed caller. Performing additional validation checks"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, p2, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 446
    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v2, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 447
    .local v2, "enforceManagement":Z
    if-eqz v2, :cond_4

    .line 448
    const-string v3, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! Storage is not allowed for userid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and uid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 449
    goto :goto_0

    .line 451
    :cond_4
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage is allowed for userid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and  uid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    .end local v2    # "enforceManagement":Z
    :cond_5
    invoke-virtual {p0, p2, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageLocked(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 458
    const-string v3, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! Storage access is temporary NOT allowed from MDM for mUserId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 459
    goto/16 :goto_0

    .line 464
    :cond_6
    invoke-direct {p0, p2, v1, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAuthEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 465
    const-string v3, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage access is locked currently for userid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 466
    goto/16 :goto_0

    .line 470
    :cond_7
    const/16 v5, 0x3f2

    if-eq v0, v5, :cond_8

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_9

    .line 471
    :cond_8
    const-string v4, "PolicyManager"

    const-string v5, "Calling Id is either WIFI or System; skip additional validation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 476
    :cond_9
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getPackageNameForUid(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 477
    const-string v4, "PolicyManager"

    const-string v5, "Calling Id is SystemUI application"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAccessAllowedforUid(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 483
    const-string v3, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!!  isAccessAllowedforUid() returned false: SE access is NOT allowed for calleruid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 484
    goto/16 :goto_0

    .line 486
    :cond_b
    if-eqz p5, :cond_d

    .line 487
    invoke-virtual {p0, v0, p5, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAliasknown(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 488
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!!  isAliasknown() returned false: ALIAS not known to MDM for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 491
    :cond_c
    invoke-virtual {p0, v0, p5, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAliasAllowedforUid(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 492
    const-string v3, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!!  isAliasAllowedforUid() returned false: ALIAS access is NOT allowed for calleruid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 493
    goto/16 :goto_0

    .line 497
    :cond_d
    const-string v4, "PolicyManager"

    const-string/jumbo v5, "isSEStorageAccessAllowed() VALIDATED....."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected final isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 77
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyManager.isStorageEnabled() for userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .line 81
    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManagedAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    .line 82
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyManager.isStorageEnabled() result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in isStorageEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final isStorageLocked(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 96
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyManager.isStorageLocked() for userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .line 100
    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageLockedAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    .line 101
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyManager.isStorageLocked() result result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v2    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in isStorageLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
