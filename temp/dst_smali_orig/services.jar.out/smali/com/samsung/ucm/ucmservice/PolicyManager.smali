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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

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

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPackageNameForUid(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v4, "android.uid.systemui"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .end local v1    # "index":I
    :cond_1
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    const-string v5, "Exception in getPackageNameForUid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    const-string v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

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
    const-string v2, "PolicyManager"

    const-string v3, "isAuthEnabled() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I

    move-result v0

    .local v0, "authType":I
    const/4 v1, 0x0

    .local v1, "status":Z
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAuthEnabled authType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x64

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, p3, p2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isPackageFromExemptList(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAuthEnabled calleruid = "

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

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAuthTypeLockforUser(I)Z

    move-result v1

    :cond_0
    :goto_0
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAuthEnabled() status - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAuthEnabled calleruid = "

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

    const-string v5, "PolicyManager"

    const-string v6, "isAuthTypeLockforUser() called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    const-string v5, "PolicyManager"

    const-string v6, "isAuthTypeLockforUser() userid == UserHandle.USER_OWNER"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-nez v0, :cond_1

    const-string v4, "PolicyManager"

    const-string v5, "isAuthTypeLockforUser() KeyguardManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    return v3

    .restart local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, "PolicyManager"

    const-string v5, "isAuthTypeLockforUser() Keyguard is locked."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    .end local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_2
    const-string v5, "PolicyManager"

    const-string v6, "isAuthTypeLockforUser() userid can be KNOX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->mContext:Landroid/content/Context;

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .local v1, "pm":Landroid/os/PersonaManager;
    if-nez v1, :cond_3

    const-string v4, "PolicyManager"

    const-string v5, "isAuthTypeLockforUser() PersonaManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAuthTypeLockforUser():  userid is not KNOX container: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    .local v2, "sm":Landroid/os/PersonaManager$StateManager;
    const-string v5, "PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAuthTypeLockforUser():  Knox state is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v5}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public addGrantKeychainAccess(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "grant"    # Z

    .prologue
    return-void
.end method

.method public clearKeychainAccess(I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
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
    .local p2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

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

    .local v1, "string":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

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

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "aliasesStrArr":[Ljava/lang/String;
    if-nez v1, :cond_0

    .end local v1    # "aliasesStrArr":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return-object v0

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

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .end local v0    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "aliasesStrArr":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v2

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

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const-string v2, "PolicyManager"

    const-string v3, "PolicyManager.getStorageAuthenticationType() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    .local v1, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v1, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v2

    :catch_0
    move-exception v0

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_0
.end method

.method protected getWifiCertificateAliasesAsUser(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    const-string v3, "PolicyManager"

    const-string v4, "PolicyManager.getWifiCertificateAliasesAsUser() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .local v0, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v3, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v3, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

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

    iget-object v3, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getWifiCertificateAliasesAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v2    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

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

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 7
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

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

    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, v1}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getAllCertificateAliases(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

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

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 7
    .param p1, "uid"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

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

    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, v1}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

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

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .locals 7
    .param p1, "userid"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

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

    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, v1}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliasesAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

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

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAccessAllowedforUid(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
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

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "access_type"

    const/16 v5, 0x67

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p2, v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result v2

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

    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v2

    :catch_0
    move-exception v1

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

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAliasAllowedforUid(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
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

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "access_type"

    const/16 v5, 0x68

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "alias"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p3, v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result v2

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

    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v2

    :catch_0
    move-exception v1

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

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

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

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p3}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "aliasArray":[Ljava/lang/String;
    if-nez v0, :cond_0

    .end local v0    # "aliasArray":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v2

    .restart local v0    # "aliasArray":[Ljava/lang/String;
    .restart local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .end local v0    # "aliasArray":[Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_0
    move-exception v1

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

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 5
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string v2, "PolicyManager"

    const-string v3, "csAgent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

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

    :goto_1
    if-nez v0, :cond_3

    const-string v2, "PolicyManager"

    const-string v3, "cspkgname = NULL. Unknown CS. CS Not Obscure"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "cspkgname":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "cspkgname":Ljava/lang/String;
    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/PolicyManager;->hiddenPluginPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isKeychainAccessGranted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected isPackageFromExemptList(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const-string v2, "PolicyManager"

    const-string v3, "PolicyManager.isPackageFromExemptList() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    .local v1, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    const/16 v2, 0x6a

    invoke-interface {v1, p1, p2, v2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isPackageFromExemptList(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v2

    :catch_0
    move-exception v0

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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

    if-eqz p1, :cond_0

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

    move v0, p3

    .local v0, "calleruid":I
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v5, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_2

    .end local v0    # "calleruid":I
    .end local v1    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :goto_0
    return v3

    :cond_0
    const-string v3, "PolicyManager"

    const-string v5, "csAgent is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    .restart local v0    # "calleruid":I
    .restart local v1    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_1
    const-string v3, "PolicyManager"

    const-string v5, "Package name for CS found NULL. Denying CS access."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    const-string v4, "PolicyManager"

    const-string v5, "MDM or KNOX licensed caller. Skipping additional validation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v5, "PolicyManager"

    const-string v6, "Not a MDM or KNOX licensed caller. Performing additional validation checks"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v2, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .local v2, "enforceManagement":Z
    if-eqz v2, :cond_4

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

    goto :goto_0

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

    .end local v2    # "enforceManagement":Z
    :cond_5
    invoke-virtual {p0, p2, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageLocked(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-eqz v5, :cond_6

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

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p2, v1, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAuthEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v5

    if-eqz v5, :cond_7

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

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x3f2

    if-eq v0, v5, :cond_8

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_9

    :cond_8
    const-string v4, "PolicyManager"

    const-string v5, "Calling Id is either WIFI or System; skip additional validation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getPackageNameForUid(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v4, "PolicyManager"

    const-string v5, "Calling Id is SystemUI application"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAccessAllowedforUid(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_b

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

    goto/16 :goto_0

    :cond_b
    if-eqz p5, :cond_d

    invoke-virtual {p0, v0, p5, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAliasknown(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_c

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

    :cond_c
    invoke-virtual {p0, v0, p5, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isAliasAllowedforUid(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_d

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

    goto/16 :goto_0

    :cond_d
    const-string v4, "PolicyManager"

    const-string v5, "isSEStorageAccessAllowed() VALIDATED....."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected final isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
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

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManagedAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

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

    .end local v2    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v1

    :catch_0
    move-exception v0

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final isStorageLocked(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
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

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageLockedAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

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

    .end local v2    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_0
    return v1

    :catch_0
    move-exception v0

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
