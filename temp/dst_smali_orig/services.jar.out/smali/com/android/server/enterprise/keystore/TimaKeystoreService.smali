.class public Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.super Lcom/sec/enterprise/knox/keystore/ITimaKeystore$Stub;
.source "TimaKeystoreService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "defaultpackage"

.field private static final FIPS_TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/fips_tima_keystore/"

.field private static final KNOX_KEYSTORE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/tima_keystore/"


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Landroid/os/PersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    const-string v0, "TimaKeystoreService"

    sput-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/keystore/ITimaKeystore$Stub;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "tima"

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TIMA_SERVICE:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "TimaKeystoreService Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaMgr:Landroid/os/PersonaManager;

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaMgr:Landroid/os/PersonaManager;

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->setupIntentFilters()V

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_2

    :try_start_0
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "Called TIMA service getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private deletePackageRecord(ILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_0
    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "uid"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "pkgName"

    aput-object v6, v1, v5

    .local v1, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "sUid":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const/4 v5, 0x1

    aput-object p2, v3, v5

    .local v3, "sValues":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "TimaKeystorePolicy"

    invoke-virtual {v5, v6, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sUid":Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deletePackageRecord() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deletePackageRecord(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pkgName"

    aput-object v5, v1, v4

    .local v1, "sColumns":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .local v2, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "TimaKeystorePolicy"

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deletePackageRecord() failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "pkgName"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "whereValues":Landroid/content/ContentValues;
    const-string v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "pkgName"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "TimaKeystorePolicy"

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "whereValues":Landroid/content/ContentValues;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertOrUpdatePackageRecord() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private removeUserKeyDirectory(Ljava/io/File;)Z
    .locals 6
    .param p1, "path"    # Ljava/io/File;

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v5

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_2
    return v5

    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private setupIntentFilters()V
    .locals 5

    .prologue
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v4, "in setupIntentFilters"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    .local v2, "receiver":Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "addRemoveUserFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method


# virtual methods
.method public enableTimaKeystore(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v5, "in enableTimaKeystore"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    iget-boolean v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v5, "enableTimaKeystore - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .local v2, "userId":I
    const-string v4, "defaultpackage"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v5, "enableTimaKeystore: deletePackageRecord failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "caller":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4, v0, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .end local v0    # "caller":Ljava/lang/String;
    .end local v2    # "userId":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v5, "enableTimaKeystore() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isTimaKeyStoreDefaultForContainer(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, "ret":Z
    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v5, "in isTimaKeyStoreDefaultForContainer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v5, "isTimaKeyStoreDefaultForContainer - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v3

    .end local v2    # "ret":Z
    :cond_2
    :goto_0
    return v2

    .restart local v2    # "ret":Z
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const v5, 0x186a0

    div-int/2addr v4, v5

    if-le v4, v1, :cond_4

    .local v1, "isUserContainer":Z
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v1    # "isUserContainer":Z
    :cond_4
    move v1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTimaKeyStoreDefaultForContainer() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTimaKeyStoreDefaultForContainer returning - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isTimaKeystoreEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v3, "in isTimaKeystoreEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v2, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "isTimaKeystoreEnabled - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binder.getCallingPid() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Binder.getCallingUid()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_5
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v5, "knox_timakeystore_policy"

    const-string v6, "isTimaKeystoreEnabled"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isTimaKeystoreEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .local v8, "ret":Z
    sget-boolean v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v12, "in isTimaKeystoreEnabledForPackage"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v11, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v11, :cond_2

    sget-boolean v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v12, "isTimaKeystoreEnabledForPackage - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v10

    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .local v9, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .local v6, "pm":Landroid/content/pm/IPackageManager;
    const/16 v10, 0x80

    invoke-interface {v6, p2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "enabled"

    aput-object v11, v1, v10

    .local v1, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "TimaKeystorePolicy"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v1, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v2, 0x0

    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .local v4, "isEnabled":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v10, "enabled"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "isEnabled":Z
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_4
    if-nez v8, :cond_5

    if-eqz v0, :cond_5

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5

    const/4 v8, 0x1

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9    # "userId":I
    :cond_5
    :goto_1
    sget-boolean v10, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isTimaKeystoreEnabledForPackage returning - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v10, v8

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isTimaKeystoreEnabledForPackage() failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .local v6, "ret":Z
    sget-boolean v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v9, "in isTimaKeystoreEnabledInDB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v8, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v8, :cond_2

    sget-boolean v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v9, "isTimaKeystoreEnabledInDB - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x1

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "enabled"

    aput-object v8, v0, v7

    .local v0, "columns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "TimaKeystorePolicy"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v1, 0x0

    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, "isEnabled":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v7, "enabled"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "isEnabled":Z
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_4
    :goto_1
    sget-boolean v7, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isTimaKeystoreEnabledInDB returning - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v7, v6

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isTimaKeystoreEnabledInDB() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
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

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
