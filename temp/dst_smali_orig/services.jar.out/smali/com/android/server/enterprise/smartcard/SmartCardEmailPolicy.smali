.class public Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;
.source "SmartCardEmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEmailAccts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "SmartCardEmailPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private broadcastIntentAsUser(ZII)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "edm.intent.action.smartcard.email.authentication"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    return-object p1
.end method

.method private getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "cert_type"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I
    .param p4, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "alias_name":Ljava/lang/String;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .local v1, "adminId":Ljava/lang/Long;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .local v7, "cvWhere":Landroid/content/ContentValues;
    const-string v12, "EmailAddress"

    move-object/from16 v0, p4

    invoke-virtual {v7, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "containerID"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "adminUid"

    invoke-virtual {v7, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v12, 0x2

    new-array v5, v12, [Ljava/lang/String;

    .local v5, "columns":[Ljava/lang/String;
    const-string v12, "encryptionCertificateAlias"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    const-string v13, "encryptionCertificateAlias"

    aput-object v13, v5, v12

    :cond_1
    :goto_0
    iget-object v12, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "SmartCardEmailTable"

    invoke-virtual {v12, v13, v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .local v6, "cv":Landroid/content/ContentValues;
    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v6, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v4, v3

    .end local v1    # "adminId":Ljava/lang/Long;
    .end local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "alias_name":Ljava/lang/String;
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v4, "alias_name":Ljava/lang/String;
    :goto_1
    return-object v4

    .end local v4    # "alias_name":Ljava/lang/String;
    .restart local v1    # "adminId":Ljava/lang/Long;
    .restart local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v3    # "alias_name":Ljava/lang/String;
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local v7    # "cvWhere":Landroid/content/ContentValues;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v12, "signatureCertificateAlias"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    const-string v13, "signatureCertificateAlias"

    aput-object v13, v5, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "adminId":Ljava/lang/Long;
    .end local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v13, "getAliasName() failed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v8    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v4, v3

    .end local v3    # "alias_name":Ljava/lang/String;
    .restart local v4    # "alias_name":Ljava/lang/String;
    goto :goto_1

    .end local v4    # "alias_name":Ljava/lang/String;
    .restart local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v3    # "alias_name":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    sget-object v12, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAliasName() alias name ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEmailAcctCountAsUser(IILjava/lang/String;)I
    .locals 9
    .param p1, "containerId"    # I
    .param p2, "userID"    # I
    .param p3, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .local v5, "retCnt":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .local v0, "adminId":Ljava/lang/Long;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v6, "emailAuthEnabled"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "adminUid"

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_0

    const-string v6, "EmailAddress"

    invoke-virtual {v2, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SmartCardEmailTable"

    invoke-virtual {v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_1
    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEmailAcctCountAsUser() count ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    return v5

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v7, "getEmailAcctCountAsUser() failed"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isAuthenticationEnabledAsUser(II)Z
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    .local v0, "cnt":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSMIMEEncryptionCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "alias_name":Ljava/lang/String;
    if-nez p2, :cond_0

    move-object v1, v0

    .end local v0    # "alias_name":Ljava/lang/String;
    .local v1, "alias_name":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "alias_name":Ljava/lang/String;
    .restart local v0    # "alias_name":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "containerId":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v4, "encryptionCertificateAlias"

    invoke-direct {p0, v4, v2, v3, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0    # "alias_name":Ljava/lang/String;
    .restart local v1    # "alias_name":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSMIMESignatureCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "alias_name":Ljava/lang/String;
    if-nez p2, :cond_0

    move-object v1, v0

    .end local v0    # "alias_name":Ljava/lang/String;
    .local v1, "alias_name":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "alias_name":Ljava/lang/String;
    .restart local v0    # "alias_name":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "containerId":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v4, "signatureCertificateAlias"

    invoke-direct {p0, v4, v2, v3, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0    # "alias_name":Ljava/lang/String;
    .restart local v1    # "alias_name":Ljava/lang/String;
    goto :goto_0
.end method

.method public isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v3, "isAuthenticationEnabled()"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .local v1, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    .local v0, "cnt":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCredentialRequired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .local v1, "userId":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v3, v1, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    .local v0, "cnt":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "enable":Z
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1, v4, v2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntentAsUser(ZII)V

    goto :goto_0
.end method

.method public onContainerCreation(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    return-void
.end method

.method public removeSMIMEEncryptionCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "containerId":I
    const/4 v0, 0x0

    .local v0, "alias_name":Ljava/lang/String;
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "containerID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "EmailAddress"

    invoke-virtual {v4, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "ret":Z
    iget-object v9, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .local v1, "cnt":I
    if-lez v1, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cv":Landroid/content/ContentValues;
    const-string v9, "encryptionCertificateAlias"

    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .end local v1    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v10, "removeSMIMEEncryptionCertificate() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSMIMESignatureCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "containerId":I
    const/4 v0, 0x0

    .local v0, "alias_name":Ljava/lang/String;
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "containerID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "EmailAddress"

    invoke-virtual {v4, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "ret":Z
    iget-object v9, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .local v1, "cnt":I
    if-lez v1, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cv":Landroid/content/ContentValues;
    const-string v9, "signatureCertificateAlias"

    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .end local v1    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v10, "removeSMIMESignatureCertificate() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requireCredentials(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "require"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "containerID"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "EmailAddress"

    invoke-virtual {v3, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "ret":Z
    const/4 v10, 0x0

    invoke-direct {p0, v1, v7, v10}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v5

    .local v5, "preCnt":I
    iget-object v10, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardEmailTable"

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "cnt":I
    if-lez v0, :cond_4

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "emailAuthEnabled"

    if-ne p3, v9, :cond_3

    move v10, v9

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v10, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardEmailTable"

    invoke-virtual {v10, v11, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_2
    if-eqz v6, :cond_0

    const/4 v10, 0x0

    invoke-direct {p0, v1, v7, v10}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    if-nez v5, :cond_6

    if-lez v0, :cond_6

    const/4 v10, 0x1

    invoke-direct {p0, v10, v1, v7}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntentAsUser(ZII)V

    :cond_2
    :goto_3
    move v8, v9

    goto :goto_0

    .restart local v2    # "cv":Landroid/content/ContentValues;
    :cond_3
    move v10, v8

    goto :goto_1

    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_4
    const-string v11, "emailAuthEnabled"

    if-ne p3, v9, :cond_5

    move v10, v9

    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v10, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardEmailTable"

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    goto :goto_2

    :cond_5
    move v10, v8

    goto :goto_4

    :cond_6
    if-lez v5, :cond_2

    if-nez v0, :cond_2

    const/4 v10, 0x0

    invoke-direct {p0, v10, v1, v7}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntentAsUser(ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .end local v0    # "cnt":I
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "preCnt":I
    .end local v6    # "ret":Z
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v10, "requireCredentials() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setForceSMIMEEncryptionCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "containerId":I
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "containerID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "EmailAddress"

    invoke-virtual {v4, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "ret":Z
    iget-object v9, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .local v1, "cnt":I
    if-lez v1, :cond_0

    const-string v9, "encryptionCertificateAlias"

    invoke-direct {p0, v9, v2, v7, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "alias_name":Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cv":Landroid/content/ContentValues;
    const-string v9, "encryptionCertificateAlias"

    invoke-virtual {v3, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .end local v0    # "alias_name":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v10, "setForceSMIMEEncryptionCertificate() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setForceSMIMESignatureCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "containerId":I
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "containerID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "EmailAddress"

    invoke-virtual {v4, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "ret":Z
    iget-object v9, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .local v1, "cnt":I
    if-lez v1, :cond_0

    const-string v9, "signatureCertificateAlias"

    invoke-direct {p0, v9, v2, v7, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "alias_name":Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cv":Landroid/content/ContentValues;
    const-string v9, "signatureCertificateAlias"

    invoke-virtual {v3, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .end local v0    # "alias_name":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v10, "setForceSMIMESignatureCertificate() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
