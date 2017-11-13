.class public Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;
.source "SmartCardBrowserPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static packageName:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private preAuthState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "SmartCardBrowserPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    .line 80
    const-string v0, "com.chrome.deviceextras.samsung"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 76
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 78
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    .line 86
    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 91
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 92
    return-void
.end method

.method private broadcastIntentAsUser(ZII)V
    .locals 5
    .param p1, "result"    # Z
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "edm.intent.action.smartcard.browser.authentication"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 365
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 366
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    return-void
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 105
    return-object p1
.end method

.method private getClientCertificateAliasAsUser(IILjava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "userID"    # I
    .param p3, "hostURL"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 374
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 376
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 377
    .local v0, "adminId":Ljava/lang/Long;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-virtual {v4, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    const-string/jumbo v10, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string/jumbo v10, "hostUrl"

    invoke-virtual {v4, v10, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string/jumbo v10, "port"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    .line 384
    .local v2, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "certAlias"

    aput-object v11, v2, v10

    .line 386
    iget-object v10, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardBrowserCertAliasTable"

    invoke-virtual {v10, v11, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 389
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 392
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 393
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 394
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 395
    .local v3, "cv":Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 396
    .local v9, "storedAlias":Ljava/lang/String;
    const-string v10, "certAlias"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 398
    if-eqz v9, :cond_1

    .line 407
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9    # "storedAlias":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 404
    :catch_0
    move-exception v5

    .line 405
    .local v5, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "getClientCertificateAliasAsUser() failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isAuthenticationEnabledAsUser(II)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 203
    const/4 v2, 0x0

    .line 206
    .local v2, "ret":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardBrowserTable"

    const-string v7, "browserAuthEnabled"

    invoke-virtual {v5, p1, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 208
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 209
    .local v3, "value":Z
    if-eqz v3, :cond_0

    .line 210
    move v2, v3

    .line 218
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    return v2

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isAuthenticationEnabled() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public disableAuthentication(Landroid/app/enterprise/ContextInfo;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v11, 0x0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 164
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 165
    .local v10, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 168
    .local v2, "containerId":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    .line 169
    .local v8, "oldState":Z
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "SmartCardBrowserTable"

    const-string v4, "browserAuthEnabled"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 172
    .local v9, "ret":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    .line 174
    .local v7, "newState":Z
    if-eq v7, v8, :cond_0

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntentAsUser(ZII)V

    .line 177
    :cond_0
    if-eqz v9, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string v1, "SmartCardBrowserPolicy/isAuthenticationEnabled"

    invoke-static {v0, v1, v10}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v7    # "newState":Z
    .end local v8    # "oldState":Z
    .end local v9    # "ret":Z
    :cond_1
    :goto_0
    return v9

    .line 185
    :catch_0
    move-exception v6

    .line 186
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableAuthentication() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v11

    .line 189
    goto :goto_0
.end method

.method public enableAuthentication(Landroid/app/enterprise/ContextInfo;)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 109
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 111
    .local v17, "userId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 113
    .local v4, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 116
    .local v10, "ident":J
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v14

    .line 117
    .local v14, "oldState":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v5, "SmartCardBrowserTable"

    const-string v6, "browserAuthEnabled"

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    .line 120
    .local v16, "ret":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v13

    .line 121
    .local v13, "newState":Z
    const/4 v12, 0x0

    .line 123
    .local v12, "isPersona":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PersonaManager;

    .line 124
    .local v15, "personaManager":Landroid/os/PersonaManager;
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v12

    .line 127
    if-eqz v12, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mPms:Lcom/android/server/pm/PackageManagerService;

    sget-object v3, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "packageAlreadyInstalled in main user is true"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " installExistingPackageForPersona "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " for  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v9, -0x1

    .line 134
    .local v9, "installResult":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mPms:Lcom/android/server/pm/PackageManagerService;

    sget-object v3, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->packageName:Ljava/lang/String;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v9

    .line 135
    const/4 v2, 0x1

    if-eq v9, v2, :cond_0

    .line 136
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Failure to install package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " package manager result code is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v9    # "installResult":I
    :cond_0
    if-eq v13, v14, :cond_1

    .line 143
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v4, v1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntentAsUser(ZII)V

    .line 145
    :cond_1
    if-eqz v16, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string v3, "SmartCardBrowserPolicy/isAuthenticationEnabled"

    move/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    .end local v12    # "isPersona":Z
    .end local v13    # "newState":Z
    .end local v14    # "oldState":Z
    .end local v15    # "personaManager":Landroid/os/PersonaManager;
    .end local v16    # "ret":Z
    :goto_0
    return v16

    .line 153
    :catch_0
    move-exception v8

    .line 154
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "enableAuthentication() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    const/16 v16, 0x0

    goto :goto_0

    .line 156
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getClientCertificateAlias(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostURL"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 272
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 273
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 275
    .local v1, "userId":I
    if-nez p2, :cond_0

    .line 276
    const/4 v2, 0x0

    .line 279
    :goto_0
    return-object v2

    .line 277
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 279
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAliasAsUser(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 198
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 199
    .local v0, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabledAsUser(II)Z

    move-result v1

    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 324
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 328
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 332
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    monitor-enter v5

    .line 333
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabledAsUser(II)Z

    move-result v0

    .line 334
    .local v0, "curr_auth_state":Z
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_1

    .line 335
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 336
    .local v1, "prev_auth_state":Z
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    if-eq v0, v1, :cond_0

    .line 344
    invoke-direct {p0, v0, v4, v2}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntentAsUser(ZII)V

    .line 347
    :cond_0
    return-void

    .line 338
    .end local v1    # "prev_auth_state":Z
    :cond_1
    if-eqz v0, :cond_2

    move v1, v4

    .restart local v1    # "prev_auth_state":Z
    :cond_2
    goto :goto_0

    .line 340
    .end local v0    # "curr_auth_state":Z
    .end local v1    # "prev_auth_state":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onPreAdminRemoval(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 351
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 353
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    monitor-enter v2

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabledAsUser(II)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_0
    monitor-exit v2

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeClientCertificateAlias(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostURL"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v3, 0x0

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 289
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 291
    .local v1, "containerId":I
    if-nez p2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v3

    .line 294
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string/jumbo v4, "containerID"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string/jumbo v4, "hostUrl"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v4, "port"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    iget-object v4, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SmartCardBrowserCertAliasTable"

    invoke-virtual {v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 302
    .local v0, "cnt":I
    if-lez v0, :cond_0

    .line 303
    iget-object v4, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SmartCardBrowserCertAliasTable"

    invoke-virtual {v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_0

    .line 306
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string v4, "SmartCardBrowserPolicy/isAuthenticationEnabled"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 310
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setClientCertificateAlias(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostURL"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 226
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 227
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 229
    .local v5, "userId":I
    if-eqz p2, :cond_0

    if-nez p4, :cond_2

    :cond_0
    move v3, v6

    .line 265
    :cond_1
    :goto_0
    return v3

    .line 232
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 235
    invoke-direct {p0, v0, v5, p2, p3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAliasAsUser(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "storedAlias":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setClientCertificateAlias() stored Alias is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-nez v4, :cond_3

    .line 238
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setClientCertificateAlias() Inserting the alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for hostURL:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and port:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string/jumbo v7, "containerID"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string/jumbo v7, "hostUrl"

    invoke-virtual {v1, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v7, "port"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v7, "certAlias"

    invoke-virtual {v1, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v3, 0x0

    .line 249
    .local v3, "ret":Z
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SmartCardBrowserCertAliasTable"

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 252
    if-eqz v3, :cond_1

    .line 253
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string v8, "SmartCardBrowserPolicy/getClientCertificateAlias"

    invoke-static {v7, v8, v5}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 261
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "ret":Z
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setClientCertificateAlias() failed"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move v3, v6

    .line 265
    goto/16 :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method
