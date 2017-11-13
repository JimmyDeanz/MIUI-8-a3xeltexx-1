.class public Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
.super Lcom/sec/enterprise/knox/container/ISmartCardAccessPolicy$Stub;
.source "SmartCardAccessPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field private static final ALLOW_BT_SECURE_ACCESS_FAILURE:I = 0x1

.field private static final ALLOW_BT_SECURE_ACCESS_NOT_APPLICABLE:I = 0x3

.field private static final ALLOW_BT_SECURE_ACCESS_SUCCESS:I = 0x0

.field private static final BT_SECURE_MODE_DISABLED:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static packageName:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDataObserver:Landroid/content/pm/IPackageDataObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "SmartCardAccessPolicy"

    sput-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    .line 91
    const-string v0, "com.android.bluetooth"

    sput-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Lcom/sec/enterprise/knox/container/ISmartCardAccessPolicy$Stub;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 90
    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 234
    new-instance v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy$1;-><init>(Lcom/android/server/enterprise/container/SmartCardAccessPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageDataObserver:Landroid/content/pm/IPackageDataObserver;

    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 105
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 107
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 108
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clear_app_data_and_delete_cache_files(I)Z
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 166
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear_app_data_and_delete_cache_files() userId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 169
    .local v3, "success1":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 170
    .local v4, "token":J
    sget-object v1, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->packageName:Ljava/lang/String;

    .line 171
    .local v1, "pkg_name":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v7, "clear_app_data_and_delete_cache_files function"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v7, "clear_app_data_and_delete_cache_files function: Multi user enabled"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v6, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v6, v1, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearApplicationUserData(Ljava/lang/String;I)Z

    move-result v2

    .line 177
    iget-object v6, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearApplicationCacheFiles(Ljava/lang/String;)Z

    move-result v3

    .line 178
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear_app_data_and_delete_cache_files function: Multi user enabled success :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear_app_data_and_delete_cache_files function: Multi user enabled success1 :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    and-int v6, v2, v3

    .line 191
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    :goto_0
    return v6

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    const/4 v6, 0x0

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private enable_disable_bt_application(IZ)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "allowAccess"    # Z

    .prologue
    .line 201
    sget-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enable_disable_bt_application() userId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v7, 0x0

    .line 203
    .local v7, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 204
    .local v8, "token":J
    sget-object v1, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->packageName:Ljava/lang/String;

    .line 206
    .local v1, "pkg_name":Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enable_disable_bt_application function"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enable_disable_bt_application function: Multi user enabled"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 226
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    :goto_1
    return v7

    .line 212
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 223
    :catch_0
    move-exception v6

    .line 224
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 121
    return-object p1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public allowBTSecureAccess(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allowAccess"    # Z

    .prologue
    const/4 v8, 0x1

    .line 130
    sget-object v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v9, "allowBTSecureAccess"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 134
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 135
    .local v0, "adminId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 136
    .local v6, "userId":I
    sget-object v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allowBTSecureAccess() userId is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allowBTSecureAccess() adminId is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 139
    .local v4, "token":J
    const-string v7, "bluetooth_secure_mode_policy"

    invoke-static {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .line 143
    .local v1, "bluetoothSecureModePolicy":Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
    const/4 v3, 0x0

    .line 144
    .local v3, "ret":Z
    :try_start_0
    sget-object v7, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v7}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v7

    if-ne v7, v8, :cond_0

    .line 145
    const-string/jumbo v7, "mum_container_policy"

    invoke-static {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    new-instance v9, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v9, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v7, v9, p2, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enableBluetooth(Landroid/app/enterprise/ContextInfo;ZLandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 150
    :goto_0
    if-eqz v3, :cond_1

    .line 151
    const/4 v7, 0x0

    .line 156
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    :goto_1
    return v7

    .line 147
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "SmartCardAccessTable"

    const-string v10, "allowBTAccess"

    invoke-virtual {v7, v0, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    move v7, v8

    .line 159
    goto :goto_1

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public getAllWhitelistedAppFromBTSecureAccess(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v5, "pkg_names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 346
    .local v8, "userId":I
    iget-object v10, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 347
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-object v5

    .line 351
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 352
    .local v7, "uid":Ljava/lang/Long;
    sget-object v10, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAllWhitelistedAppFromBTSecureAccess() adminId long is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v10, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAllWhitelistedAppFromBTSecureAccess() adminId is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "whitelistPackageName"

    aput-object v11, v6, v10

    .line 357
    .local v6, "ret":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v1, v10

    .line 360
    .local v1, "col":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 363
    .local v9, "val":[Ljava/lang/String;
    sget-object v10, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "getAllWhitelistedAppFromBTSecureAccess()"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v10, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardAccessWhitelistTable"

    invoke-virtual {v10, v11, v1, v9, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 366
    .local v2, "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v10, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAllWhitelistedAppFromBTSecureAccess() cv.size() is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 368
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "whitelistPackageName"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 373
    .end local v1    # "col":[Ljava/lang/String;
    .end local v2    # "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i":I
    .end local v6    # "ret":[Ljava/lang/String;
    .end local v7    # "uid":Ljava/lang/Long;
    .end local v9    # "val":[Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAllWhitelistedAppFromBTSecureAccess() package names list is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isAllBTSecureAccessAllowed()Z
    .locals 9

    .prologue
    .line 560
    const/4 v3, 0x0

    .line 561
    .local v3, "ret":Z
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isAllBTSecureAccessAllowed()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v5, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v0

    .line 563
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 564
    :cond_0
    const/4 v5, 0x0

    .line 581
    :goto_0
    return v5

    .line 567
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 569
    .local v4, "uid":Ljava/lang/Long;
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAllBTSecureAccessAllowed() adminId long is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAllBTSecureAccessAllowed() adminId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v5, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v6

    const-string v7, "SmartCardAccessTable"

    const-string v8, "allowBTAccess"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 572
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAllBTSecureAccessAllowed() ret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    if-eqz v3, :cond_2

    .line 574
    const/4 v5, 0x1

    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAllBTSecureAccessAllowed() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_3
    move v5, v3

    .line 581
    goto/16 :goto_0
.end method

.method public isBTSecureAccessAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    .line 246
    const/4 v3, 0x0

    .line 247
    .local v3, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 248
    .local v5, "userId":I
    sget-object v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isBTSecureAccessAllowed() userId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isBTSecureAccessAllowed()"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v7, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 253
    :cond_0
    const/4 v6, 0x0

    .line 275
    :goto_0
    return v6

    .line 256
    :cond_1
    sget-object v7, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v7}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v7

    if-ne v7, v6, :cond_3

    .line 257
    const-string/jumbo v6, "mum_container_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    :cond_2
    move v6, v3

    .line 275
    goto :goto_0

    .line 259
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 261
    .local v4, "uid":Ljava/lang/Long;
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isBTSecureAccessAllowed() adminId long is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isBTSecureAccessAllowed() adminId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v7, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v8

    const-string v9, "SmartCardAccessTable"

    const-string v10, "allowBTAccess"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 264
    sget-object v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isBTSecureAccessAllowed() ret : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isBTSecureAccessAllowed() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public isBTSecureAccessAllowedAsUser(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I

    .prologue
    .line 279
    const/4 v3, 0x0

    .line 280
    .local v3, "ret":Z
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isBTSecureAccessAllowedAsUser() userId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v5, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 283
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 284
    :cond_0
    const/4 v5, 0x0

    .line 302
    :goto_0
    return v5

    .line 287
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 291
    .local v4, "uid":Ljava/lang/Long;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v6

    const-string v7, "SmartCardAccessTable"

    const-string v8, "allowBTAccess"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 292
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isBTSecureAccessAllowedAsUser() ret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    if-eqz v3, :cond_2

    .line 294
    const/4 v5, 0x1

    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isBTSecureAccessAllowed() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_3
    move v5, v3

    .line 302
    goto :goto_0
.end method

.method public isPackageWhitelistedFromBTSecureAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "package_name"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v4, 0x0

    .line 416
    .local v4, "pkg_nm":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 417
    .local v7, "userId":I
    const/4 v5, 0x0

    .line 419
    .local v5, "ret":Z
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isPackageWhitelistedFromBTSecureAccess() userId is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    if-nez p2, :cond_0

    .line 421
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isPackageWhitelistedFromBTSecureAccess() package name is null "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v9, 0x0

    .line 460
    :goto_0
    return v9

    .line 425
    :cond_0
    const-string v9, "com.android.bluetooth"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 426
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isPackageWhitelistedFromBTSecureAccess() package name is bluetooth "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/4 v9, 0x1

    goto :goto_0

    .line 431
    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 432
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 433
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 436
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 437
    .local v6, "uid":Ljava/lang/Long;
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isPackageWhitelistedFromBTSecureAccess() adminId long is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isPackageWhitelistedFromBTSecureAccess() adminId is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "whitelistPackageName"

    aput-object v10, v1, v9

    .line 442
    .local v1, "col":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    .line 446
    .local v8, "val":[Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isPackageWhitelistedFromBTSecureAccess()"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v9, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardAccessWhitelistTable"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v1, v8, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 449
    .local v2, "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isPackageWhitelistedFromBTSecureAccess() cv.size() is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_5

    .line 451
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isPackageWhitelistedFromBTSecureAccess() package name is NOT whitelisted "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 455
    :cond_5
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isPackageWhitelistedFromBTSecureAccess() package name is whitelisted "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v9, 0x1

    goto/16 :goto_0

    .end local v1    # "col":[Ljava/lang/String;
    .end local v2    # "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "uid":Ljava/lang/Long;
    .end local v8    # "val":[Ljava/lang/String;
    :cond_6
    move v9, v5

    .line 460
    goto/16 :goto_0
.end method

.method public isPackageWhitelistedFromBTSecureAccessUid(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 25
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "calling_Uid"    # I

    .prologue
    .line 469
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 470
    .local v20, "userId":I
    const/16 v18, 0x0

    .line 471
    .local v18, "ret":Z
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageWhitelistedFromBTSecureAccessUid() userId is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    move/from16 v5, p2

    .line 473
    .local v5, "callingUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 474
    .local v6, "callingUid_system":I
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageWhitelistedFromBTSecureAccessUid callingUid from UserHandle : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 478
    .local v12, "ident":J
    :try_start_0
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageWhitelistedFromBTSecureAccessUid callingUser : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "persona"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PersonaManager;

    .line 482
    .local v16, "personaManager":Landroid/os/PersonaManager;
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v14

    .line 483
    .local v14, "isPersona":Z
    if-eqz v14, :cond_8

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 486
    .local v4, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    if-eqz v22, :cond_1

    .line 487
    :cond_0
    const/16 v22, 0x0

    .line 547
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    .end local v4    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v14    # "isPersona":Z
    .end local v16    # "personaManager":Landroid/os/PersonaManager;
    :goto_0
    return v22

    .line 490
    .restart local v4    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v14    # "isPersona":Z
    .restart local v16    # "personaManager":Landroid/os/PersonaManager;
    :cond_1
    :try_start_1
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageWhitelistedFromBTSecureAccessUid : isPersona true"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/16 v22, 0x3e8

    move/from16 v0, v22

    if-eq v6, v0, :cond_2

    const/16 v22, 0x3ea

    move/from16 v0, v22

    if-ne v6, v0, :cond_3

    .line 493
    :cond_2
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageWhitelistedFromBTSecureAccessUid : system uid or bluetooth uid returning true"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    const/16 v22, 0x1

    .line 547
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 497
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 498
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 500
    .local v15, "packages":[Ljava/lang/String;
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageWhitelistedFromBTSecureAccessUid : packages : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    if-eqz v15, :cond_7

    array-length v0, v15

    move/from16 v22, v0

    if-lez v22, :cond_7

    .line 503
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v15

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_9

    .line 505
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageWhitelistedFromBTSecureAccessUid : package :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v15, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 507
    .local v19, "uid":Ljava/lang/Long;
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageWhitelistedFromBTSecureAccessUid() adminId long is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageWhitelistedFromBTSecureAccessUid() adminId is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v7, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "adminUid"

    aput-object v23, v7, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "whitelistPackageName"

    aput-object v23, v7, v22

    .line 512
    .local v7, "col":[Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aget-object v23, v15, v10

    aput-object v23, v21, v22

    .line 516
    .local v21, "val":[Ljava/lang/String;
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageWhitelistedFromBTSecureAccessUid()"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "SmartCardAccessWhitelistTable"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 519
    .local v8, "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageWhitelistedFromBTSecureAccessUid() cv.size() is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 521
    :cond_4
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageWhitelistedFromBTSecureAccessUid() package name is NOT whitelisted "

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 525
    :cond_5
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageWhitelistedFromBTSecureAccessUid() package name is whitelisted "

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    const/16 v22, 0x1

    .line 547
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 503
    .end local v7    # "col":[Ljava/lang/String;
    .end local v8    # "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v19    # "uid":Ljava/lang/Long;
    .end local v21    # "val":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 533
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_3
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageWhitelistedFromBTSecureAccessUid : packages is null or length < 0"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 534
    const/16 v22, 0x0

    .line 547
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 539
    .end local v4    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "packages":[Ljava/lang/String;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    :try_start_4
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "isPackageWhitelistedFromBTSecureAccessUid : isPersona false "

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 540
    const/16 v18, 0x1

    .line 547
    :cond_9
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    .end local v14    # "isPersona":Z
    .end local v16    # "personaManager":Landroid/os/PersonaManager;
    :goto_3
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageWhitelistedFromBTSecureAccessUid : ret "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v18

    .line 551
    goto/16 :goto_0

    .line 543
    :catch_0
    move-exception v9

    .line 544
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_5
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isPackageWhitelistedFromBTSecureAccessUid: Exception ex="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 545
    const/16 v18, 0x0

    .line 547
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v22

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 588
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 593
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 602
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 611
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 598
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 606
    return-void
.end method

.method public setBTSecureAccessAppWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 310
    .local v5, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 311
    sget-object v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setBTSecureAccessAppWhiteList()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 313
    .local v7, "userId":I
    sget-object v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBTSecureAccessAppWhiteList() userId is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 316
    .local v0, "adminId":I
    if-eqz p2, :cond_2

    .line 317
    sget-object v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setBTSecureAccessAppWhiteList() - package name list not null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 319
    .local v3, "pkg":Ljava/lang/String;
    move-object v4, v3

    .line 320
    .local v4, "pkg1":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBTSecureAccessAppWhiteList() - package name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "whitelistPackageName"

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v8, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    iget-object v8, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "SmartCardAccessWhitelistTable"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    .line 328
    if-nez v5, :cond_0

    move v6, v5

    .line 336
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "pkg1":Ljava/lang/String;
    .end local v5    # "ret":Z
    .local v6, "ret":Z
    :goto_0
    return v6

    .line 332
    .end local v6    # "ret":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "ret":Z
    :cond_1
    const/4 v5, 0x1

    .line 335
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-object v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBTSecureAccessAppWhiteList() - ret is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 336
    .end local v5    # "ret":Z
    .restart local v6    # "ret":Z
    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method
