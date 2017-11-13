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

    .line 67
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->DBG:Z

    .line 69
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 73
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    .line 75
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 77
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 81
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    .line 83
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 88
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 90
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 91
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 92
    return-void
.end method

.method private static getEnterpriseDeviceManager()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 112
    const-string/jumbo v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 114
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 98
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 121
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-object v0
.end method

.method private static getPersonaManager()Landroid/os/IPersonaManager;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    .line 107
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
    .line 519
    const/16 v4, 0x64

    .line 522
    .local v4, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 523
    :cond_0
    const/16 v4, 0x68

    move v5, v4

    .line 563
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_0
    return v5

    .line 527
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 528
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_2

    .line 529
    const/16 v4, 0x6c

    move v5, v4

    .line 530
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 532
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_3

    .line 533
    const/16 v4, 0x70

    move v5, v4

    .line 534
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 538
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 539
    .local v3, "routeType":I
    if-nez v3, :cond_4

    .line 540
    const/16 v4, 0x6d

    move v5, v4

    .line 541
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 544
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_4
    if-eqz p3, :cond_5

    .line 545
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 546
    .local v0, "currentStateOfProfile":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    .line 547
    const/16 v4, 0x73

    move v5, v4

    .line 548
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 551
    .end local v0    # "currentStateOfProfile":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 552
    .restart local v0    # "currentStateOfProfile":I
    if-nez v0, :cond_6

    .line 553
    const/16 v4, 0x74

    move v5, v4

    .line 554
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 558
    .end local v0    # "currentStateOfProfile":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_0
    move-exception v1

    .line 559
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

    .line 560
    const/16 v4, 0x65

    .line 562
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

    .line 563
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
    .line 824
    const/16 v7, 0x64

    .line 828
    .local v7, "validationResult":I
    if-eqz p3, :cond_0

    :try_start_0
    iget-object v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 829
    :cond_0
    const/16 v7, 0x68

    move v8, v7

    .line 904
    .end local v7    # "validationResult":I
    .local v8, "validationResult":I
    :goto_0
    return v8

    .line 833
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 834
    .local v5, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_2

    .line 835
    const/16 v7, 0x6c

    move v8, v7

    .line 836
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .line 838
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v10, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v9, v10, :cond_3

    .line 839
    const/16 v7, 0x70

    move v8, v7

    .line 840
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .line 844
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v6

    .line 845
    .local v6, "routeType":I
    if-nez v6, :cond_4

    .line 846
    const/16 v7, 0x6d

    move v8, v7

    .line 847
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .line 849
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_4
    const/4 v3, 0x0

    .line 851
    .local v3, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v9

    invoke-interface {v9, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v3

    .line 852
    if-nez v3, :cond_5

    .line 853
    const/16 v7, 0x71

    move v8, v7

    .line 854
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .line 858
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_5
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 859
    .local v0, "containerOwner":I
    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v9, :cond_6

    .line 860
    const/16 v7, 0x72

    move v8, v7

    .line 861
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .line 865
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v3

    .line 866
    if-eqz v3, :cond_7

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v9

    if-eq v9, p2, :cond_7

    .line 867
    const/16 v7, 0x71

    move v8, v7

    .line 868
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .line 871
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_7
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 872
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v9, p3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 873
    const/16 v7, 0x7b

    move v8, v7

    .line 874
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_0

    .line 878
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_8
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 879
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v9

    iget v10, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v9, v10, :cond_9

    .line 880
    const/16 v7, 0x75

    move v8, v7

    .line 881
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_0

    .line 883
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_9
    const/16 v7, 0x76

    move v8, v7

    .line 884
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_0

    .line 890
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

    .line 891
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

    .line 892
    .local v4, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eq v9, p2, :cond_b

    .line 893
    const/16 v7, 0x324

    move v8, v7

    .line 894
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_0

    .line 899
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

    .line 900
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

    .line 901
    const/16 v7, 0x65

    .line 903
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

    .line 904
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_0
.end method

.method public addAllPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 975
    const/16 v5, 0x64

    .line 979
    .local v5, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 980
    :cond_0
    const/16 v5, 0x68

    move v6, v5

    .line 1034
    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_0
    return v6

    .line 984
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 985
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_2

    .line 986
    const/16 v5, 0x6c

    move v6, v5

    .line 987
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 989
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_3

    .line 990
    const/16 v5, 0x70

    move v6, v5

    .line 991
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 995
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 996
    .local v4, "routeType":I
    if-nez v4, :cond_4

    .line 997
    const/16 v5, 0x6d

    move v6, v5

    .line 998
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 1001
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1002
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p2, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1003
    const/16 v5, 0x7b

    move v6, v5

    .line 1004
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 1008
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_5
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1009
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v7, v8, :cond_6

    .line 1010
    const/16 v5, 0x75

    move v6, v5

    .line 1011
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 1013
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_6
    const/16 v5, 0x76

    move v6, v5

    .line 1014
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 1020
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

    .line 1021
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

    .line 1022
    .local v2, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v7, v8, :cond_8

    .line 1023
    const/16 v5, 0x324

    move v6, v5

    .line 1024
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_0

    .line 1029
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_0
    move-exception v0

    .line 1030
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

    .line 1031
    const/16 v5, 0x65

    .line 1033
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

    .line 1034
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
    .line 599
    const/16 v14, 0x64

    .line 603
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

    .line 604
    :cond_0
    const/16 v14, 0x68

    move v15, v14

    .line 694
    .end local v14    # "validationResult":I
    .local v15, "validationResult":I
    :goto_0
    return v15

    .line 608
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

    .line 609
    .local v10, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v10, :cond_2

    .line 610
    const/16 v14, 0x6c

    move v15, v14

    .line 611
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .line 613
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

    .line 614
    const/16 v14, 0x70

    move v15, v14

    .line 615
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .line 619
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v12

    .line 620
    .local v12, "routeType":I
    if-nez v12, :cond_4

    .line 621
    const/16 v14, 0x6d

    move v15, v14

    .line 622
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .line 624
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_4
    const/4 v7, 0x0

    .line 626
    .local v7, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v7

    .line 627
    if-nez v7, :cond_5

    .line 628
    const/16 v14, 0x71

    move v15, v14

    .line 629
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .line 633
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_5
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    .line 634
    .local v4, "containerOwner":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v4, v0, :cond_6

    .line 635
    const/16 v14, 0x72

    move v15, v14

    .line 636
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .line 640
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v7

    .line 641
    if-eqz v7, :cond_7

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 642
    const/16 v14, 0x71

    move v15, v14

    .line 643
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_0

    .line 646
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

    .line 647
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

    .line 648
    const/16 v14, 0x89

    move v15, v14

    .line 649
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .line 646
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 653
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

    .line 654
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

    .line 657
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

    .line 658
    .local v11, "profileOwningPackage":Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 659
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    .line 664
    const/16 v14, 0x77

    move v15, v14

    .line 665
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :pswitch_0
    move v15, v14

    .line 662
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .line 668
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_a
    const/16 v14, 0x77

    move v15, v14

    .line 669
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .line 673
    .end local v11    # "profileOwningPackage":Ljava/lang/String;
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_b
    const/16 v14, 0x78

    move v15, v14

    .line 674
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .line 680
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

    .line 681
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

    .line 682
    .local v9, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_d

    .line 683
    const/16 v14, 0x324

    move v15, v14

    .line 684
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .line 689
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

    .line 690
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

    .line 691
    const/16 v14, 0x65

    .line 693
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

    .line 694
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_0

    .line 660
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
    .line 384
    const/16 v10, 0x64

    .line 387
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

    .line 388
    :cond_0
    const/16 v10, 0x68

    move v11, v10

    .line 456
    .end local v10    # "validationResult":I
    .local v11, "validationResult":I
    :goto_0
    return v11

    .line 392
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 393
    .local v6, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v6, :cond_2

    .line 394
    const/16 v10, 0x6c

    move v11, v10

    .line 395
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_0

    .line 397
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v12, v13, :cond_3

    .line 398
    const/16 v10, 0x70

    move v11, v10

    .line 399
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_0

    .line 403
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    .line 404
    .local v8, "routeType":I
    if-nez v8, :cond_4

    .line 405
    const/16 v10, 0x6d

    move v11, v10

    .line 406
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_0

    .line 409
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

    .line 410
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

    .line 411
    const/16 v10, 0x89

    move v11, v10

    .line 412
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_0

    .line 409
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 416
    .end local v9    # "tempPackage":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 417
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v12, v13, :cond_8

    .line 419
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

    .line 420
    .local v7, "profileOwningPackage":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 421
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v12, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 426
    const/16 v10, 0x77

    move v11, v10

    .line 427
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :pswitch_0
    move v11, v10

    .line 424
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .line 430
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_7
    const/16 v10, 0x77

    move v11, v10

    .line 431
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .line 435
    .end local v7    # "profileOwningPackage":Ljava/lang/String;
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_8
    const/16 v10, 0x78

    move v11, v10

    .line 436
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .line 442
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

    .line 443
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

    .line 444
    .local v5, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v12, v13, :cond_a

    .line 445
    const/16 v10, 0x324

    move v11, v10

    .line 446
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .line 451
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

    .line 452
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

    .line 453
    const/16 v10, 0x65

    .line 455
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

    .line 456
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_0

    .line 422
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
    .line 125
    const/16 v32, 0x64

    .line 128
    .local v32, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v35, v0

    if-nez v35, :cond_1

    .line 129
    :cond_0
    const/16 v32, 0x68

    move/from16 v33, v32

    .line 320
    .end local v32    # "validationResult":I
    .local v33, "validationResult":I
    :goto_0
    return v33

    .line 133
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    .local v22, "profileObj":Lorg/json/JSONObject;
    const-string v35, "KNOX_VPN_PARAMETERS"

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 135
    .local v16, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v35, "profile_attribute"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 136
    .local v18, "profileAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v35, "knox"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 138
    .local v13, "knoxAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v35, "profileName"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 139
    .local v21, "profileName":Ljava/lang/String;
    const-string/jumbo v35, "vpn_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 140
    .local v23, "protocolType":Ljava/lang/String;
    const-string/jumbo v35, "vpn_route_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 142
    .local v29, "routeType":I
    const-string v35, "chaining_enabled"

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 143
    .local v3, "chainingEnabled":I
    const-string/jumbo v35, "uidpid_search_enabled"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v30

    .line 144
    .local v30, "uidPidSearchEnabled":I
    const-string/jumbo v35, "connectionType"

    const-string/jumbo v36, "keepon"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "connectionType":Ljava/lang/String;
    const-string/jumbo v35, "proxy-server"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 147
    .local v26, "proxyServer":Ljava/lang/String;
    const-string/jumbo v35, "proxy-port"

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .line 148
    .local v25, "proxyPort":I
    const-string/jumbo v35, "proxy-username"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 149
    .local v27, "proxyUsername":Ljava/lang/String;
    const-string/jumbo v35, "proxy-password"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 150
    .local v24, "proxyPassword":Ljava/lang/String;
    const-string/jumbo v35, "pac-url"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 151
    .local v15, "pacurl":Ljava/lang/String;
    const-string/jumbo v35, "ipv6-enable"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 152
    .local v7, "enableIPv6":I
    const-string/jumbo v35, "proxy-auth"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v28

    .line 154
    .local v28, "proxy_auth":I
    if-eqz v21, :cond_2

    if-eqz v23, :cond_2

    const/16 v35, 0x1

    move/from16 v0, v29

    move/from16 v1, v35

    if-eq v0, v1, :cond_3

    if-eqz v29, :cond_3

    .line 155
    :cond_2
    const/16 v32, 0x69

    move/from16 v33, v32

    .line 156
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 159
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_3
    if-nez v29, :cond_9

    .line 160
    if-eqz v3, :cond_4

    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v3, v0, :cond_5

    .line 161
    :cond_4
    const/16 v32, 0x1f9

    move/from16 v33, v32

    .line 162
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 164
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_5
    const-string/jumbo v35, "ondemand"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 165
    const/16 v32, 0x2be

    move/from16 v33, v32

    .line 166
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 168
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_6
    if-nez v26, :cond_7

    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-eq v0, v1, :cond_8

    .line 169
    :cond_7
    const/16 v32, 0x321

    move/from16 v33, v32

    .line 170
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 172
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_8
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-eq v15, v0, :cond_9

    .line 173
    const/16 v32, 0x321

    move/from16 v33, v32

    .line 174
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 178
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

    .line 179
    const/16 v32, 0x1f5

    move/from16 v33, v32

    .line 180
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 183
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_a
    const/16 v35, 0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    if-eqz v30, :cond_b

    .line 184
    const/16 v32, 0x259

    move/from16 v33, v32

    .line 185
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 188
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_b
    const-string/jumbo v35, "keepon"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    const-string/jumbo v35, "ondemand"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 189
    const/16 v32, 0x2bd

    move/from16 v33, v32

    .line 190
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 193
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_c
    const-string/jumbo v35, "ondemand"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    if-nez v3, :cond_d

    .line 194
    const/16 v32, 0x2be

    move/from16 v33, v32

    .line 195
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 199
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_d
    if-eqz v7, :cond_e

    const/16 v35, 0x1

    move/from16 v0, v35

    if-eq v7, v0, :cond_e

    .line 200
    const/16 v32, 0x325

    move/from16 v33, v32

    .line 201
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 204
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_e
    const-string v35, "\\s"

    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 205
    .local v17, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 206
    .local v14, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    .line 207
    .local v8, "found":Z
    if-eqz v8, :cond_f

    .line 208
    const/16 v32, 0x6a

    move/from16 v33, v32

    .line 209
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 212
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v20

    .line 213
    .local v20, "profileLength":I
    const/16 v35, 0x1

    move/from16 v0, v20

    move/from16 v1, v35

    if-lt v0, v1, :cond_10

    const/16 v35, 0x80

    move/from16 v0, v20

    move/from16 v1, v35

    if-le v0, v1, :cond_11

    .line 214
    :cond_10
    const/16 v32, 0x6b

    move/from16 v33, v32

    .line 215
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 218
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

    .line 219
    .local v19, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v19, :cond_13

    .line 220
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v35

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_12

    .line 221
    const/16 v32, 0x6f

    move/from16 v33, v32

    .line 222
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 224
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_12
    const/16 v32, 0x70

    move/from16 v33, v32

    .line 225
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 229
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 230
    .local v34, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v31, v0

    .line 232
    .local v31, "userId":I
    const-string v35, "chaining_enabled"

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 233
    .local v4, "chainingValue":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v4, v0, :cond_15

    .line 234
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

    .line 235
    .local v9, "isChainingEnabled":I
    const/16 v35, 0x1

    move/from16 v0, v35

    if-eq v9, v0, :cond_14

    if-nez v9, :cond_16

    .line 236
    :cond_14
    const/16 v32, 0x1f7

    move/from16 v33, v32

    .line 237
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 240
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

    .line 241
    .local v11, "isVpnEnabled":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v11, v0, :cond_16

    .line 242
    const/16 v32, 0x1f8

    move/from16 v33, v32

    .line 243
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 247
    .end local v11    # "isVpnEnabled":I
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_16
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-eq v15, v0, :cond_1d

    .line 248
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

    .line 249
    :cond_17
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 250
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 252
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_18
    if-nez v3, :cond_19

    .line 253
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 254
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 256
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_19
    if-eqz v27, :cond_1d

    if-eqz v24, :cond_1d

    .line 257
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_1c

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_1c

    .line 258
    const/16 v35, 0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-eq v0, v1, :cond_1a

    .line 259
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 260
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 262
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

    const-string/jumbo v37, "proxy-username"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 263
    .local v10, "isUserSaved":Z
    if-nez v10, :cond_1b

    .line 264
    const/16 v32, 0x322

    move/from16 v33, v32

    .line 265
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 267
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

    const-string/jumbo v37, "proxy-password"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 268
    .local v12, "ispasswordSaved":Z
    if-nez v12, :cond_1d

    .line 269
    const/16 v32, 0x323

    move/from16 v33, v32

    .line 270
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 273
    .end local v10    # "isUserSaved":Z
    .end local v12    # "ispasswordSaved":Z
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1c
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 274
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 279
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

    .line 280
    :cond_1e
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-ne v15, v0, :cond_1f

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_20

    .line 281
    :cond_1f
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 282
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 284
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_20
    if-nez v3, :cond_21

    .line 285
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 286
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 288
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_21
    if-eqz v27, :cond_24

    if-eqz v24, :cond_24

    .line 289
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_23

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_23

    .line 290
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

    const-string/jumbo v37, "proxy-username"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 291
    .restart local v10    # "isUserSaved":Z
    if-nez v10, :cond_22

    .line 292
    const/16 v32, 0x322

    move/from16 v33, v32

    .line 293
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 295
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

    const-string/jumbo v37, "proxy-password"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 296
    .restart local v12    # "ispasswordSaved":Z
    if-nez v12, :cond_24

    .line 297
    const/16 v32, 0x323

    move/from16 v33, v32

    .line 298
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 301
    .end local v10    # "isUserSaved":Z
    .end local v12    # "ispasswordSaved":Z
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_23
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 302
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 307
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_24
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-eq v15, v0, :cond_25

    .line 308
    const-string v35, "KnoxVpnApiValidation"

    const-string v36, "Binding to knox pac service during create profile validation"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindPacService()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
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

    const-string/jumbo v37, "createVpnProfileValidation : validationResult value is "

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

    .line 320
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_0

    .line 312
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :catch_0
    move-exception v6

    .line 313
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

    .line 314
    const/16 v32, 0x67

    .line 318
    goto :goto_1

    .line 315
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v6

    .line 316
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

    .line 317
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

    .line 780
    if-eqz p3, :cond_0

    :try_start_0
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 781
    :cond_0
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 820
    .end local p3    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p3

    .line 785
    .restart local p3    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 786
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_3

    .line 787
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 788
    goto :goto_0

    .line 790
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_4

    .line 791
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: Not the same admin"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 792
    goto :goto_0

    .line 796
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 797
    .local v4, "routeType":I
    if-nez v4, :cond_5

    .line 798
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 799
    goto :goto_0

    .line 803
    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 804
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_6

    .line 805
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: user id is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 806
    goto :goto_0

    .line 810
    :cond_6
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 811
    .local v0, "containerOwner":I
    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v6, :cond_1

    .line 812
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, v5

    .line 813
    goto :goto_0

    .line 816
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    :catch_0
    move-exception v1

    .line 817
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

    .line 818
    goto :goto_0
.end method

.method public getAllPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 569
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 570
    :cond_0
    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 595
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 574
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 575
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_3

    .line 576
    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 577
    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v4, v5, :cond_4

    .line 580
    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllPackagesInVpnProfileValidation: Not the same Admin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 581
    goto :goto_0

    .line 585
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .line 586
    .local v2, "routeType":I
    if-nez v2, :cond_1

    .line 587
    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v3

    .line 588
    goto :goto_0

    .line 591
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    :catch_0
    move-exception v0

    .line 592
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

    .line 593
    goto :goto_0
.end method

.method public getErrorStringValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1105
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1106
    :cond_0
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getErrorStringValidation: profileName value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 1122
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 1109
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1110
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_3

    .line 1111
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getErrorStringValidation: profileInfo value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 1112
    goto :goto_0

    .line 1114
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_1

    .line 1115
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getErrorStringValidation: Not the same admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    .line 1116
    goto :goto_0

    .line 1119
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v0

    .line 1120
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
    .line 1079
    const/16 v2, 0x64

    .line 1081
    .local v2, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1082
    :cond_0
    const/16 v2, 0x68

    move v3, v2

    .line 1100
    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_0
    return v3

    .line 1085
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1086
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    .line 1087
    const/16 v2, 0x6c

    move v3, v2

    .line 1088
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .line 1090
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_3

    .line 1091
    const/16 v2, 0x70

    move v3, v2

    .line 1092
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .line 1095
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_0
    move-exception v0

    .line 1096
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

    .line 1097
    const/16 v2, 0x65

    .line 1099
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getStateValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1100
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0
.end method

.method public getVpnModeOfOperationValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1155
    const/16 v2, 0x64

    .line 1157
    .local v2, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1158
    :cond_0
    const/16 v2, 0x68

    move v3, v2

    .line 1176
    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_0
    return v3

    .line 1161
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1162
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    .line 1163
    const/16 v2, 0x6c

    move v3, v2

    .line 1164
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .line 1166
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_3

    .line 1167
    const/16 v2, 0x70

    move v3, v2

    .line 1168
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .line 1171
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_0
    move-exception v0

    .line 1172
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

    .line 1173
    const/16 v2, 0x65

    .line 1175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1176
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

    .line 326
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 327
    :cond_0
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getVpnProfileValidation: profileName value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 345
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 331
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 332
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_3

    .line 333
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getVpnProfileValidation: profileInfo value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 334
    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_1

    .line 337
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getVpnProfileValidation: Not the same admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    .line 338
    goto :goto_0

    .line 341
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v0

    .line 342
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
    .line 909
    const/16 v5, 0x64

    .line 913
    .local v5, "validationResult":I
    if-eqz p3, :cond_0

    :try_start_0
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 914
    :cond_0
    const/16 v5, 0x68

    move v6, v5

    .line 971
    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_0
    return v6

    .line 918
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 919
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_2

    .line 920
    const/16 v5, 0x6c

    move v6, v5

    .line 921
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 923
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_3

    .line 924
    const/16 v5, 0x70

    move v6, v5

    .line 925
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 929
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 930
    .local v4, "routeType":I
    if-nez v4, :cond_4

    .line 931
    const/16 v5, 0x6d

    move v6, v5

    .line 932
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 935
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4
    const/4 v2, 0x0

    .line 937
    .local v2, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 938
    if-nez v2, :cond_5

    .line 939
    const/16 v5, 0x71

    move v6, v5

    .line 940
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 944
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_5
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 945
    .local v0, "containerOwner":I
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v7, :cond_6

    .line 946
    const/16 v5, 0x72

    move v6, v5

    .line 947
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 952
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 953
    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    if-eq v7, p2, :cond_7

    .line 954
    const/16 v5, 0x71

    move v6, v5

    .line 955
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 959
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_7
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 960
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_8

    .line 961
    const/16 v5, 0x7c

    move v6, v5

    .line 962
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .line 966
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_0
    move-exception v1

    .line 967
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

    .line 968
    const/16 v5, 0x65

    .line 970
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 971
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_0
.end method

.method public removeAllPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1038
    const/16 v3, 0x64

    .line 1041
    .local v3, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1042
    :cond_0
    const/16 v3, 0x68

    move v4, v3

    .line 1075
    .end local v3    # "validationResult":I
    .local v4, "validationResult":I
    :goto_0
    return v4

    .line 1046
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1047
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    .line 1048
    const/16 v3, 0x6c

    move v4, v3

    .line 1049
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .line 1051
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v5, v6, :cond_3

    .line 1052
    const/16 v3, 0x70

    move v4, v3

    .line 1053
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .line 1057
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .line 1058
    .local v2, "routeType":I
    if-nez v2, :cond_4

    .line 1059
    const/16 v3, 0x6d

    move v4, v3

    .line 1060
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .line 1063
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1064
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_5

    .line 1065
    const/16 v3, 0x7c

    move v4, v3

    .line 1066
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .line 1070
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :catch_0
    move-exception v0

    .line 1071
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

    .line 1072
    const/16 v3, 0x65

    .line 1074
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1075
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
    .line 698
    const/16 v6, 0x64

    .line 701
    .local v6, "validationResult":I
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    array-length v8, p3

    const/4 v9, 0x1

    if-lt v8, v9, :cond_0

    iget-object v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 702
    :cond_0
    const/16 v6, 0x68

    move v7, v6

    .line 775
    .end local v6    # "validationResult":I
    .local v7, "validationResult":I
    :goto_0
    return v7

    .line 706
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 707
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_2

    .line 708
    const/16 v6, 0x6c

    move v7, v6

    .line 709
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .line 711
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_3

    .line 712
    const/16 v6, 0x70

    move v7, v6

    .line 713
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .line 717
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v5

    .line 718
    .local v5, "routeType":I
    if-nez v5, :cond_4

    .line 719
    const/16 v6, 0x6d

    move v7, v6

    .line 720
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .line 722
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_4
    const/4 v2, 0x0

    .line 724
    .local v2, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 725
    if-nez v2, :cond_5

    .line 726
    const/16 v6, 0x71

    move v7, v6

    .line 727
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .line 731
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_5
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 732
    .local v0, "containerOwner":I
    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v8, :cond_6

    .line 733
    const/16 v6, 0x72

    move v7, v6

    .line 734
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .line 738
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 739
    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v8

    if-eq v8, p2, :cond_7

    .line 740
    const/16 v6, 0x71

    move v7, v6

    .line 741
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .line 745
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_7
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 746
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_9

    .line 749
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v10, "ADD_ALL_PACKAGES"

    invoke-virtual {v9, p2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 750
    .local v4, "profileOwningPackage":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 751
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 752
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 756
    const/16 v6, 0x79

    move v7, v6

    .line 757
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :pswitch_0
    move v7, v6

    .line 754
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    .line 760
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_8
    const/16 v6, 0x79

    move v7, v6

    .line 761
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    .line 765
    .end local v4    # "profileOwningPackage":Ljava/lang/String;
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_9
    const/16 v6, 0x7a

    move v7, v6

    .line 766
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    .line 770
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "routeType":I
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :catch_0
    move-exception v1

    .line 771
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

    .line 772
    const/16 v6, 0x65

    .line 774
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeContainerPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 775
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    .line 752
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
    .line 460
    const/16 v4, 0x64

    .line 463
    .local v4, "validationResult":I
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v6, p2

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 464
    :cond_0
    const/16 v4, 0x68

    move v5, v4

    .line 515
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_0
    return v5

    .line 468
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 469
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    .line 470
    const/16 v4, 0x6c

    move v5, v4

    .line 471
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 473
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_3

    .line 474
    const/16 v4, 0x70

    move v5, v4

    .line 475
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 479
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 480
    .local v3, "routeType":I
    if-nez v3, :cond_4

    .line 481
    const/16 v4, 0x6d

    move v5, v4

    .line 482
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 485
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 486
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v6, v7, :cond_6

    .line 489
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "profileOwningPackage":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 491
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 492
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 496
    const/16 v4, 0x79

    move v5, v4

    .line 497
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :pswitch_0
    move v5, v4

    .line 494
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 500
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_5
    const/16 v4, 0x79

    move v5, v4

    .line 501
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 505
    .end local v2    # "profileOwningPackage":Ljava/lang/String;
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_6
    const/16 v4, 0x7a

    move v5, v4

    .line 506
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 510
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_0
    move-exception v0

    .line 511
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

    .line 512
    const/16 v4, 0x65

    .line 514
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removePackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 515
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto/16 :goto_0

    .line 492
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

    .line 350
    const/16 v4, 0x64

    .line 353
    .local v4, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 354
    :cond_0
    const/16 v4, 0x68

    move v5, v4

    .line 380
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_0
    return v5

    .line 358
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 359
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    .line 360
    const/16 v4, 0x6c

    move v5, v4

    .line 361
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 363
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_3

    .line 364
    const/16 v4, 0x70

    move v5, v4

    .line 365
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 369
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 370
    .local v3, "routeType":I
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 371
    .local v2, "profileState":I
    if-ne v3, v8, :cond_4

    if-ne v2, v8, :cond_4

    .line 372
    const/16 v4, 0x7d

    .line 379
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "profileState":I
    .end local v3    # "routeType":I
    :cond_4
    :goto_1
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 380
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .line 375
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_0
    move-exception v0

    .line 376
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

    .line 377
    const/16 v4, 0x65

    goto :goto_1
.end method

.method public setVpnModeOfOperationValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;I)I
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "vpnMode"    # I

    .prologue
    .line 1126
    const/16 v2, 0x64

    .line 1128
    .local v2, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1129
    :cond_0
    const/16 v2, 0x68

    move v3, v2

    .line 1151
    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_0
    return v3

    .line 1132
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1133
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    .line 1134
    const/16 v2, 0x6c

    move v3, v2

    .line 1135
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .line 1137
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_3

    .line 1138
    const/16 v2, 0x70

    move v3, v2

    .line 1139
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .line 1142
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_3
    if-eqz p3, :cond_4

    const/4 v4, 0x1

    if-eq p3, v4, :cond_4

    .line 1143
    const/16 v2, 0x8a

    move v3, v2

    .line 1144
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0

    .line 1146
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_0
    move-exception v0

    .line 1147
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

    .line 1148
    const/16 v2, 0x65

    .line 1150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1151
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_0
.end method
