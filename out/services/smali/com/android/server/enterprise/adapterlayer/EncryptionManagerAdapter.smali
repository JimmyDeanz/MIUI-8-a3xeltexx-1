.class public Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
.super Ljava/lang/Object;
.source "EncryptionManagerAdapter.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    const-class v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    if-nez v0, :cond_0

    .line 56
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public disableStorageCardEncryptionPolicy()I
    .locals 4

    .prologue
    .line 79
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    move-result v1

    return v1
.end method

.method public enableStorageCardEncryptionPolicy()I
    .locals 4

    .prologue
    .line 73
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    move-result v1

    return v1
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequireStorageCardEncryption()Z
    .locals 3

    .prologue
    .line 67
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 69
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isEncryptionFeatureEnabled()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public isStorageCardEncrypted()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    :try_start_0
    const-string v3, "DirEncryptService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    .line 90
    .local v0, "service":Landroid/os/storage/IDirEncryptService;
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Landroid/os/storage/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-interface {v0}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 93
    invoke-interface {v0}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    invoke-virtual {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 99
    .end local v0    # "service":Landroid/os/storage/IDirEncryptService;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "service":Landroid/os/storage/IDirEncryptService;
    :cond_1
    move v1, v2

    .line 93
    goto :goto_0

    .line 96
    .end local v0    # "service":Landroid/os/storage/IDirEncryptService;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
