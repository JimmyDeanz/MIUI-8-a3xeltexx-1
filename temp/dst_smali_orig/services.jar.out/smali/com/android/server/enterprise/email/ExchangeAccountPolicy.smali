.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.super Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;,
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final NOTE_AUTHORITY:Ljava/lang/String; = "note"

.field private static final PERMISSION_SMIME_CERTIFICATE:Ljava/lang/String; = "android.permission.sec.SMIME_CERTIFICATE"

.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"

.field private static final TASK_AUTHORITY:Ljava/lang/String; = "tasks"

.field private static mDeviceId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mExchangeServiceDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRestartExtendDelay:Z

.field private mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

.field private mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    iput-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    iput-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "success to add receiver"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_0
    const/4 v6, 0x0

    .local v6, "containerId":I
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/ComponentName;

    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, "syncMgrCn":Landroid/content/ComponentName;
    if-eqz v8, :cond_0

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "Enabling EAS ExchangeService"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v9, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    return-void

    .end local v6    # "containerId":I
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "Regist BroadCast failed : "

    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "containerId":I
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "Constructor failed : "

    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Landroid/app/enterprise/ContextInfo;JIIZ)Z
    .locals 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z

    move-result v0

    return v0
.end method

.method private convertUcmUri(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "storageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    move-object v8, p3

    .local v8, "modifiedAlias":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v2, 0x0

    .local v2, "credentialStorage":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Landroid/app/enterprise/ContextInfo;)[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    move-result-object v4

    .local v4, "csList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    if-eqz v4, :cond_0

    move-object v1, v4

    .local v1, "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    .local v3, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    if-eqz v3, :cond_2

    iget-object v9, v3, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v2, v3

    .end local v1    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v3    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_0
    if-eqz v2, :cond_3

    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v9, v2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v5

    .local v5, "csUri":Ljava/lang/String;
    move-object v8, v5

    .end local v0    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v2    # "credentialStorage":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v4    # "csList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v5    # "csUri":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v8

    .restart local v1    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v2    # "credentialStorage":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v3    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v4    # "csList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v3    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    const-string v3, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v2, p1, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "callingUid":I
    iget v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling UID changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private enforceUCMPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "storageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Landroid/app/enterprise/ContextInfo;)[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    move-result-object v2

    .local v2, "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    if-eqz v2, :cond_0

    move-object v0, v2

    .local v0, "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v5, p1, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .end local v0    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v1    # "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v2    # "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void

    .restart local v0    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v1    # "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v2    # "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "info"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "userID"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const-string v7, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fillInExchangeAccountData() : accId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , userID =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .local v0, "acc":Landroid/app/enterprise/Account;
    :try_start_0
    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v7, v0, Landroid/app/enterprise/Account;->mId:I

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v7, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v7, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    const-string v7, "0"

    iput-object v7, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v7, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v7, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v7, v0, Landroid/app/enterprise/Account;->mFlags:I

    iget-boolean v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v7, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateAlways:Z

    iget-boolean v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-nez v7, :cond_0

    :goto_0
    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateWhenSilent:Z

    iget-boolean v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakDays:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakStartMinute:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakEndMinute:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakSyncSchedule:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mOffPeakSyncSchedule:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mRoamingSyncSchedule:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncCalendarAge:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    iput v3, v0, Landroid/app/enterprise/Account;->mEmailBodyTruncationSize:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    iput v3, v0, Landroid/app/enterprise/Account;->mEmailRoamingBodyTruncationSize:I

    new-instance v1, Landroid/accounts/Account;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v6, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "acct":Landroid/accounts/Account;
    const-string v3, "com.android.contacts"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncContacts:Z

    const-string v3, "com.android.calendar"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncCalendar:Z

    const-string v3, "tasks"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncTasks:Z

    const-string v3, "note"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncNotes:Z

    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, -0x1

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-string v6, "eas"

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    iget-object v6, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\\"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v6, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, -0x1

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-string v6, "eas"

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    iget-object v6, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\\"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, v6, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "acct":Landroid/accounts/Account;
    :goto_3
    return-object v0

    :cond_0
    move v3, v6

    goto/16 :goto_0

    .restart local v1    # "acct":Landroid/accounts/Account;
    :cond_1
    :try_start_1
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v1    # "acct":Landroid/accounts/Account;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ExchangeAccountPolicy"

    const-string v6, "fillInExchangeAccountData() : failed."

    invoke-static {v3, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    const-string v1, "ReqSigSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultValueState() : policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v1, "ReqEncryptSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "ForceSmimeCert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "AllowSettingChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "AllowNotificationChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-string v1, "ForceSmimeCertForEncryption"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const-string v1, "ForceSmimeCertForSigning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const-string v1, "AttachmentEnable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDefaultValueStateInteger(Ljava/lang/String;)I
    .locals 4
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":I
    const-string v1, "IncomingAttachmentSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultValueStateInteger() : policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v1, "MaxCalendarAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "MaxEmailAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "MaxEmailBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "MaxEmailHTMLBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getExchangeServiceName(I)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I

    .prologue
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".exchange.ExchangeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ExchangeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPolicyState(IJLjava/lang/String;I)Z
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    .local v8, "ret":Z
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .local v1, "columns":[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object p4, v1, v9

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "userID"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v7, 0x0

    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ExchangeAccountTable"

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPolicyState() : results is default value(null), accId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", container id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "ret":Z
    :goto_0
    return v8

    .restart local v8    # "ret":Z
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    const-string v9, "ExchangeAccountPolicy"

    const-string v10, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPolicyState() : results = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", accId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", container id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v6, 0x1

    .local v6, "restricterState":Z
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .local v2, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_4

    const-string v9, "1"

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "ExchangeAccountPolicy"

    const-string v10, "getPolicyState: restricted. "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v6

    goto :goto_0

    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v6    # "restricterState":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .restart local v6    # "restricterState":Z
    :cond_4
    const-string v9, "0"

    goto :goto_2

    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_5
    const-string v9, "ExchangeAccountPolicy"

    const-string v10, "getPolicyState: no restrictData. "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_6

    const/4 v9, 0x1

    :goto_3
    move v8, v9

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private getPolicyStateasInteger(IJLjava/lang/String;IZ)I
    .locals 14
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "isMinimum"    # Z

    .prologue
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueStateInteger(Ljava/lang/String;)I

    move-result v9

    .local v9, "ret":I
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .local v2, "columns":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object p4, v2, v11

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v11, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "userID"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "AccountId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v8, 0x0

    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ExchangeAccountTable"

    invoke-virtual {v11, v12, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .end local v9    # "ret":I
    :cond_0
    :goto_0
    return v9

    .restart local v9    # "ret":I
    :cond_1
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPolicyStateasInteger() : results = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", accId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", user id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", container id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    if-eqz p6, :cond_3

    const v7, 0x7fffffff

    .local v7, "result":I
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .local v3, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .local v10, "value":Ljava/lang/Integer;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_2

    if-eqz p6, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v7, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v7    # "result":I
    .end local v10    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/lang/Exception;
    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "getPolicyStateasInteger() : Exception while getValuesListasInteger from EDMStorageProvider"

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_3
    const/high16 v7, -0x80000000

    goto :goto_1

    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "result":I
    .restart local v10    # "value":Ljava/lang/Integer;
    :cond_4
    if-nez p6, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v7, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v10    # "value":Ljava/lang/Integer;
    :cond_5
    if-eqz p6, :cond_7

    const v11, 0x7fffffff

    if-eq v7, v11, :cond_6

    :goto_2
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPolicyStateasInteger() : result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v7

    goto/16 :goto_0

    :cond_6
    move v7, v9

    goto :goto_2

    :cond_7
    const/high16 v11, -0x80000000

    if-eq v7, v11, :cond_8

    :goto_3
    goto :goto_2

    :cond_8
    move v7, v9

    goto :goto_3
.end method

.method private getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    const-string v0, "knox_ucsm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    return-object v0
.end method

.method private isCredentialStorageManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "credentialStorage"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    const-string v2, "ExchangeAccountPolicy"

    const-string v3, "In isCredentialStorageManaged..."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v2, "ExchangeAccountPolicy"

    const-string v3, "credentialStorage is null!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    :goto_1
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .restart local v1    # "result":I
    goto :goto_0

    .end local v1    # "result":I
    :cond_1
    const-string v2, "ExchangeAccountPolicy"

    const-string v3, "UCM service not found!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isUCMAllowedAndManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "credentialStorage"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->knoxSupportUCM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isCredentialStorageManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    const/4 v2, 0x0

    .local v2, "ret":Z
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v1

    .local v1, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private knoxSupportUCM()Z
    .locals 4

    .prologue
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "In knoxSupportUCM..."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "result":Z
    const/4 v0, 0x1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Does KNOX support UCM? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private putPolicyState(IIJILjava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "value"    # I
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .local v2, "ret":Z
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , value  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , policy ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private putPolicyState(IIJZLjava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "state"    # Z
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .local v2, "ret":Z
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , policy ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v2    # "ret":Z
    :cond_0
    const-string v3, "0"

    goto :goto_0
.end method

.method private resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I
    .param p5, "type"    # I
    .param p6, "onlyupdateDB"    # Z

    .prologue
    const/4 v5, 0x0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    move v3, p4

    .local v3, "userID":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v6, 0x2

    if-ne p5, v6, :cond_2

    const-string v6, "ForceSmimeCertForEncryption"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-nez p6, :cond_0

    invoke-direct {p0, v1, p2, p3, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForEncryption(IJI)V

    :cond_0
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "whereValues":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ExchangeAccountTable"

    invoke-virtual {v6, v7, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v6

    if-lez v6, :cond_1

    const/4 v5, 0x1

    .end local v4    # "whereValues":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return v5

    :cond_2
    const/4 v6, 0x3

    if-ne p5, v6, :cond_3

    const-string v6, "ForceSmimeCertForSigning"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-nez p6, :cond_0

    invoke-direct {p0, v1, p2, p3, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForSigning(IJI)V

    goto :goto_0

    :cond_3
    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resetForcedSMIMECertificateInternal() : failed. There is unsupport type requested : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendReleaseSMIMECertificate(IJI)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReleaseSMIMECertificate() : accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private sendReleaseSMIMECertificateForEncryption(IJI)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReleaseSMIMECertificateForEncryption() : accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private sendReleaseSMIMECertificateForSigning(IJI)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReleaseSMIMECertificateForSigning() : accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private setForceSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;
    .param p6, "Action"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v18, "ExchangeAccountPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setForceSMIMECertificateInternal() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v15

    .local v15, "userID":I
    const/4 v11, 0x0

    .local v11, "result":I
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "ExchangeAccountPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setForceSMIMECertificateInternal() : No exist accId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x3

    :goto_0
    return v18

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_1
    const-string v18, "ExchangeAccountPolicy"

    const-string v19, "setForceSMIMECertificateInternal() : certPath is null"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_3
    const-string v18, "ExchangeAccountPolicy"

    const-string v19, "setForceSMIMECertificateInternal() : certPassword is null"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x2

    goto :goto_0

    :cond_4
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "accCertID":J
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v12

    .local v12, "resultID":J
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p6

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "intent":Landroid/content/Intent;
    const-string v18, "account_id"

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v18, "cert_path"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v18, "cert_password_id"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v18, "certificate_result_id"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .local v16, "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Landroid/os/UserHandle;-><init>(I)V

    const-string v20, "android.permission.sec.SMIME_CERTIFICATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v10, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEModeFromAction(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, v18

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .local v10, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "S"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v14

    .local v14, "ret":Z
    const-string v18, "ExchangeAccountPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setForceSMIMECertificateInternal() : sendBroadcast success, accId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v14, :cond_5

    const/4 v11, -0x1

    :goto_1
    :try_start_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v14    # "ret":Z
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v18, v11

    goto/16 :goto_0

    .restart local v10    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .restart local v14    # "ret":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .end local v10    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v14    # "ret":Z
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v18, "ExchangeAccountPolicy"

    const-string v19, "setForceSMIMECertificateInternal() : failed. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v11, 0x0

    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v4    # "accCertID":J
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v12    # "resultID":J
    .end local v16    # "token":J
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v18

    .restart local v4    # "accCertID":J
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v12    # "resultID":J
    .restart local v16    # "token":J
    :catchall_1
    move-exception v18

    :try_start_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private setReleaseSMIMECertificateInernal(Landroid/app/enterprise/ContextInfo;JI)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userID":I
    const/4 v8, 0x0

    .local v8, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReleaseSMIMECertificateInernal() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_0
    return v9

    .end local v9    # "ret":I
    .restart local v8    # "ret":Z
    :cond_0
    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    :cond_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z

    move-result v8

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReleaseSMIMECertificateInernal() : release SMIME Encryption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v0, 0x3

    if-ne p4, v0, :cond_4

    :cond_3
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z

    move-result v8

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReleaseSMIMECertificateInernal() : release SMIME Signing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v9, v8

    .restart local v9    # "ret":I
    goto :goto_0
.end method

.method private updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountMData"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "accountId"    # J
    .param p5, "doReCreate"    # Z
    .param p6, "updateField"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .local v4, "accId":J
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "callingUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .local v13, "userID":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v8, "containerId":I
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateAccount() :  userID "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/16 v16, 0x1

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    :try_start_0
    const-string v16, "ExchangeAccountPolicy"

    const-string v17, "updateAccount() : Disabling EAS ExchangeService"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .local v11, "pm":Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/ComponentName;

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v16

    invoke-static {v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v12, "syncMgrCn":Landroid/content/ComponentName;
    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v12, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getCBAAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .local v6, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v16, -0x1

    cmp-long v16, v4, v16

    if-nez v16, :cond_2

    const-string v16, "ExchangeAccountPolicy"

    const-string v17, "Enabling EAS ExchangeService : delete account"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v12, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "alias":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return-wide v4

    .restart local v6    # "alias":Ljava/lang/String;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_0

    :try_start_1
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateAccount() : Sending intent to rename"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    .local v10, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v16

    if-eqz v16, :cond_3

    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string v16, "com.samsung.android.email.RENAME_CERTIFICATE"

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v10    # "intent":Landroid/content/Intent;
    :goto_3
    const-string v16, "accountid"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v16, "alias"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    const-string v18, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v6    # "alias":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v16, "ExchangeAccountPolicy"

    const-string v17, "updateAccount() failed : "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v6    # "alias":Ljava/lang/String;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_3
    :try_start_3
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string v16, "com.android.email.RENAME_CERTIFICATE"

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v10    # "intent":Landroid/content/Intent;
    goto :goto_3

    .end local v6    # "alias":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_4
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto/16 :goto_1

    :catchall_0
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method


# virtual methods
.method public addNewAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 32
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;

    .prologue
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "addNewAccount() EX 2"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1e0

    const/16 v21, 0x3fc

    const/16 v22, 0x3e

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    invoke-virtual/range {v0 .. v31}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .locals 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;
    .param p20, "peakStarttime"    # I
    .param p21, "peakEndtime"    # I
    .param p22, "peakDays"    # I
    .param p23, "offPeak"    # I
    .param p24, "roamingSchedule"    # I
    .param p25, "retrivalSize"    # I
    .param p26, "periodCalendar"    # I
    .param p27, "isNotify"    # Z
    .param p28, "syncContacts"    # I
    .param p29, "syncCalendar"    # I
    .param p30, "certificate_data"    # [B
    .param p31, "certificate_password"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v4, "ExchangeAccountPolicy"

    const-string v5, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v22

    .local v22, "userID":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v11, "containerId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p14

    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p18

    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p19

    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p14, :cond_0

    if-eqz p10, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    :goto_0
    return-wide v12

    :cond_1
    const/4 v4, 0x1

    move/from16 v0, p12

    if-ne v4, v0, :cond_2

    const/4 v4, 0x1

    move/from16 v0, p13

    if-ne v4, v0, :cond_2

    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    goto :goto_0

    :cond_2
    const-string v8, "eas"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p14

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    goto :goto_0

    :cond_3
    const-wide/16 v12, 0x0

    .local v12, "accId":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .local v20, "token":J
    :try_start_0
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNewAccount() EX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v16

    .local v16, "newAccountID":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v18

    .local v18, "newCertificateID":J
    new-instance v15, Landroid/content/Intent;

    const-string v4, "edm.intent.action.internal.CREATE_EMAILACCOUNT"

    invoke-static {v11, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v15, "intent":Landroid/content/Intent;
    const-string v4, "account_id"

    move-wide/from16 v0, v16

    invoke-virtual {v15, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "service"

    const-string v5, "eas"

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "server_name"

    move-object/from16 v0, p14

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user_name"

    move-object/from16 v0, p4

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user_passwd_id"

    move-wide/from16 v0, v16

    invoke-virtual {v15, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "serverPathPrefix"

    move-object/from16 v0, p19

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "use_ssl"

    if-eqz p15, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "use_tsl"

    if-eqz p16, :cond_5

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "trust_all"

    if-eqz p17, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "domain"

    move-object/from16 v0, p5

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "peak_starttime"

    move/from16 v0, p20

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak_endtime"

    move/from16 v0, p21

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak_days"

    move/from16 v0, p22

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak"

    move/from16 v0, p7

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "off_peak"

    move/from16 v0, p23

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "roaming_schedule"

    move/from16 v0, p24

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "period_email"

    move/from16 v0, p6

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "retrival_size"

    move/from16 v0, p25

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "period_calendar"

    move/from16 v0, p26

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "notify"

    move/from16 v0, p27

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "sync_contacts"

    move/from16 v0, p28

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "sync_calendar"

    move/from16 v0, p29

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "signature"

    move-object/from16 v0, p11

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "vibrate_when_silent"

    move/from16 v0, p13

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "vibrate"

    move/from16 v0, p12

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "is_default"

    move/from16 v0, p8

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "certificate_data"

    move-object/from16 v0, p30

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "certificate_password_id"

    move-wide/from16 v0, v18

    invoke-virtual {v15, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v4, v15, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNewAccount() EX : sent intent to Email app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "newAccountID":J
    .end local v18    # "newCertificateID":J
    :goto_4
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v16    # "newAccountID":J
    .restart local v18    # "newCertificateID":J
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_3

    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "newAccountID":J
    .end local v18    # "newCertificateID":J
    :catch_0
    move-exception v14

    .local v14, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : failed. "

    invoke-static {v4, v5, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public addNewAccount_new(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/ExchangeAccount;)J
    .locals 38
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "account"    # Landroid/app/enterprise/ExchangeAccount;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v33

    .local v33, "userID":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v15, "containerId":I
    if-nez p2, :cond_0

    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : Error :: Invalid Account."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    :goto_0
    return-wide v12

    :cond_0
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_storagename:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceUCMPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mDisplayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "displayName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "emailAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mServerAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "serverAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, "protocolVersion":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSenderName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "senderName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSignature:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .local v32, "signature":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEasUser:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "easUser":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEasDomain:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "easDomain":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mServerPassword:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "serverPassword":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mServerPathPrefix:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, "serverPathPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateAlways:Z

    move/from16 v18, v0

    .local v18, "emailNotificationVibrateAlways":Z
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateAlways:Z

    if-nez v4, :cond_2

    const/16 v19, 0x1

    .local v19, "emailNotificationVibrateWhenSilent":Z
    :goto_1
    if-eqz v17, :cond_1

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v7, :cond_1

    if-eqz v28, :cond_1

    if-nez v6, :cond_3

    :cond_1
    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : Error :: Invalid input parameters."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    goto/16 :goto_0

    .end local v19    # "emailNotificationVibrateWhenSilent":Z
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .restart local v19    # "emailNotificationVibrateWhenSilent":Z
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_4

    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    goto/16 :goto_0

    :cond_4
    const-string v8, "eas"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v8

    const-wide/16 v36, 0x0

    cmp-long v4, v8, v36

    if-lez v4, :cond_5

    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount : Error :: Account already exists."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    goto/16 :goto_0

    :cond_5
    const-wide/16 v12, 0x0

    .local v12, "accId":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .local v34, "token":J
    :try_start_0
    const-string v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount() New : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePath:Ljava/lang/String;

    if-eqz v4, :cond_6

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePassWord:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : SMIME Certificate at creation time"

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificareMode:I

    move/from16 v23, v0

    .local v23, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "caller":Ljava/lang/String;
    new-instance v22, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePassWord:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v4, v8, v2}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .local v22, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    .end local v14    # "caller":Ljava/lang/String;
    .end local v22    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v23    # "mode":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v24

    .local v24, "newAccountID":J
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_password:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v26

    .local v26, "newCertificateID":J
    new-instance v21, Landroid/content/Intent;

    const-string v4, "edm.intent.action.internal.CREATE_EMAILACCOUNT"

    invoke-static {v15, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v21, "intent":Landroid/content/Intent;
    const-string v4, "account_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "user_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "service"

    const-string v8, "eas"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "server_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user_passwd_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "serverPathPrefix"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "use_ssl"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mUseSSL:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "use_tsl"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mUseTLS:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "trust_all"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mAcceptAllCertificates:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "domain"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mEasDomain:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "peak_starttime"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakStarttime:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak_endtime"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakEndtime:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak_days"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakDays:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncInterval:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "off_peak"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mOffPeak:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "roaming_schedule"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mRoamingSchedule:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "period_email"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncLookback:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "retrival_size"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mRetrivalSize:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "period_calendar"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeriodCalendar:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "notify"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Landroid/app/enterprise/ExchangeAccount;->mIsNotify:Z

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "sync_contacts"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncContacts:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "sync_calendar"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncCalendar:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "account_name"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "signature"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSignature:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "vibrate_when_silent"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateAlways:Z

    if-nez v4, :cond_a

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "vibrate"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateAlways:Z

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "is_default"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Landroid/app/enterprise/ExchangeAccount;->mIsDefault:Z

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "certificate_data"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_data:[B

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "certificate_password_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_alias:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_storagename:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_alias:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->convertUcmUri(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "alias":Ljava/lang/String;
    if-nez v11, :cond_b

    const-string v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount : Error :: certificate storage name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_storagename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v12, -0x1

    .end local v12    # "accId":J
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v11    # "alias":Ljava/lang/String;
    .restart local v12    # "accId":J
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_5

    .restart local v11    # "alias":Ljava/lang/String;
    :cond_b
    :try_start_1
    const-string v4, "certificate_alias"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .end local v11    # "alias":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v33

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount_new : sent intent to Email app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v21    # "intent":Landroid/content/Intent;
    .end local v24    # "newAccountID":J
    .end local v26    # "newCertificateID":J
    :catch_0
    move-exception v20

    .local v20, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount() NEW : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v20    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public allowEmailSettingsChange(Landroid/app/enterprise/ContextInfo;JZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowEmailSettingsChange() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowEmailSettingsChange() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_0
    return v8

    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    const-string v7, "AllowSettingChange"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowEmailSettingsChange() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , allow  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .restart local v8    # "ret":I
    goto :goto_0
.end method

.method public allowInComingAttachments(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_0
    return v8

    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    const-string v7, "AttachmentEnable"

    move-object v1, p0

    move-wide v4, p3

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , enable  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .restart local v8    # "ret":I
    goto :goto_0
.end method

.method public createAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;
    .param p6, "serverPassword"    # Ljava/lang/String;

    .prologue
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "addNewAccount() EX 1"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "2.5"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    move-object/from16 v18, p6

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v8, "containerId":I
    const/4 v11, 0x0

    .local v11, "ret":Z
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deleteAccount() :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "EmailAddress":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "InComingServerAddress":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v7

    .local v7, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v7, :cond_0

    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deleteAccount_new() : Not valid accId : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .end local v7    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v11    # "ret":Z
    .local v12, "ret":I
    :goto_0
    return v12

    .end local v12    # "ret":I
    .restart local v7    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v11    # "ret":Z
    :cond_0
    iget-object v4, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    iget-object v5, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    .end local v7    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_1
    if-eqz v4, :cond_1

    if-nez v5, :cond_5

    :cond_1
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deleteAccount() : no Inforamtion for accId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    .local v6, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v6, :cond_3

    iget-boolean v0, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    move/from16 v16, v0

    if-nez v16, :cond_4

    :cond_3
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deleteAccount() : No exist accId : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_4
    iget-object v4, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    goto :goto_1

    .end local v6    # "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_5
    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deleteAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .restart local v12    # "ret":I
    goto/16 :goto_0

    .end local v12    # "ret":I
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .local v13, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    :try_start_0
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deleteAccount() : accId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " , userId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string v16, "edm.intent.action.internal.DELETE_EMAILACCOUNT"

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, "intent":Landroid/content/Intent;
    const-string v16, "account_id"

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v16, "user_id"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v16, "service"

    const-string v17, "eas"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v16, "server_name"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    const-string v18, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10    # "intent":Landroid/content/Intent;
    :goto_2
    move v12, v11

    .restart local v12    # "ret":I
    goto/16 :goto_0

    .end local v12    # "ret":I
    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v16, "ExchangeAccountPolicy"

    const-string v17, "deleteAccount() : failed. "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method public getAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ExchangeAccountPolicy"

    const-string v5, " getAccountCertificatePassword calls from Profile return default value"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    const-string v5, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v4, p1, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    const/4 v3, 0x0

    .local v3, "password":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "caller":Ljava/lang/String;
    :goto_1
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "getAccountCertificatePassword() success"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "getAccountCertificatePassword() failed"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAccountDetails(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/Account;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userID":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAccountDetails() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,  userID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "ret":Landroid/app/enterprise/Account;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v1

    .local v1, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Landroid/app/enterprise/Account;

    move-result-object v3

    .end local v1    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {p1, p2, p3, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, v2, v0, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;

    move-result-object v3

    goto :goto_0
.end method

.method public getAccountEmailPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ExchangeAccountPolicy"

    const-string v5, " getAccountEmailPassword calls from Profile return default value"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    const-string v5, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v4, p1, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    const/4 v3, 0x0

    .local v3, "password":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "caller":Ljava/lang/String;
    :goto_1
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "getAccountEmailPassword() success"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "getAccountEmailPassword() failed"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "activeSyncHost"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "eas"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v8

    .local v8, "ret":J
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountId() : = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,  easDomain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", easUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activeSyncHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8
.end method

.method public getAllEASAccounts(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/Account;
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v6, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .local v14, "userID":I
    const-string v15, "ExchangeAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllEASAccounts() : userId = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/Account;>;"
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .local v4, "accountlist":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v4, :cond_1

    move-object v5, v4

    .local v5, "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v12, :cond_2

    aget-object v3, v5, v8

    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Landroid/app/enterprise/Account;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v3    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v5    # "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    :cond_1
    const-string v15, "ExchangeAccountPolicy"

    const-string v16, "getAllEASAccounts_new( ): fail to get list."

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "accountlist":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_2
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Landroid/app/enterprise/Account;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/app/enterprise/Account;

    check-cast v15, [Landroid/app/enterprise/Account;

    :goto_2
    return-object v15

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIds(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)[J

    move-result-object v9

    .local v9, "ids":[J
    if-eqz v9, :cond_2

    move-object v5, v9

    .local v5, "arr$":[J
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_3
    if-ge v8, v12, :cond_2

    aget-wide v10, v5, v8

    .local v10, "id":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v10, v11, v15, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .local v2, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v2, :cond_4

    iget-boolean v15, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v2    # "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v5    # "arr$":[J
    .end local v8    # "i$":I
    .end local v9    # "ids":[J
    .end local v10    # "id":J
    .end local v12    # "len$":I
    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/lang/Exception;
    const-string v15, "ExchangeAccountPolicy"

    const-string v16, "getAllEASAccounts() : failed. "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_5
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public getDeviceId(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .local v14, "userID":I
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceId() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() failed : Email App is disabled."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .local v11, "sync":Ljava/lang/Object;
    monitor-enter v11

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .local v12, "token":J
    :try_start_1
    new-instance v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    invoke-direct {v1, p0, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V

    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    const/4 v6, 0x0

    .local v6, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.samsung.android.email.GET_DEVICEID"

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    const/4 v10, 0x0

    .local v10, "retAction":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "edm.intent.action.internal.GET_DEVICEID_RESULT"

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, v9, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() : sendBroadcast "

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() : Device id is still null, waiting 5 seconds..."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v11, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "action":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "retAction":Ljava/lang/String;
    :goto_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .restart local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v6    # "action":Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v0, "com.android.email.GET_DEVICEID"

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .restart local v10    # "retAction":Ljava/lang/String;
    :cond_4
    const-string v0, "android.intent.action.enterprise.GET_DEVICEID"

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() Inturrupted."

    invoke-static {v0, v2, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "retAction":Ljava/lang/String;
    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() : failed. "

    invoke-static {v0, v2, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v12    # "token":J
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .restart local v12    # "token":J
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public getForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "ForceSmimeCertForEncryption"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "ForceSmimeCertForSigning"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "IncomingAttachmentSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "MaxCalendarAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "MaxEmailAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "MaxEmailBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "MaxEmailHTMLBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "ReqEncryptSmime"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "ReqSigSmime"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSMIMECertificateAlias(Landroid/app/enterprise/ContextInfo;JI)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSMIMECertificateAlias() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    if-nez p4, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {p1, p2, p3, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-ne p4, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p1, p2, p3, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ExchangeAccountPolicy"

    const-string v3, "getSMIMECertificateAlias() : failed. "

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSMIMECertificateAlias() : accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0
.end method

.method public isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "AllowNotificationChange"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "AllowSettingChange"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isIncomingAttachmentsAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "AttachmentEnable"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 11
    .param p1, "uid"    # I

    .prologue
    const/4 v10, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .local v7, "userId":I
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .local v2, "columns":[Ljava/lang/String;
    const-string v8, "AccountId"

    aput-object v8, v2, v10

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCert"

    aput-object v9, v2, v8

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvValues":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .local v5, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .local v4, "email":Landroid/content/ContentValues;
    const-string v8, "ForceSmimeCert"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    const-string v8, "AccountId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "accId":J
    invoke-direct {p0, v10, v0, v1, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    goto :goto_0

    .end local v0    # "accId":J
    .end local v4    # "email":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "onPreAdminRemoval() : "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .local v7, "userId":I
    const-string v8, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ExchangeAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .local v2, "columns":[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "AccountId"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCert"

    aput-object v9, v2, v8

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvValues":Landroid/content/ContentValues;
    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .local v5, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .local v4, "email":Landroid/content/ContentValues;
    const-string v8, "ForceSmimeCert"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    const-string v8, "AccountId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "accId":J
    invoke-direct {p0, p1, v0, v1, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    goto :goto_0

    .end local v0    # "accId":J
    .end local v4    # "email":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removePendingAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .local v10, "userID":I
    const-string v12, "ExchangeAccountPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removePendingAccount() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v12, "edm.intent.action.internal.DELETE_NOT_VALIDATED_EMAILACCOUNT"

    invoke-static {v3, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "send":Landroid/content/Intent;
    const-string v12, "user_id"

    move-object/from16 v0, p2

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "service"

    const-string v13, "eas"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "server_name"

    move-object/from16 v0, p5

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "user_name"

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "domain"

    move-object/from16 v0, p4

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v10}, Landroid/os/UserHandle;-><init>(I)V

    const-string v14, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v12, v7, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v7    # "send":Landroid/content/Intent;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .local v11, "userId":I
    if-nez v11, :cond_0

    new-instance v6, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v12, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v6, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "accountInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_1
    const-string v12, "ExchangeAccount"

    const-string v13, "removePendingAccount"

    invoke-virtual {v6, v12, v13, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    const-string v12, "ExchangeAccountPolicy"

    const-string v13, "removePendingAccount calling gearPolicyManager  "

    invoke-static {v12, v13}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "accountInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    const-string v12, "ExchangeAccountPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removePendingAccount() : emailAddress = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", easUser = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", easDomain = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", serverAddress = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v11    # "userId":I
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v12, "ExchangeAccountPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removePendingAccount() : fail to remove pending EAS Account. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .restart local v2    # "accountInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v11    # "userId":I
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendAccountsChangedBroadcast(Landroid/app/enterprise/ContextInfo;)V
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .local v4, "msg":Landroid/os/Message;
    iput v1, v4, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg2:I

    iget-boolean v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    if-nez v8, :cond_1

    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "sendAccountsChangedBroadcast()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v5, :cond_0

    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v8, "ExchangeAccount"

    const-string v9, "sendAccountsChangedBroadcast"

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "sendAccountsChangedBroadcast calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "sendAccountsChangedBroadcast() : Delayed Broadcast"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3a98

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v4    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v4    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setAcceptAllCertificates(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAcceptAllCertificates() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_0
    :goto_0
    return v6

    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_1
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v6

    goto :goto_0

    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_3

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAcceptAllCertificates() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    const-wide/16 v8, -0x1

    const-string v7, "trust_all"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setAccountBaseParameters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "setAccountBaseParameters() : deprecated "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v8, p1, v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .local v0, "callID":J
    if-nez p2, :cond_0

    move-wide v0, v6

    .end local v0    # "callID":J
    :goto_0
    return-wide v0

    .restart local v0    # "callID":J
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "C#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "setAccountCertificatePassword() success"

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "setAccountCertificatePassword() failed"

    invoke-static {v8, v9, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v6

    goto :goto_0
.end method

.method public setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "ExchangeAccountPolicy"

    const-string v9, " setAccountEmailPassword calls from Profile return default value"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v6

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v8, p1, v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .local v0, "callID":J
    if-nez p2, :cond_1

    move-wide v0, v6

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "E#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "setAccountEmailPassword() success"

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "setAccountEmailPassword() failed"

    invoke-static {v8, v9, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v6

    goto :goto_0
.end method

.method public setAccountName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAccountName() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    .local v12, "ret":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setAccountName() : accountName is null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .end local v12    # "ret":Z
    .local v13, "ret":I
    :goto_0
    return v13

    .end local v13    # "ret":I
    .restart local v12    # "ret":Z
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAccountName_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .restart local v13    # "ret":I
    goto :goto_0

    .end local v13    # "ret":I
    :cond_1
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v12

    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_1
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAccountName() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", accountName ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , accId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .restart local v13    # "ret":I
    goto :goto_0

    .end local v13    # "ret":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_3

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAccountName() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .restart local v13    # "ret":I
    goto/16 :goto_0

    .end local v13    # "ret":I
    :cond_3
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string v11, "account_name"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_4

    const/4 v12, 0x1

    :goto_2
    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public setAlwaysVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_0
    :goto_0
    return v6

    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_1
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v6

    goto :goto_0

    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_3

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlwaysVibrateOnEmailNotification() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    const-wide/16 v8, -0x1

    const-string v7, "vibrate"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAsDefaultAccount() :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_0

    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAsDefaultAccount_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .end local v2    # "ret":I
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v1    # "ret":Z
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_1
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAsDefaultAccount() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .restart local v2    # "ret":I
    goto :goto_0

    .end local v2    # "ret":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v1

    goto :goto_1
.end method

.method public setClientAuthCert(Landroid/app/enterprise/ContextInfo;[BLjava/lang/String;J)V
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certData"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v10, "ExchangeAccountPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setClientAuthCert() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v4, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userID":I
    move-wide/from16 v0, p4

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "ExchangeAccountPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setClientAuthCert() : No exist accId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-wide/16 v10, 0x1

    cmp-long v10, p4, v10

    if-gez v10, :cond_2

    :cond_1
    const-string v10, "ExchangeAccountPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setClientAuthCert() : error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    const/4 v10, 0x1

    :try_start_0
    iput-boolean v10, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    iget-object v10, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v6, 0x0

    .local v6, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v10, "com.samsung.android.email.INSTALL_CERTIFICATE"

    invoke-static {v4, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "accCertID":J
    const-string v10, "data"

    move-object/from16 v0, p2

    invoke-virtual {v6, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v10, "accountid"

    move-wide/from16 v0, p4

    invoke-virtual {v6, v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v10, "password_id"

    invoke-virtual {v6, v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v12, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v10, v6, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "accCertID":J
    :cond_3
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v10, "com.android.email.INSTALL_CERTIFICATE"

    invoke-static {v4, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v6    # "intent":Landroid/content/Intent;
    goto :goto_1

    .end local v6    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "ExchangeAccountPolicy"

    const-string v11, "setClientAuthCert() : failed"

    invoke-static {v10, v11, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public setDataSyncs(Landroid/app/enterprise/ContextInfo;ZZZZJ)Z
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "syncCalendar"    # Z
    .param p3, "syncContacts"    # Z
    .param p4, "syncTasks"    # Z
    .param p5, "syncNotes"    # Z
    .param p6, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v5, "containerId":I
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setDataSyncs() : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    .local v7, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .local v10, "userID":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v11, p1, v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v2, :cond_0

    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setSSL_new() : No exist accId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .end local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_0
    return v11

    .restart local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_0
    move/from16 v0, p3

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    move/from16 v0, p2

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    move/from16 v0, p4

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    move/from16 v0, p5

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v7

    .end local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_1
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setDataSyncs() : = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,  syncCalendar = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", syncContacts = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", accid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v7

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_2

    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setSyncSchedules() : No exist accId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    new-instance v4, Landroid/accounts/Account;

    iget-object v11, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v12, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "acct":Landroid/accounts/Account;
    const-string v11, "com.android.contacts"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    const-string v11, "com.android.contacts"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p3

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    const-string v11, "com.android.calendar"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    const-string v11, "com.android.calendar"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p2

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    const-string v11, "tasks"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    const-string v11, "tasks"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p4

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    const-string v11, "note"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    const-string v11, "note"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p5

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .end local v4    # "acct":Landroid/accounts/Account;
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "setDataSyncs() : "

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public setEmailNotificationsState(Landroid/app/enterprise/ContextInfo;JZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEmailNotificationsState() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_0
    return v8

    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    const-string v7, "AllowNotificationChange"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEmailNotificationsState() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , enable  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .restart local v8    # "ret":I
    goto :goto_0
.end method

.method public setForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    const-string v6, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setForceSMIMECertificateAlias(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "storageName"    # Ljava/lang/String;
    .param p5, "alias"    # Ljava/lang/String;
    .param p6, "type"    # I

    .prologue
    const-string v14, "ExchangeAccountPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", alias = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", type = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p6

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "ExchangeAccountPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setForceSMIMECertificateAlias() : credential storage name = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v14, "ExchangeAccountPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceUCMPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .local v11, "userID":I
    const/4 v7, 0x0

    .local v7, "ret":Z
    const/4 v14, 0x1

    move/from16 v0, p6

    if-eq v0, v14, :cond_1

    if-eqz p6, :cond_1

    const-string v14, "ExchangeAccountPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setForceSMIMECertificateAlias() : invalid type : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p6

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v7

    .end local v7    # "ret":Z
    .local v10, "ret":I
    :goto_0
    return v10

    .end local v10    # "ret":I
    .restart local v7    # "ret":Z
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "ExchangeAccountPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setForceSMIMECertificateAlias() : No exist accId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v7

    .restart local v10    # "ret":I
    goto :goto_0

    .end local v10    # "ret":I
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "token":J
    if-eqz p5, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->convertUcmUri(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_3

    const-string v14, "ExchangeAccountPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setForceSMIMECertificateAlias() : storage name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " does not exist!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v10, v7

    .restart local v10    # "ret":I
    goto :goto_0

    .end local v10    # "ret":I
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v8

    .local v8, "resultID":J
    new-instance v5, Landroid/content/Intent;

    const-string v14, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "intent":Landroid/content/Intent;
    const-string v14, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v5, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v14, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_NAME"

    move-object/from16 v0, p5

    invoke-virtual {v5, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    move/from16 v0, p6

    invoke-virtual {v5, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "certificate_result_id"

    invoke-virtual {v5, v14, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE"

    move-object/from16 v0, p4

    invoke-virtual {v5, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    new-instance v6, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    const/4 v14, 0x0

    const/4 v15, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v6, v0, v1, v14, v15}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .local v6, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "S"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v6}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string v16, "android.permission.sec.SMIME_CERTIFICATE"

    move-object/from16 v0, v16

    invoke-virtual {v14, v5, v15, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v8    # "resultID":J
    :goto_1
    const-string v14, "ExchangeAccountPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", ret = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v7

    .restart local v10    # "ret":I
    goto/16 :goto_0

    .end local v10    # "ret":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v14, "ExchangeAccountPolicy"

    const-string v15, "setForceSMIMECertificateAlias() : failed. "

    invoke-static {v14, v15, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method public setForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    const-string v6, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    const-string v6, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_SIGNING"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIncomingAttachmentsSize() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .local v9, "userId":I
    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIncomingAttachmentsSize() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_0
    return v8

    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    if-gez p2, :cond_1

    const-string v1, "ExchangeAccountPolicy"

    const-string v4, "setIncomingAttachmentsSize() : Error :: invalid parameter."

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .restart local v8    # "ret":I
    goto :goto_0

    .end local v8    # "ret":I
    :cond_1
    const-string v7, "IncomingAttachmentSize"

    move-object v1, p0

    move-wide v4, p3

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIncomingAttachmentsSize() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , size  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .restart local v8    # "ret":I
    goto :goto_0
.end method

.method public setMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxCalendarAgeFilter() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .local v17, "userID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxCalendarAgeFilter() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x4

    move/from16 v0, p2

    if-lt v0, v5, :cond_1

    const/4 v5, 0x7

    move/from16 v0, p2

    if-le v0, v5, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxCalendarAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const-string v11, "MaxCalendarAgeFilter"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxCalendarAgeFilter() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v16

    .local v16, "mdmPolicy":I
    iget v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    move/from16 v0, v16

    if-le v5, v0, :cond_5

    if-eqz v16, :cond_5

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxCalendarAgeFilter() : need to change Account value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v16

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    const-wide/16 v18, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v18, v8

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public setMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .local v17, "userID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailAgeFilter() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    if-ltz p2, :cond_1

    const/4 v5, 0x5

    move/from16 v0, p2

    if-le v0, v5, :cond_2

    :cond_1
    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const-string v11, "MaxEmailAgeFilter"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailAgeFilter() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v16

    .local v16, "mdmPolicy":I
    iget v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    move/from16 v0, v16

    if-le v5, v0, :cond_5

    if-eqz v16, :cond_5

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailAgeFilter() : need to change Account value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v16

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    const-wide/16 v18, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v18, v8

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public setMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 29
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailBodyTruncationSize() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v24

    .local v24, "userID":I
    const/16 v21, 0x0

    .local v21, "ret":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailBodyTruncationSize() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .end local v21    # "ret":Z
    .local v22, "ret":I
    :goto_0
    return v22

    .end local v22    # "ret":I
    .restart local v21    # "ret":Z
    :cond_0
    if-gez p2, :cond_1

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto :goto_0

    .end local v22    # "ret":I
    :cond_1
    const-string v11, "MaxEmailBodyTruncationSize"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto :goto_0

    .end local v22    # "ret":I
    :cond_2
    const/16 v21, 0x1

    const/16 v17, 0x1

    .local v17, "isMDMallowed":Z
    :try_start_0
    const-string v5, "email_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailPolicy;

    move-result-object v19

    .local v19, "mService":Landroid/app/enterprise/IEmailPolicy;
    if-eqz v19, :cond_5

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Landroid/app/enterprise/IEmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v20

    .local v20, "mdmPolicy":I
    iget-boolean v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    if-nez v5, :cond_7

    if-nez v17, :cond_7

    if-eqz v20, :cond_7

    const/16 v18, 0x0

    .local v18, "isupdate":Z
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_3

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .local v23, "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    const/16 v18, 0x1

    .end local v23    # "setValue":I
    :cond_3
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_4

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .restart local v23    # "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailBodyTruncationSize() : need to change Account value2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    const/16 v18, 0x1

    .end local v23    # "setValue":I
    :cond_4
    if-eqz v18, :cond_7

    const-wide/16 v26, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v26, v8

    if-eqz v5, :cond_6

    const/16 v21, 0x1

    :goto_2
    if-nez v21, :cond_7

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailBodyTruncationSize() : fail to update Email."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto/16 :goto_0

    .end local v18    # "isupdate":Z
    .end local v20    # "mdmPolicy":I
    .end local v22    # "ret":I
    .restart local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_1

    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :catch_0
    move-exception v16

    .local v16, "ex":Landroid/os/RemoteException;
    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailBodyTruncationSize() : Failed talking with email policy"

    move-object/from16 v0, v16

    invoke-static {v5, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v17, 0x1

    goto/16 :goto_1

    .end local v16    # "ex":Landroid/os/RemoteException;
    .restart local v18    # "isupdate":Z
    .restart local v20    # "mdmPolicy":I
    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    .end local v18    # "isupdate":Z
    :cond_7
    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailBodyTruncationSize() : success."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto/16 :goto_0
.end method

.method public setMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 29
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailHTMLBodyTruncationSize() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v24

    .local v24, "userID":I
    const/16 v21, 0x0

    .local v21, "ret":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailHTMLBodyTruncationSize() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .end local v21    # "ret":Z
    .local v22, "ret":I
    :goto_0
    return v22

    .end local v22    # "ret":I
    .restart local v21    # "ret":Z
    :cond_0
    if-gez p2, :cond_1

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailHTMLBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto :goto_0

    .end local v22    # "ret":I
    :cond_1
    const-string v11, "MaxEmailHTMLBodyTruncationSize"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailHTMLBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto :goto_0

    .end local v22    # "ret":I
    :cond_2
    const/16 v21, 0x1

    const/16 v17, 0x1

    .local v17, "isMDMallowed":Z
    :try_start_0
    const-string v5, "email_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailPolicy;

    move-result-object v19

    .local v19, "mService":Landroid/app/enterprise/IEmailPolicy;
    if-eqz v19, :cond_5

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Landroid/app/enterprise/IEmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v20

    .local v20, "mdmPolicy":I
    iget-boolean v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    if-eqz v5, :cond_7

    if-eqz v17, :cond_7

    if-eqz v20, :cond_7

    const/16 v18, 0x0

    .local v18, "isupdate":Z
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_3

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .local v23, "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    const/16 v18, 0x1

    .end local v23    # "setValue":I
    :cond_3
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_4

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .restart local v23    # "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    const/16 v18, 0x1

    .end local v23    # "setValue":I
    :cond_4
    if-eqz v18, :cond_7

    const-wide/16 v26, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v26, v8

    if-eqz v5, :cond_6

    const/16 v21, 0x1

    :goto_2
    if-nez v21, :cond_7

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailHTMLBodyTruncationSize() : fail to update Email."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto/16 :goto_0

    .end local v18    # "isupdate":Z
    .end local v20    # "mdmPolicy":I
    .end local v22    # "ret":I
    .restart local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_1

    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :catch_0
    move-exception v16

    .local v16, "ex":Landroid/os/RemoteException;
    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailHTMLBodyTruncationSize() : Failed talking with email policy"

    move-object/from16 v0, v16

    invoke-static {v5, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v17, 0x1

    goto/16 :goto_1

    .end local v16    # "ex":Landroid/os/RemoteException;
    .restart local v18    # "isupdate":Z
    .restart local v20    # "mdmPolicy":I
    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    .end local v18    # "isupdate":Z
    :cond_7
    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailHTMLBodyTruncationSize() : success."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto/16 :goto_0
.end method

.method public setPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v5, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .local v12, "userID":I
    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPassword() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    .local v15, "ret":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "setPassword() : Invalid input parameter."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v6, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_1

    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPassword_new() : No exist accId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v6, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v6

    goto :goto_0

    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v13

    .local v13, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v13, :cond_3

    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "setPassword() : accountMData is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move v6, v15

    goto :goto_0

    :catch_0
    move-exception v14

    .local v14, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "setPassword() : Exception while setPassword"

    invoke-static {v6, v7, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setPastDaysToSync(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pastDaysToSync"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPastDaysToSync() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    .local v12, "ret":Z
    const/4 v5, 0x1

    move/from16 v0, p2

    if-gt v5, v0, :cond_0

    const/4 v5, 0x6

    move/from16 v0, p2

    if-ge v5, v0, :cond_1

    :cond_0
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setPastDaysToSync : Error :: Invalid input parameter."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .end local v12    # "ret":Z
    .local v13, "ret":I
    :goto_0
    return v13

    .end local v13    # "ret":I
    .restart local v12    # "ret":Z
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_2

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPastDaysToSync_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .restart local v13    # "ret":I
    goto :goto_0

    .end local v13    # "ret":I
    :cond_2
    move/from16 v0, p2

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v12

    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_1
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPastDaysToSync() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , pastDaysToSync = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , accId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .restart local v13    # "ret":I
    goto :goto_0

    .end local v13    # "ret":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_4

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPastDaysToSync() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .restart local v13    # "ret":I
    goto/16 :goto_0

    .end local v13    # "ret":I
    :cond_4
    move/from16 v0, p2

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string v11, "period_email"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_5

    const/4 v12, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public setProtocolVersion(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "protocolVersion"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "setProtocolVersion() : deprecated "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setReleaseSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInernal(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setReleaseSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInernal(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setReleaseSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInernal(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;JZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireEncryptedSMIMEMessages () : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireEncryptedSMIMEMessages() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_0
    return v8

    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    const-string v7, "ReqEncryptSmime"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireEncryptedSMIMEMessages () : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,  accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .restart local v8    # "ret":I
    goto :goto_0
.end method

.method public setRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;JZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireSignedSMIMEMessages() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireSignedSMIMEMessages() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_0
    return v8

    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    const-string v7, "ReqSigSmime"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireSignedSMIMEMessages() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,  accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .restart local v8    # "ret":I
    goto :goto_0
.end method

.method public setSSL(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSSL() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSSL_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_0
    :goto_0
    return v6

    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_1
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v6

    goto :goto_0

    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_3

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSSL() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    const-wide/16 v8, -0x1

    const-string v7, "use_ssl"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setSenderName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "senderName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSenderName() :  deprecated , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setSignature(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSignature() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v12, "containerId":I
    const/4 v13, 0x0

    .local v13, "ret":Z
    if-nez p2, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setSignature() : signature is null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSignature_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v13

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v5

    goto :goto_0

    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_3

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSignature() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v13

    goto :goto_0

    :cond_3
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string v11, "signature"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_4

    const/4 v13, 0x1

    :goto_1
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSignature() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , signature = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , accId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v13

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public setSilentVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSilentVibrateOnEmailNotification() : deprecated. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setSyncInterval(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "syncInterval"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSyncInterval() : deprecated , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setSyncPeakTimings(Landroid/app/enterprise/ContextInfo;IIIJ)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "peakDays"    # I
    .param p3, "peakStartMinute"    # I
    .param p4, "peakEndMinute"    # I
    .param p5, "accId"    # J

    .prologue
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncPeakTimings() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v12, 0x0

    .local v12, "ret":Z
    if-ltz p2, :cond_0

    const/16 v5, 0x7f

    move/from16 v0, p2

    if-le v0, v5, :cond_1

    :cond_0
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setSyncPeakTimings() : peakDays is invalid"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .end local v12    # "ret":Z
    .local v13, "ret":I
    :goto_0
    return v13

    .end local v13    # "ret":I
    .restart local v12    # "ret":Z
    :cond_1
    if-ltz p3, :cond_2

    const/16 v5, 0x5a0

    move/from16 v0, p3

    if-le v0, v5, :cond_3

    :cond_2
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setSyncPeakTimings() : peakStartMinute is invalid"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .restart local v13    # "ret":I
    goto :goto_0

    .end local v13    # "ret":I
    :cond_3
    if-ltz p4, :cond_4

    const/16 v5, 0x5a0

    move/from16 v0, p4

    if-le v0, v5, :cond_5

    :cond_4
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setSyncPeakTimings() : peakEndMinute is invalid"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .restart local v13    # "ret":I
    goto :goto_0

    .end local v13    # "ret":I
    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_6

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSSL_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .restart local v13    # "ret":I
    goto :goto_0

    .end local v13    # "ret":I
    :cond_6
    move/from16 v0, p2

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    move/from16 v0, p3

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    move/from16 v0, p4

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v12

    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_1
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncPeakTimings() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , peakDays ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mPeakStartMinute = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", peakEndMinute = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", accid = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .restart local v13    # "ret":I
    goto/16 :goto_0

    .end local v13    # "ret":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_8

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncPeakTimings() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .restart local v13    # "ret":I
    goto/16 :goto_0

    .end local v13    # "ret":I
    :cond_8
    move/from16 v0, p2

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    move/from16 v0, p3

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    move/from16 v0, p4

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string v11, "peak_days"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_9

    const/4 v12, 0x1

    :goto_2
    goto/16 :goto_1

    :cond_9
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public setSyncSchedules(Landroid/app/enterprise/ContextInfo;IIIJ)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "peakSyncSchedule"    # I
    .param p3, "offPeakSyncSchedule"    # I
    .param p4, "roamingSyncSchedule"    # I
    .param p5, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncSchedules() :  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    .local v12, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncSchedules_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v12    # "ret":Z
    .local v13, "ret":I
    :goto_0
    return v13

    .end local v13    # "ret":I
    .restart local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v12    # "ret":Z
    :cond_0
    move/from16 v0, p2

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    move/from16 v0, p3

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    move/from16 v0, p4

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v12

    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_1
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncSchedules() : = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ,  peakSyncSchedule = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", offPeakSyncSchedule = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", roamingSyncSchedule = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", accid = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .restart local v13    # "ret":I
    goto :goto_0

    .end local v13    # "ret":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_2

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncSchedules() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .restart local v13    # "ret":I
    goto/16 :goto_0

    .end local v13    # "ret":I
    :cond_2
    move/from16 v0, p2

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    move/from16 v0, p3

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    iput v5, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string v11, "peak"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_4

    const/4 v12, 0x1

    :goto_3
    goto/16 :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
