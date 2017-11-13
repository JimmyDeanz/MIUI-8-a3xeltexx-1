.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
.super Ljava/lang/Object;
.source "KnoxVpnApiValidation.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KnoxVpnApiValidation"

.field private static mContext:Landroid/content/Context;

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private static mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field private static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private static mPersonaManager:Landroid/os/IPersonaManager;


# instance fields
.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->DBG:Z

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-void
.end method

.method private static getEnterpriseDeviceManager()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-object v0
.end method

.method private static getPersonaManager()Landroid/os/IPersonaManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    if-nez v0, :cond_0

    const-string v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    return-object v0
.end method


# virtual methods
.method public activateVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)I
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/16 v4, 0x64

    .local v4, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    const/16 v4, 0x68

    move v5, v4

    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_0
    return v5

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_2

    const/16 v4, 0x6c

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_3

    const/16 v4, 0x70

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .local v3, "routeType":I
    if-nez v3, :cond_4

    const/16 v4, 0x6d

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .local v0, "currentStateOfProfile":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    const/16 v4, 0x73

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v0    # "currentStateOfProfile":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0    # "currentStateOfProfile":I
    if-nez v0, :cond_6

    const/16 v4, 0x74

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v0    # "currentStateOfProfile":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at activateVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x65

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activateVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0
.end method

.method public addAllContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I
    .locals 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x64

    .local v7, "validationResult":I
    if-eqz p3, :cond_0

    :try_start_0
    iget-object v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v9, :cond_1

    :cond_0
    const/16 v7, 0x68

    move v8, v7

    .end local v7    # "validationResult":I
    .local v8, "validationResult":I
    :goto_0
    return v8

    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .local v5, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_2

    const/16 v7, 0x6c

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v10, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v9, v10, :cond_3

    const/16 v7, 0x70

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v6

    .local v6, "routeType":I
    if-nez v6, :cond_4

    const/16 v7, 0x6d

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_4
    const/4 v3, 0x0

    .local v3, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v9

    invoke-interface {v9, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v7, 0x71

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_5
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .local v0, "containerOwner":I
    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v9, :cond_6

    const/16 v7, 0x72

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v9

    if-eq v9, p2, :cond_7

    const/16 v7, 0x71

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_7
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v9, p3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_8

    const/16 v7, 0x7b

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_8
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v9

    iget v10, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v9, v10, :cond_9

    const/16 v7, 0x75

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_0

    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_9
    const/16 v7, 0x76

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_0

    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_a
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .local v4, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eq v9, p2, :cond_b

    const/16 v7, 0x324

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_0

    .end local v0    # "containerOwner":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isPersonaIdIsValid":Z
    .end local v4    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "routeType":I
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "KnoxVpnApiValidation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception at addAllContainerPackagesToVpnValidation API "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x65

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c
    const-string v9, "KnoxVpnApiValidation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addAllContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_0
.end method

.method public addAllPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x64

    .local v5, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    const/16 v5, 0x68

    move v6, v5

    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_0
    return v6

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_2

    const/16 v5, 0x6c

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_3

    const/16 v5, 0x70

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .local v4, "routeType":I
    if-nez v4, :cond_4

    const/16 v5, 0x6d

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p2, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_5

    const/16 v5, 0x7b

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_5
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v7, v8, :cond_6

    const/16 v5, 0x75

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_6
    const/16 v5, 0x76

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .local v2, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v7, v8, :cond_8

    const/16 v5, 0x324

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at addAllPackagesToVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_0
.end method

.method public addContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x64

    .local v14, "validationResult":I
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    :cond_0
    const/16 v14, 0x68

    move v15, v14

    .end local v14    # "validationResult":I
    .local v15, "validationResult":I
    :goto_0
    return v15

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v10

    .local v10, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v10, :cond_2

    const/16 v14, 0x6c

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_2
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/16 v14, 0x70

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v12

    .local v12, "routeType":I
    if-nez v12, :cond_4

    const/16 v14, 0x6d

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_4
    const/4 v7, 0x0

    .local v7, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v7

    if-nez v7, :cond_5

    const/16 v14, 0x71

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_5
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    .local v4, "containerOwner":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v4, v0, :cond_6

    const/16 v14, 0x72

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    const/16 v14, 0x71

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_7
    move-object/from16 v3, p3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v8, :cond_9

    aget-object v13, v3, v6

    .local v13, "tempPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    const-string v17, "ADD_ALL_PACKAGES"

    move-object/from16 v0, v16

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v14, 0x89

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v13    # "tempPackage":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v17, v0

    const-string v18, "ADD_ALL_PACKAGES"

    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "profileOwningPackage":Ljava/lang/String;
    if-eqz v11, :cond_c

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    const/16 v14, 0x77

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :pswitch_0
    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_a
    const/16 v14, 0x77

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .end local v11    # "profileOwningPackage":Ljava/lang/String;
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_b
    const/16 v14, 0x78

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_c
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_e

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .local v9, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_d

    const/16 v14, 0x324

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "containerOwner":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "isPersonaIdIsValid":Z
    .end local v8    # "len$":I
    .end local v9    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v10    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v12    # "routeType":I
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    const-string v16, "KnoxVpnApiValidation"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception at addContainerPackagesToVpnValidation API "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x65

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_e
    const-string v16, "KnoxVpnApiValidation"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "addContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v14

    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public addPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x64

    .local v10, "validationResult":I
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v13, 0x1

    if-lt v12, v13, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v12, :cond_1

    :cond_0
    const/16 v10, 0x68

    move v11, v10

    .end local v10    # "validationResult":I
    .local v11, "validationResult":I
    :goto_0
    return v11

    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .local v6, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v6, :cond_2

    const/16 v10, 0x6c

    move v11, v10

    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_0

    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v12, v13, :cond_3

    const/16 v10, 0x70

    move v11, v10

    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_0

    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    .local v8, "routeType":I
    if-nez v8, :cond_4

    const/16 v10, 0x6d

    move v11, v10

    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_0

    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_4
    move-object/from16 v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v9, v1, v3

    .local v9, "tempPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v14, "ADD_ALL_PACKAGES"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v10, 0x89

    move v11, v10

    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_0

    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v9    # "tempPackage":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v15, "ADD_ALL_PACKAGES"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "profileOwningPackage":Ljava/lang/String;
    if-eqz v7, :cond_9

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v12, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    const/16 v10, 0x77

    move v11, v10

    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :pswitch_0
    move v11, v10

    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_7
    const/16 v10, 0x77

    move v11, v10

    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .end local v7    # "profileOwningPackage":Ljava/lang/String;
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_8
    const/16 v10, 0x78

    move v11, v10

    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_9
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .local v5, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v12, v13, :cond_a

    const/16 v10, 0x324

    move v11, v10

    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "len$":I
    .end local v5    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v6    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "routeType":I
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "KnoxVpnApiValidation"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception at addPackagesToVpnValidation API "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x65

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b
    const-string v12, "KnoxVpnApiValidation"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public createVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 38
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;

    .prologue
    const/16 v32, 0x64

    .local v32, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v35, v0

    if-nez v35, :cond_1

    :cond_0
    const/16 v32, 0x68

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .local v33, "validationResult":I
    :goto_0
    return v33

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v22, "profileObj":Lorg/json/JSONObject;
    const-string v35, "KNOX_VPN_PARAMETERS"

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .local v16, "parentAttrObj":Lorg/json/JSONObject;
    const-string v35, "profile_attribute"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .local v18, "profileAttrObj":Lorg/json/JSONObject;
    const-string v35, "knox"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .local v13, "knoxAttrObj":Lorg/json/JSONObject;
    const-string v35, "profileName"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, "profileName":Ljava/lang/String;
    const-string v35, "vpn_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "protocolType":Ljava/lang/String;
    const-string v35, "vpn_route_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .local v29, "routeType":I
    const-string v35, "chaining_enabled"

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, "chainingEnabled":I
    const-string v35, "uidpid_search_enabled"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v30

    .local v30, "uidPidSearchEnabled":I
    const-string v35, "connectionType"

    const-string v36, "keepon"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "connectionType":Ljava/lang/String;
    const-string v35, "proxy-server"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, "proxyServer":Ljava/lang/String;
    const-string v35, "proxy-port"

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .local v25, "proxyPort":I
    const-string v35, "proxy-username"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .local v27, "proxyUsername":Ljava/lang/String;
    const-string v35, "proxy-password"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .local v24, "proxyPassword":Ljava/lang/String;
    const-string v35, "pac-url"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "pacurl":Ljava/lang/String;
    const-string v35, "ipv6-enable"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .local v7, "enableIPv6":I
    const-string v35, "proxy-auth"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v28

    .local v28, "proxy_auth":I
    if-eqz v21, :cond_2

    if-eqz v23, :cond_2

    const/16 v35, 0x1

    move/from16 v0, v29

    move/from16 v1, v35

    if-eq v0, v1, :cond_3

    if-eqz v29, :cond_3

    :cond_2
    const/16 v32, 0x69

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_3
    if-nez v29, :cond_9

    if-eqz v3, :cond_4

    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v3, v0, :cond_5

    :cond_4
    const/16 v32, 0x1f9

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_5
    const-string v35, "ondemand"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_6

    const/16 v32, 0x2be

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_6
    if-nez v26, :cond_7

    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-eq v0, v1, :cond_8

    :cond_7
    const/16 v32, 0x321

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_8
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-eq v15, v0, :cond_9

    const/16 v32, 0x321

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_9
    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v3, v0, :cond_a

    if-eqz v3, :cond_a

    const/16 v35, 0x1

    move/from16 v0, v35

    if-eq v3, v0, :cond_a

    const/16 v32, 0x1f5

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_a
    const/16 v35, 0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    if-eqz v30, :cond_b

    const/16 v32, 0x259

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_b
    const-string v35, "keepon"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    const-string v35, "ondemand"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    const/16 v32, 0x2bd

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_c
    const-string v35, "ondemand"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    if-nez v3, :cond_d

    const/16 v32, 0x2be

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_d
    if-eqz v7, :cond_e

    const/16 v35, 0x1

    move/from16 v0, v35

    if-eq v7, v0, :cond_e

    const/16 v32, 0x325

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_e
    const-string v35, "\\s"

    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .local v17, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .local v14, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    .local v8, "found":Z
    if-eqz v8, :cond_f

    const/16 v32, 0x6a

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v20

    .local v20, "profileLength":I
    const/16 v35, 0x1

    move/from16 v0, v20

    move/from16 v1, v35

    if-lt v0, v1, :cond_10

    const/16 v35, 0x80

    move/from16 v0, v20

    move/from16 v1, v35

    if-le v0, v1, :cond_11

    :cond_10
    const/16 v32, 0x6b

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v19

    .local v19, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v35

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_12

    const/16 v32, 0x6f

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_12
    const/16 v32, 0x70

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v34, v0

    .local v34, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v31, v0

    .local v31, "userId":I
    const-string v35, "chaining_enabled"

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, "chainingValue":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v4, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v31

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v9

    .local v9, "isChainingEnabled":I
    const/16 v35, 0x1

    move/from16 v0, v35

    if-eq v9, v0, :cond_14

    if-nez v9, :cond_16

    :cond_14
    const/16 v32, 0x1f7

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v9    # "isChainingEnabled":I
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v31

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v36

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v11

    .local v11, "isVpnEnabled":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v11, v0, :cond_16

    const/16 v32, 0x1f8

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v11    # "isVpnEnabled":I
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_16
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-eq v15, v0, :cond_1d

    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_17

    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-ne v0, v1, :cond_17

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_18

    :cond_17
    const/16 v32, 0x324

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_18
    if-nez v3, :cond_19

    const/16 v32, 0x324

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_19
    if-eqz v27, :cond_1d

    if-eqz v24, :cond_1d

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_1c

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_1c

    const/16 v35, 0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-eq v0, v1, :cond_1a

    const/16 v32, 0x324

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "proxy-username"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .local v10, "isUserSaved":Z
    if-nez v10, :cond_1b

    const/16 v32, 0x322

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "proxy-password"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .local v12, "ispasswordSaved":Z
    if-nez v12, :cond_1d

    const/16 v32, 0x323

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v10    # "isUserSaved":Z
    .end local v12    # "ispasswordSaved":Z
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1c
    const/16 v32, 0x324

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1d
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_1e

    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-eq v0, v1, :cond_24

    :cond_1e
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-ne v15, v0, :cond_1f

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_20

    :cond_1f
    const/16 v32, 0x324

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_20
    if-nez v3, :cond_21

    const/16 v32, 0x324

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_21
    if-eqz v27, :cond_24

    if-eqz v24, :cond_24

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_23

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "proxy-username"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .restart local v10    # "isUserSaved":Z
    if-nez v10, :cond_22

    const/16 v32, 0x322

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "proxy-password"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .restart local v12    # "ispasswordSaved":Z
    if-nez v12, :cond_24

    const/16 v32, 0x323

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v10    # "isUserSaved":Z
    .end local v12    # "ispasswordSaved":Z
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_23
    const/16 v32, 0x324

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_24
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-eq v15, v0, :cond_25

    const-string v35, "KnoxVpnApiValidation"

    const-string v36, "Binding to knox pac service during create profile validation"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindPacService()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "chainingEnabled":I
    .end local v4    # "chainingValue":I
    .end local v5    # "connectionType":Ljava/lang/String;
    .end local v7    # "enableIPv6":I
    .end local v8    # "found":Z
    .end local v13    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v15    # "pacurl":Ljava/lang/String;
    .end local v16    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v17    # "pattern":Ljava/util/regex/Pattern;
    .end local v18    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v19    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v20    # "profileLength":I
    .end local v21    # "profileName":Ljava/lang/String;
    .end local v22    # "profileObj":Lorg/json/JSONObject;
    .end local v23    # "protocolType":Ljava/lang/String;
    .end local v24    # "proxyPassword":Ljava/lang/String;
    .end local v25    # "proxyPort":I
    .end local v26    # "proxyServer":Ljava/lang/String;
    .end local v27    # "proxyUsername":Ljava/lang/String;
    .end local v28    # "proxy_auth":I
    .end local v29    # "routeType":I
    .end local v30    # "uidPidSearchEnabled":I
    .end local v31    # "userId":I
    .end local v34    # "vendorName":Ljava/lang/String;
    :cond_25
    :goto_1
    const-string v35, "KnoxVpnApiValidation"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "createVpnProfileValidation : validationResult value is "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v33, v32

    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    const-string v35, "KnoxVpnApiValidation"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "JSONException at createVpnProfileValidation API "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x67

    goto :goto_1

    .end local v6    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v35, "KnoxVpnApiValidation"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Exception at createVpnProfileValidation API "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x65

    goto :goto_1
.end method

.method public getAllContainerPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_2

    :cond_0
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .end local p3    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p3

    .restart local p3    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_3

    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_4

    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: Not the same admin"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .local v4, "routeType":I
    if-nez v4, :cond_5

    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_6

    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: user id is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    goto :goto_0

    :cond_6
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .local v0, "containerOwner":I
    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v6, :cond_1

    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, v5

    goto :goto_0

    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at getAllContainerPackagesInVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    goto :goto_0
.end method

.method public getAllPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .end local p2    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_3

    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v4, v5, :cond_4

    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: Not the same Admin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .local v2, "routeType":I
    if-nez v2, :cond_1

    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v3

    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getAllPackagesInVpnProfileValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    goto :goto_0
.end method

.method public getErrorStringValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getErrorStringValidation: profileName value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .end local p2    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_3

    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getErrorStringValidation: profileInfo value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_1

    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getErrorStringValidation: Not the same admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getErrorStringValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStateValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x64

    .local v2, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    const/16 v2, 0x68

    move v3, v2

    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_0
    return v3

    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    const/16 v2, 0x6c

    move v3, v2

    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_3

    const/16 v2, 0x70

    move v3, v2

    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getStateValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x65

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStateValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0
.end method

.method public getVpnModeOfOperationValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x64

    .local v2, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    const/16 v2, 0x68

    move v3, v2

    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_0
    return v3

    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    const/16 v2, 0x6c

    move v3, v2

    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_3

    const/16 v2, 0x70

    move v3, v2

    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getVpnModeOfOperationValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x65

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0
.end method

.method public getVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: profileName value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .end local p2    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_3

    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: profileInfo value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_1

    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: Not the same admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAllContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x64

    .local v5, "validationResult":I
    if-eqz p3, :cond_0

    :try_start_0
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    const/16 v5, 0x68

    move v6, v5

    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_0
    return v6

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_2

    const/16 v5, 0x6c

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_3

    const/16 v5, 0x70

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .local v4, "routeType":I
    if-nez v4, :cond_4

    const/16 v5, 0x6d

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v5, 0x71

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_5
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .local v0, "containerOwner":I
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v7, :cond_6

    const/16 v5, 0x72

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    if-eq v7, p2, :cond_7

    const/16 v5, 0x71

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_7
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_8

    const/16 v5, 0x7c

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_0
.end method

.method public removeAllPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x64

    .local v3, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    const/16 v3, 0x68

    move v4, v3

    .end local v3    # "validationResult":I
    .local v4, "validationResult":I
    :goto_0
    return v4

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    const/16 v3, 0x6c

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v5, v6, :cond_3

    const/16 v3, 0x70

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .local v2, "routeType":I
    if-nez v2, :cond_4

    const/16 v3, 0x6d

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_5

    const/16 v3, 0x7c

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x65

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0
.end method

.method public removeContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x64

    .local v6, "validationResult":I
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    array-length v8, p3

    const/4 v9, 0x1

    if-lt v8, v9, :cond_0

    iget-object v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v8, :cond_1

    :cond_0
    const/16 v6, 0x68

    move v7, v6

    .end local v6    # "validationResult":I
    .local v7, "validationResult":I
    :goto_0
    return v7

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_2

    const/16 v6, 0x6c

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_3

    const/16 v6, 0x70

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v5

    .local v5, "routeType":I
    if-nez v5, :cond_4

    const/16 v6, 0x6d

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v6, 0x71

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_5
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .local v0, "containerOwner":I
    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v8, :cond_6

    const/16 v6, 0x72

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v8

    if-eq v8, p2, :cond_7

    const/16 v6, 0x71

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_7
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v10, "ADD_ALL_PACKAGES"

    invoke-virtual {v9, p2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "profileOwningPackage":Ljava/lang/String;
    if-eqz v4, :cond_a

    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    packed-switch v8, :pswitch_data_0

    const/16 v6, 0x79

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :pswitch_0
    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_8
    const/16 v6, 0x79

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    .end local v4    # "profileOwningPackage":Ljava/lang/String;
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_9
    const/16 v6, 0x7a

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "routeType":I
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at removeContainerPackagesFromVpnValidation API "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x65

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeContainerPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removePackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x64

    .local v4, "validationResult":I
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v6, p2

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    const/16 v4, 0x68

    move v5, v4

    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_0
    return v5

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    const/16 v4, 0x6c

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_3

    const/16 v4, 0x70

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .local v3, "routeType":I
    if-nez v3, :cond_4

    const/16 v4, 0x6d

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "profileOwningPackage":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    packed-switch v6, :pswitch_data_0

    const/16 v4, 0x79

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :pswitch_0
    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_5
    const/16 v4, 0x79

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v2    # "profileOwningPackage":Ljava/lang/String;
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_6
    const/16 v4, 0x7a

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at removePackagesFromVpnValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x65

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/16 v4, 0x64

    .local v4, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    const/16 v4, 0x68

    move v5, v4

    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_0
    return v5

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    const/16 v4, 0x6c

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_3

    const/16 v4, 0x70

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .local v3, "routeType":I
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "profileState":I
    if-ne v3, v8, :cond_4

    if-ne v2, v8, :cond_4

    const/16 v4, 0x7d

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "profileState":I
    .end local v3    # "routeType":I
    :cond_4
    :goto_1
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at removeVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x65

    goto :goto_1
.end method

.method public setVpnModeOfOperationValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;I)I
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "vpnMode"    # I

    .prologue
    const/16 v2, 0x64

    .local v2, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    const/16 v2, 0x68

    move v3, v2

    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_0
    return v3

    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    const/16 v2, 0x6c

    move v3, v2

    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_3

    const/16 v2, 0x70

    move v3, v2

    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_3
    if-eqz p3, :cond_4

    const/4 v4, 0x1

    if-eq p3, v4, :cond_4

    const/16 v2, 0x8a

    move v3, v2

    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at setVpnModeOfOperationValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x65

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0
.end method
