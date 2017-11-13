.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.super Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    }
.end annotation


# static fields
.field private static final ALIASACCESSIBLE:I = 0x1

.field private static final ALIASINACCESSIBLE:I = 0x0

.field private static final ALIASUNKNOWN:I = 0x2

.field private static final BOOT_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.boot"

.field private static final CMC_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmc"

.field private static final CMP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmp"

.field private static final CREDENTIAL_AGENT_INTENT:Ljava/lang/String; = "com.samsung.ucm.agent"

.field private static final CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

.field private static final CREDENTIAL_AGENT_PERMISSION:Ljava/lang/String; = "com.samsung.ucm.permission.agent"

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final ESE_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.ese"

.field private static final EVENT_LICENSE_ACTIVATE:I = 0x1

.field private static final EVENT_LICENSE_EXPIRED:I = 0x2

.field private static final KNOX_UCSM_PLUGIN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

.field private static final MSG_CREDENTIAL_STORAGE_AVAILABLE:I = 0x3

.field private static final MSG_CREDENTIAL_STORAGE_CHANGED:I = 0x2

.field private static final MSG_PACKAGE_LICENSE_UPDATE:I = 0x4

.field private static final MSG_REFRESH_ACTIVE_AGENTS:I = 0x1

.field private static final MSG_REFRESH_APPLET_INFO:I = 0x5

.field private static final ODE_CONFIG_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final SCEP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.scep"

.field private static final STORAGE_CONFIG_PATH:Ljava/lang/String; = "/data/system"

.field private static final TAG:Ljava/lang/String; = "UcmService"

.field private static final UCS_ODE_CHECK_PROPERTY:Ljava/lang/String; = "persist.security.ucs"

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private activeAgentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public bUseBlockingQueue:Z

.field private certEnrollSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final interfaceQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppletsInfoLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPersistentAppletInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentAppletInfoFile:Landroid/util/AtomicFile;

.field private final mPersistentServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentServicesFile:Landroid/util/AtomicFile;

.field private mPersistentServicesFileDidNotExist:Z

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

.field private final mServicesLock:Ljava/lang/Object;

.field private mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

.field private mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

.field private pinpadConn:Landroid/content/ServiceConnection;

.field private pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

.field private test_status_for_ode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ucm.agent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;-><init>()V

    iput-boolean v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bUseBlockingQueue:Z

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    invoke-direct {v4, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;

    invoke-direct {v4, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/ucm/ucmservice/PolicyManager;

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    new-instance v4, Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-direct {v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .local v0, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "system"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "registered_ucm_services"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "syncDir":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "com.samsung.ucm.agent.xml"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system"

    const-string v7, "appletsConfig.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;

    invoke-direct {v5, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bUseBlockingQueue:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bindUCSPinpadService()V

    :cond_0
    const-string v4, "ro.crypto.state"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "unencrypted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "vold.decrypt"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "trigger_restart_framework"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "vold.decrypt"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "trigger_reset_main"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const-string v4, "persist.security.ucs"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ro.boot.ucs_mode"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateKeyguardConfig()V

    :cond_3
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v5, "com.samsung.android.certenrollservice.scep"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v5, "com.samsung.android.certenrollservice.cmp"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v5, "com.samsung.android.certenrollservice.cmc"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static synthetic access$000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;)Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    .prologue
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    return-object p1
.end method

.method private bindUCSPinpadService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v2, "UcmService"

    const-string v3, "bindUCSPinpadService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    if-eqz v2, :cond_0

    const-string v2, "UcmService"

    const-string v3, "UCS pinpad service is already bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.ucs.ucspinpad"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.ucs.ucspinpad.BIND_UCS_PINPAD_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bUseBlockingQueue:Z

    if-ne v2, v4, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v2, "UcmService"

    const-string v3, "bindUCSPinpadService() - bindService true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "UcmService"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const-string v2, "UcmService"

    const-string v3, "bindUCSPinpadService() - bindService false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCaller(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "expectedPackage"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "actualPackage":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "actualPackage":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "actualPackage":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCallerPermissionFor is called for method-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CredentialManagerService"

    .local v1, "serviceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v5

    :cond_1
    sget-object v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0
.end method

.method private checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 11
    .param p1, "activeAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    new-instance v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .local v0, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v8, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfNotify for cs Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v1, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .local v1, "enforceManagement":Z
    if-eqz v1, :cond_3

    const-string v8, "UcmService"

    const-string v9, "notifying to managed plugin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .local v3, "mUm":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .local v7, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .local v4, "notify":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    .local v5, "userId":I
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfNotify: Valid userid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, v5, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v1    # "enforceManagement":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mUm":Landroid/os/UserManager;
    .end local v4    # "notify":Z
    .end local v5    # "userId":I
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v7    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string v8, "UcmService"

    const-string v9, "Package name for CS found NULL. Cannot notify."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    .restart local v1    # "enforceManagement":Z
    :cond_3
    const-string v8, "UcmService"

    const-string v9, "notifying to unmanaged plugin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkPluginUsed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const-string v4, "persist.keyguard.ucs.csname"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "keyguardCSName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "source":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    const-string v4, "UcmService"

    const-string v5, "This plugin is already used in keyguard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    const-string v4, "persist.security.ucs.csname"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "ODECSName":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_1

    const-string v4, "UcmService"

    const-string v5, "This plugin is already used in ODE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkSystemCaller()V
    .locals 2

    .prologue
    const-string v1, "android.uid.system:1000"

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "actual":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private compareCallingPkg([B[B)Z
    .locals 18
    .param p1, "storedPkg"    # [B
    .param p2, "callingPkg"    # [B

    .prologue
    const-string v15, "UcmService"

    const-string v16, "compareCallingPkg is called..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    .local v14, "status":Z
    :try_start_0
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .local v7, "configuratorPackage":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "confPkgs":[Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .local v4, "callingPackages":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "callingPkgs":[Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v13, v1, v10

    .local v13, "pkg":Ljava/lang/String;
    const-string v15, "UcmService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "compareCallingPkg pkg - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_1
    if-ge v9, v12, :cond_0

    aget-object v3, v2, v9

    .local v3, "cachePkg":Ljava/lang/String;
    const-string v15, "UcmService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "compareCallingPkg cachePkg -"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v14, 0x1

    const-string v15, "UcmService"

    const-string v16, "compareCallingPkg match found..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "cachePkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_0

    .end local v10    # "i$":I
    .restart local v3    # "cachePkg":Ljava/lang/String;
    .restart local v9    # "i$":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cachePkg":Ljava/lang/String;
    .end local v4    # "callingPackages":Ljava/lang/String;
    .end local v5    # "callingPkgs":[Ljava/lang/String;
    .end local v6    # "confPkgs":[Ljava/lang/String;
    .end local v7    # "configuratorPackage":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v15, "UcmService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in getConfiguratorPkg -"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    return v14
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 9
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v6, 0x0

    if-nez p0, :cond_0

    const-string v7, "UcmService"

    const-string v8, "Signature s1 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_0
    if-nez p1, :cond_1

    const-string v7, "UcmService"

    const-string v8, "Signature s2 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v6, "UcmService"

    const-string v7, "  Signature match"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const-string v7, "UcmService"

    const-string v8, "  Signature doesn\'t match"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const-string v2, ""

    .local v2, "byteString":Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-byte v1, v0, v3

    .local v1, "b":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "b":B
    :cond_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertByteToString result - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v2

    goto :goto_0
.end method

.method private deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "ismdmcaller"    # Z
    .param p3, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteInternal : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    move/from16 v0, v16

    if-eq v5, v0, :cond_2

    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move/from16 v5, v16

    :cond_2
    if-eqz p2, :cond_4

    move/from16 v4, p3

    .local v4, "user_id":I
    :goto_1
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_3

    const/4 v13, 0x1

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! deleteInternal is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .end local v4    # "user_id":I
    .end local v13    # "uriresource":I
    .end local v14    # "id":J
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    goto :goto_1

    .restart local v4    # "user_id":I
    .restart local v13    # "uriresource":I
    .restart local v14    # "id":J
    :cond_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v17

    .local v17, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_8

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v17    # "userId":I
    :cond_6
    :goto_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, "argBundle":Landroid/os/Bundle;
    if-eqz p2, :cond_7

    const-string v2, "ismdm"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_9

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    :cond_8
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v17    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private deleteODEConfigInFileIfExist()V
    .locals 4

    .prologue
    const-string v2, "UcmService"

    const-string v3, "deleteODEConfigInFile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .local v0, "existFile":Z
    if-nez v0, :cond_0

    const-string v2, "UcmService"

    const-string v3, "ODE config file does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "UcmService"

    const-string v3, "ODE config file exist so delete it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPairMain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPairMain : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    move/from16 v5, v16

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    const/4 v13, 0x1

    :cond_2
    if-nez p5, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! generateKeyPairMain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v14    # "id":J
    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v17

    .local v17, "userId":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPairMain system provided userId"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_5

    move/from16 v4, v17

    .end local v17    # "userId":I
    :cond_5
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extraArgs"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPair KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPair KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyPair KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;
    .locals 4
    .param p1, "credAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "agentInfoBundle":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .local v1, "credAgentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "uniqueId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "id"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "summary"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "title"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "vendorId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "isDetachable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "reqUserVerification"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isHardwareBacked"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isReadOnly"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isManageable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "enforceManagement"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "configuratorList"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "packageName"

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method private getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .locals 4
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppletInfo is called for pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v0, :cond_0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppletInfo pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConfiguratorPkg(I)[B
    .locals 8
    .param p1, "adminId"    # I

    .prologue
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getConfiguratorPkg is called for adminId-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "data":[B
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_2

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v4, "tempBaos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data size -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "i":I
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v4    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in getConfiguratorPkg -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getConfiguratorSignature(I)[B
    .locals 11
    .param p1, "adminId"    # I

    .prologue
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getConfiguratorSignature is called for adminId-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "data":[B
    :try_start_0
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_2

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v4

    if-ge v2, v8, :cond_1

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    .local v6, "sig":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    aget-object v9, v4, v2

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-lez v8, :cond_3

    const-string v8, "UcmService"

    const-string v9, "Found signature..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    new-array v7, v8, [Ljava/lang/String;

    .local v7, "sigStrins":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-ge v3, v8, :cond_0

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const-string v8, ","

    invoke-static {v8, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDigestOfBytes([B)[B

    move-result-object v0

    .end local v3    # "j":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Ljava/lang/String;
    .end local v7    # "sigStrins":[Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data size -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "i":I
    .end local v4    # "packageNames":[Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v0

    .restart local v2    # "i":I
    .restart local v4    # "packageNames":[Ljava/lang/String;
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "sig":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v2    # "i":I
    .end local v4    # "packageNames":[Ljava/lang/String;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in getConfiguratorPkg -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getDigestOfBytes([B)[B
    .locals 10
    .param p1, "inBytes"    # [B

    .prologue
    const/4 v5, 0x0

    .local v5, "dis":Ljava/security/DigestInputStream;
    const/4 v3, 0x0

    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    const-string v9, "SHA256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .local v8, "md":Ljava/security/MessageDigest;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v6, Ljava/security/DigestInputStream;

    invoke-direct {v6, v2, v8}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .local v6, "dis":Ljava/security/DigestInputStream;
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v9

    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/security/DigestInputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    :goto_0
    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v0    # "b":I
    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :goto_1
    return-object v9

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v0    # "b":I
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "b":I
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :catch_1
    move-exception v7

    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    :try_start_5
    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_6
    :goto_3
    const/4 v9, 0x0

    goto :goto_1

    .restart local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_7

    :try_start_8
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_8
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v5, :cond_9

    :try_start_a
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_a
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    :catch_6
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v7    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v5, :cond_b

    :try_start_c
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_c
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_3

    :catch_8
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v5, :cond_d

    :try_start_d
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_f
    :goto_8
    throw v9

    :catch_9
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catchall_2
    move-exception v9

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_7

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catchall_3
    move-exception v9

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_7

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_b
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_c
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_d
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_e
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_5

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_f
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto :goto_5

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_10
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_11
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_4

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_12
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_4

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_13
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_2

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_14
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_2

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dis":Ljava/security/DigestInputStream;
    :catch_15
    move-exception v7

    move-object v1, v2

    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dis":Ljava/security/DigestInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_2
.end method

.method private getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 3
    .param p1, "agentResponse"    # Landroid/os/Bundle;

    .prologue
    const-string v2, "errorresponse"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "errorcode":I
    const-string v2, "bytearrayresponse"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "data":[B
    new-instance v2, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    invoke-direct {v2, v1, v0}, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object v2
.end method

.method private declared-synchronized getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    const-string v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    const-string v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getuseridforuid(I)I
    .locals 1
    .param p1, "callingUid"    # I

    .prologue
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .local v0, "callerUserId":I
    return v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPair "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPair : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "agent= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    move/from16 v5, v16

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    const/4 v13, 0x1

    :cond_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v2, "ismdm"

    move/from16 v0, p5

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p5, :cond_4

    if-eqz p4, :cond_4

    const-string v2, "callerUid"

    const-string v3, "admin_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ownerUid"

    const-string v3, "admin_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "renew"

    const-string v3, "renew"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "allow_wifi"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "resource"

    const/4 v3, 0x3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userd id from MDM = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "user_id"

    const-string v3, "user_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extraArgs"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! importKeyPairInternal is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v14    # "id":J
    :cond_3
    const-string v2, "resource"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_4
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .restart local v14    # "id":J
    :cond_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPairInternal KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPairInternal KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPairInternal KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private isCallFromSystem(I)Z
    .locals 10
    .param p1, "adminUid"    # I

    .prologue
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCallFromSystem adminUid-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "status":Z
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .local v5, "pkgs":[Ljava/lang/String;
    if-eqz v5, :cond_0

    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, "pkgName":Ljava/lang/String;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCallFromSystem pkgName-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "UcmService"

    const-string v8, "isCallFromSystem match found...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCallFromSystem status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCallFromSystem e-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x40

    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .local v3, "targetPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .local v2, "sys":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v5, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "sys":Landroid/content/pm/PackageInfo;
    .end local v3    # "targetPkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isSystemStorage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v0, "com.samsung.ucs.agent.ese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.ucs.agent.boot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidFormFactor(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "status":Z
    if-eqz p1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_1
    :goto_1
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidFormFactor type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :sswitch_0
    const-string v2, "eSE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "eSE1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "SIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "SIM1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "SIM2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "SD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "SD1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xa51 -> :sswitch_5
        0x14000 -> :sswitch_6
        0x140b7 -> :sswitch_2
        0x18577 -> :sswitch_0
        0x26d65a -> :sswitch_3
        0x26d65b -> :sswitch_4
        0x2f299a -> :sswitch_1
        0x6761d4f -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidMsgType(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidMsgType type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidSCPProtocol(I)Z
    .locals 4
    .param p1, "protocolType"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSCPProtocol protocolType-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private listExposedProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 8
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "finalagents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "agent":Landroid/os/Bundle;
    const-string v5, "uniqueId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "cs_id":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "UcmService"

    const-string v6, "WARNING!!!! null/empty ID returned for agent bundle. Skipping agent."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! Obscure CS agent bundle. Skipping agent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "agent":Landroid/os/Bundle;
    .end local v2    # "cs_id":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Bundle;

    return-object v5
.end method

.method private listProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 12
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "uid":I
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .local v2, "user_id":I
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v5

    :cond_0
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listProviders "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " and ismdmcaller-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .local v1, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "id":J
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v7

    .local v7, "cs":Landroid/os/Bundle;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v7    # "cs":Landroid/os/Bundle;
    .end local v10    # "id":J
    :cond_3
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listProviders filtered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    move-object v5, v0

    goto/16 :goto_0
.end method

.method private processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "adminId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAdminConfigRequest is called...adminId-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uri-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    .local v7, "status":Z
    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "pluginName":Ljava/lang/String;
    const-string v1, "applet_location"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "appletLocation":Ljava/lang/String;
    const-string v1, "applet_id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .local v3, "aid":[B
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAdminConfigRequest is called...appletLocation-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidFormFactor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAdminConfigRequest removed pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .end local v2    # "appletLocation":Ljava/lang/String;
    .end local v3    # "aid":[B
    .end local v4    # "pluginName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v7

    .restart local v2    # "appletLocation":Ljava/lang/String;
    .restart local v3    # "aid":[B
    .restart local v4    # "pluginName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V

    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAdminConfigRequest added pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v2    # "appletLocation":Ljava/lang/String;
    .end local v3    # "aid":[B
    .end local v4    # "pluginName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAdminConfigRequest Exception"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "appletLocation":Ljava/lang/String;
    .restart local v3    # "aid":[B
    .restart local v4    # "pluginName":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_1

    const/4 v7, 0x0

    :try_start_1
    const-string v1, "UcmService"

    const-string v5, "processAdminConfigRequest not valid form factor"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private readPersistentAppletsInfoLocked()V
    .locals 21

    .prologue
    const-string v3, "UcmService"

    const-string v19, "readPersistentAppletsInfoLocked is called..."

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    .local v13, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v13

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .local v12, "eventType":I
    :goto_0
    const/4 v3, 0x2

    if-eq v12, v3, :cond_0

    const/4 v3, 0x1

    if-eq v12, v3, :cond_0

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_0

    :cond_0
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .local v17, "tagName":Ljava/lang/String;
    const-string v3, "applets"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    :cond_1
    const/4 v3, 0x2

    if-ne v12, v3, :cond_3

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v3, v0, :cond_3

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v3, "applet"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const-string v19, "pluginName"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "pluginName":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v19, "appletLocation"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "appletLocation":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v19, "adminId"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "adminId":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v19, "aid"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "aid":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .local v7, "admin":I
    const/4 v5, 0x0

    .local v5, "aidByte":[B
    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    :cond_2
    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V

    .local v2, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v4    # "appletLocation":Ljava/lang/String;
    .end local v5    # "aidByte":[B
    .end local v6    # "pluginName":Ljava/lang/String;
    .end local v7    # "admin":I
    .end local v8    # "adminId":Ljava/lang/String;
    .end local v9    # "aid":Ljava/lang/String;
    :cond_3
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    const/4 v3, 0x1

    if-ne v12, v3, :cond_1

    :cond_4
    if-eqz v13, :cond_5

    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v12    # "eventType":I
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tagName":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "key":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .local v18, "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    const-string v3, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PersistentApplet  key-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PersistentApplet  pluginName-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PersistentApplet  AID-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PersistentApplet  appletLocation-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PersistentApplet  adminId-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "UcmService"

    const-string v19, "Error reading persistent applet info, starting from scratch"

    move-object/from16 v0, v19

    invoke-static {v3, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_5

    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_6

    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_3
    throw v3

    .restart local v12    # "eventType":I
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "tagName":Ljava/lang/String;
    :catch_2
    move-exception v3

    goto/16 :goto_1

    .end local v12    # "eventType":I
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v19

    goto :goto_3

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method private readPersistentServicesLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v12, 0x1

    const-string v11, "UcmService"

    const-string v13, "readPersistentServicesLocked is called..."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    move v11, v12

    :goto_0
    iput-boolean v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z

    iget-boolean v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_2

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    if-nez v11, :cond_3

    const-string v11, "UcmService"

    const-string v12, "persistent service list is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v6, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .local v2, "eventType":I
    :goto_2
    if-eq v2, v14, :cond_4

    if-eq v2, v12, :cond_4

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .local v7, "tagName":Ljava/lang/String;
    const-string v11, "services"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    :cond_5
    if-ne v2, v14, :cond_6

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v14, :cond_6

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "service"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    const-string v13, "uid"

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "uidString":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v13, "uniqueId"

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "uniqueString":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v8    # "uidString":Ljava/lang/String;
    .end local v9    # "uniqueString":Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-ne v2, v12, :cond_5

    :cond_7
    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .end local v2    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_8
    :goto_3
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .local v10, "value":Ljava/lang/Integer;
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PersistentServices  key-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PersistentServices  value-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v11, "UcmService"

    const-string v12, "Error reading persistent services, starting from scratch"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_8

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v11

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_9
    :goto_5
    throw v11

    :catch_3
    move-exception v11

    goto/16 :goto_1

    .restart local v2    # "eventType":I
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tagName":Ljava/lang/String;
    :catch_4
    move-exception v11

    goto :goto_3

    .end local v2    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_5
    move-exception v12

    goto :goto_5
.end method

.method private refreshAgentList(ILandroid/os/Bundle;)V
    .locals 23
    .param p1, "userId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    :try_start_0
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "*****refreshAgentList userId-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is called***"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .local v14, "pm":Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v16

    .local v16, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .local v12, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .local v2, "activatedPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "expiredPackage":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v20, "event"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "event":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_3

    const-string v20, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "event "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", activatedPackage-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",expiredPackage-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "event":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mPersistentServices size is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v15}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    .local v11, "name":Landroid/content/ComponentName;
    if-nez v11, :cond_4

    const-string v20, "UcmService"

    const-string v21, "name is empty"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2    # "activatedPackage":Ljava/lang/String;
    .end local v7    # "expiredPackage":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "name":Landroid/content/ComponentName;
    .end local v12    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exceptioon in refreshAgentList main- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .restart local v2    # "activatedPackage":Ljava/lang/String;
    .restart local v6    # "event":I
    .restart local v7    # "expiredPackage":Ljava/lang/String;
    .restart local v12    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v6, v0, :cond_0

    :try_start_1
    const-string v20, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .end local v6    # "event":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "name":Landroid/content/ComponentName;
    .restart local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;-><init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/ComponentName;)V

    .local v3, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v10, 0x0

    .local v10, "isValidAgent":Z
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .local v4, "agentPackageName":Ljava/lang/String;
    :try_start_2
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-------Processing started for agentPackageName----- -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "agentPackageName -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is not an active plugin. Its license is expired. Ignoring it..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exceptioon in refreshAgentList loop - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_4
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  agentPackageName -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is an active plugin"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "UcmService"

    const-string v21, "  Check if caller has UCS Plugin permission..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    const-string v20, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_9

    const-string v20, "UcmService"

    const-string v21, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemStorage(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  agentPackageName "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is system storage. Checking system signature"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  system storage found - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is not valid. Ignoring it..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v17

    .local v17, "se":Ljava/lang/Exception;
    :try_start_6
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Exception se-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .end local v17    # "se":Ljava/lang/Exception;
    :cond_6
    :try_start_7
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Valid system storage found is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12

    if-eqz v15, :cond_8

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    :cond_8
    const-string v20, "UcmService"

    const-string v21, "resolveInfo null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    :cond_9
    :try_start_9
    const-string v20, "UcmService"

    const-string v21, "  Agent don\'t has UCS PLUGIN permission. Ignoring it..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    :cond_a
    :try_start_a
    new-instance v20, Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v15, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    if-lez v20, :cond_10

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    .local v19, "uniqueId":Ljava/lang/String;
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    move/from16 v18, v0

    .local v18, "serviceUid":I
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Agent uniqueId-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " and serviceUid-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .local v13, "persistUid":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    const-string v20, "UcmService"

    const-string v21, "  Matched found in mPersistentServices map"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    .end local v13    # "persistUid":I
    .end local v18    # "serviceUid":I
    .end local v19    # "uniqueId":Ljava/lang/String;
    :cond_b
    :goto_3
    if-eqz v10, :cond_11

    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Adding new agent -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v13    # "persistUid":I
    .restart local v18    # "serviceUid":I
    .restart local v19    # "uniqueId":Ljava/lang/String;
    :cond_c
    const-string v20, "UcmService"

    const-string v21, "  UID comparision failed for agent. Ignoring it.."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v13    # "persistUid":I
    :cond_d
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    const-string v20, "UcmService"

    const-string v21, "  Agent entry is not in PersistentServices but its system signed agent. Ading it.."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_3

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  agentPackageName -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is an active plugin"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_3

    :cond_f
    if-nez v2, :cond_b

    const-string v20, "UcmService"

    const-string v21, "  Agent entry is not in PersistentServices and it\'s not system signed agent. Ignoring it.."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v18    # "serviceUid":I
    .end local v19    # "uniqueId":Ljava/lang/String;
    :cond_10
    const-string v20, "UcmService"

    const-string v21, "  mPersistentServices size is 0. Trying to add new agent "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string v20, "UcmService"

    const-string v21, "  Adding system signed agent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_11
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " Unbind agent -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v4    # "agentPackageName":Ljava/lang/String;
    .end local v10    # "isValidAgent":Z
    .end local v11    # "name":Landroid/content/ComponentName;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_13
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    :try_start_b
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_15

    invoke-virtual {v12, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .restart local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Removing unwanted agent- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentServicesLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    monitor-exit v21

    goto/16 :goto_2

    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v20
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
.end method

.method public static resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveAllowedAgents for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    const/16 v6, 0x80

    invoke-virtual {p0, v5, v6, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .local v2, "packageName":Ljava/lang/String;
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method

.method private sendStateChangeBroadcast(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "csname":Ljava/lang/String;
    const-string v2, "UCS_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "UCS_CSNAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast CSNAME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setODEConfigInFile(I)V
    .locals 9
    .param p1, "config"    # I

    .prologue
    const-string v7, "UcmService"

    const-string v8, "setODEConfigInFile"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/sec_efs"

    const-string v8, "odeConfig"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    .local v3, "existFile":Z
    const/4 v4, 0x0

    .local v4, "fis":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .local v5, "fis":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, "e1":Ljava/io/FileNotFoundException;
    :goto_2
    const-string v7, "UcmService"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .local v2, "e2":Ljava/io/IOException;
    :goto_3
    const-string v7, "UcmService"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v7, "UcmService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private updateKeyguardConfig()V
    .locals 6

    .prologue
    const-string v4, "UcmService"

    const-string v5, "updateKeyguardConfig"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v4, "persist.keyguard.ucs"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "keyguardUsed":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "yes"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "UcmService"

    const-string v5, "remove useless keyguard config file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v4, "/efs/sec_efs"

    const-string v5, "keyguardConfig"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .local v1, "existFile":Z
    if-nez v1, :cond_1

    const-string v4, "UcmService"

    const-string v5, "keyguard config file does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "existFile":Z
    .end local v2    # "keyguardConfigFile":Ljava/io/File;
    .end local v3    # "keyguardUsed":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "existFile":Z
    .restart local v2    # "keyguardConfigFile":Ljava/io/File;
    .restart local v3    # "keyguardUsed":Ljava/lang/String;
    :cond_1
    const-string v4, "UcmService"

    const-string v5, "keyguard config file exist so delete it"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "existFile":Z
    .end local v2    # "keyguardConfigFile":Ljava/io/File;
    .end local v3    # "keyguardUsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private verifyPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPassword : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v4, v1, :cond_1

    :cond_0
    const-string v1, "UcmService"

    const-string v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v4, v1, :cond_3

    :cond_2
    const-string v1, "UcmService"

    const-string v2, "password is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writePersistentAppletsInfoLocked()V
    .locals 10

    .prologue
    const-string v7, "UcmService"

    const-string v8, "writePersistentAppletsInfoLocked is called..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v7, 0x0

    const-string v8, "applets"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persistent  key-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const-string v8, "applet"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "appletLocation"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "pluginName"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "adminId"

    iget v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    const-string v8, "aid"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {p0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const/4 v7, 0x0

    const-string v8, "applet"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .local v1, "e1":Ljava/io/IOException;
    const-string v7, "UcmService"

    const-string v8, "Error writing accounts"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    const-string v8, "applets"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private writePersistentServicesLocked()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    const-string v6, "services"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v5, 0x0

    const-string v6, "service"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "uid"

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "uniqueId"

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "service"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .local v1, "e1":Ljava/io/IOException;
    const-string v5, "UcmService"

    const-string v6, "Error writing accounts"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .end local v1    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "services"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "apdu"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0xe

    const/4 v8, 0x1

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APDUCommand : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-nez p2, :cond_2

    const-string v5, "UcmService"

    const-string v6, "apdu is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public authenticatePin(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "UcmService"

    const-string v1, "need to check authenticatePin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xe

    const/16 v9, 0x10

    const/4 v8, 0x1

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changePin : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p2, :cond_2

    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    :cond_2
    const-string v5, "UcmService"

    const-string v6, "oldPin is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    if-eqz p3, :cond_4

    const-string v5, ""

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_5

    :cond_4
    const-string v5, "UcmService"

    const-string v6, "newPin is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_6

    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_7

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_8

    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_9

    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_9
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_a
    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public configureKeyguardSettings(Ljava/lang/String;)Z
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const-string v3, "UcmService"

    const-string v16, "disable keyguard in UCS"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "persist.keyguard.ucs"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "persist.keyguard.ucs.csname"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteKeyguardConfig()Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_1

    const-string v3, "UcmService"

    const-string v16, "uri is empty"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .local v10, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v3, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "csName":Ljava/lang/String;
    const-string v3, "persist.keyguard.ucs"

    const-string v16, "yes"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "persist.keyguard.ucs.csname"

    invoke-static {v3, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .local v2, "csNameForProp":[B
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v15, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    .local v15, "storageType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v14

    .local v14, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v14, :cond_3

    iget-object v3, v14, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v15, v14, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    :cond_3
    invoke-static {v15}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v4

    .local v4, "storageTypeIndex":I
    if-gez v4, :cond_4

    const-string v3, "UcmService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "UCM does not support this storage type for KG : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .local v12, "enabledSCP":Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v5

    .local v5, "scpIndex":I
    if-gez v5, :cond_5

    const-string v3, "UcmService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "UCM does not support this SCP type : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .local v6, "pinMinLength":I
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .local v7, "pinMaxLength":I
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .local v8, "pukMinLength":I
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .local v9, "pukMaxLength":I
    new-instance v1, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    invoke-direct/range {v1 .. v9}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>([B[BIIIIII)V

    .local v1, "keyProp":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v3

    goto/16 :goto_0

    .end local v1    # "keyProp":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .end local v2    # "csNameForProp":[B
    .end local v4    # "storageTypeIndex":I
    .end local v5    # "scpIndex":I
    .end local v6    # "pinMinLength":I
    .end local v7    # "pinMaxLength":I
    .end local v8    # "pukMinLength":I
    .end local v9    # "pukMaxLength":I
    .end local v10    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v11    # "csName":Ljava/lang/String;
    .end local v12    # "enabledSCP":Ljava/lang/String;
    .end local v14    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v15    # "storageType":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public configureODESettings(Ljava/lang/String;)I
    .locals 34
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const-string v31, "UcmService"

    const-string v32, "configureODESettings"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "ro.crypto.state"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "crypto_state":Ljava/lang/String;
    const-string v31, "ro.vold.forceencryption"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "force_crypto_state":Ljava/lang/String;
    const-string v31, "ro.boot.ucs_mode"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "ucs_flag":Ljava/lang/String;
    new-instance v3, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v3, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v30

    .local v30, "uriuid":I
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v26

    .local v26, "source":Ljava/lang/String;
    const-string v31, "UcmService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "configureODESettings uriuid-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "encrypted"

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const-string v31, "1"

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_0

    const-string v31, "UcmService"

    const-string v32, "device is encrypted state in non-default encryption device."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v31, 0xc000200

    :goto_0
    return v31

    :cond_0
    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    const-string v31, "UcmService"

    const-string v32, "device is encrypted with UCS so cannot change configuration"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v31, 0xc000200

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v11

    .local v11, "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    const-string v31, "UcmService"

    const-string v32, "configureODESettings Validating current ODE setting configurator"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v7

    .local v7, "callingPkg":[B
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v8

    .local v8, "callingPkgSign":[B
    if-eqz v7, :cond_3

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareCallingPkg([B[B)Z

    move-result v31

    if-eqz v31, :cond_2

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v31

    if-nez v31, :cond_4

    :cond_2
    const-string v31, "UcmService"

    const-string v32, "configureODESettings invalid caller is trying to change ODE configuration. Error..."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v31, 0xc000300

    goto :goto_0

    :cond_3
    const v31, 0xc000300

    goto :goto_0

    :cond_4
    const-string v31, "UcmService"

    const-string v32, "configureODESettings valid caller is changing ODE configuration..."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "callingPkg":[B
    .end local v8    # "callingPkgSign":[B
    :cond_5
    const-string v31, "reset"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    const-string v31, "UcmService"

    const-string v32, "disable configureODESettings in UCS"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "persist.security.ucs"

    const-string v32, ""

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v31, "persist.security.ucs.csname"

    const-string v32, ""

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteODEConfig()Z

    move-result v12

    .local v12, "delete":Z
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v0, v12, :cond_6

    const/16 v31, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v31, 0x10d

    goto/16 :goto_0

    .end local v12    # "delete":Z
    :cond_7
    const/16 v31, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    const-string v31, "UcmService"

    const-string v32, "uri is empty"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x10

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v31, v0

    if-eqz v31, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    if-nez v31, :cond_a

    :cond_9
    const/16 v31, 0xe

    goto/16 :goto_0

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "pluginName":Ljava/lang/String;
    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    :cond_b
    const/16 v31, 0xe

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_19

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .local v4, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v4, :cond_d

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    const-string v31, "UcmService"

    const-string v32, "Find UcmAgentWrapper"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    move/from16 v31, v0

    if-nez v31, :cond_e

    const-string v31, "UcmService"

    const-string v32, "This agent dose not support ODE"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x3

    goto/16 :goto_0

    :cond_e
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    .local v2, "AID":[B
    if-eqz v2, :cond_f

    array-length v0, v2

    move/from16 v31, v0

    if-nez v31, :cond_10

    :cond_f
    const-string v31, "UcmService"

    const-string v32, "AID is empty"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x4

    goto/16 :goto_0

    :cond_10
    array-length v0, v2

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_11

    array-length v0, v2

    move/from16 v31, v0

    const/16 v32, 0x10

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_12

    :cond_11
    const-string v31, "UcmService"

    const-string v32, "AID range is not proper"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x4

    goto/16 :goto_0

    :cond_12
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    move-object/from16 v27, v0

    .local v27, "storageType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v21

    .local v21, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v21, :cond_13

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v27, v0

    :cond_13
    invoke-static/range {v27 .. v27}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v28

    .local v28, "storageTypeIndex":I
    if-gez v28, :cond_14

    const-string v31, "UcmService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "UCM does not support this storage type : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x4

    goto/16 :goto_0

    :cond_14
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .local v13, "enabledSCP":Ljava/lang/String;
    invoke-static {v13}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v25

    .local v25, "scpIndex":I
    if-gez v25, :cond_15

    const-string v31, "UcmService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "UCM does not support this SCP type : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x4

    goto/16 :goto_0

    :cond_15
    const-string v31, "persist.security.ucs"

    const-string v32, "1"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v31, "persist.security.ucs.csname"

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v14, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    .local v14, "enabledWrap":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    move/from16 v19, v0

    .local v19, "pinMinLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    move/from16 v18, v0

    .local v18, "pinMaxLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v6, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .local v6, "authMode":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .local v5, "authMaxCnt":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    move/from16 v23, v0

    .local v23, "pukMinLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    move/from16 v22, v0

    .local v22, "pukMaxLength":I
    iget-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .local v10, "csName":[B
    if-eqz v10, :cond_16

    array-length v0, v10

    move/from16 v31, v0

    if-nez v31, :cond_17

    :cond_16
    const-string v31, "UcmService"

    const-string v32, "csName is empty"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x4

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v17

    .local v17, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    move/from16 v0, v28

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    move-object/from16 v0, v17

    iput v14, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    move-object/from16 v0, v17

    iput v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    move-object/from16 v0, v17

    iput v5, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    move-object/from16 v0, v17

    iput-object v10, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-static/range {v17 .. v17}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v24

    .local v24, "save":Z
    const/16 v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    const-string v31, "security.knox_ucs_mode"

    const-string v32, "true"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v31, 0x0

    goto/16 :goto_0

    :cond_18
    const/16 v31, 0x10d

    goto/16 :goto_0

    .end local v2    # "AID":[B
    .end local v4    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v5    # "authMaxCnt":I
    .end local v6    # "authMode":I
    .end local v10    # "csName":[B
    .end local v13    # "enabledSCP":Ljava/lang/String;
    .end local v14    # "enabledWrap":I
    .end local v17    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v18    # "pinMaxLength":I
    .end local v19    # "pinMinLength":I
    .end local v21    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v22    # "pukMaxLength":I
    .end local v23    # "pukMinLength":I
    .end local v24    # "save":Z
    .end local v25    # "scpIndex":I
    .end local v27    # "storageType":Ljava/lang/String;
    .end local v28    # "storageTypeIndex":I
    :cond_19
    const/16 v31, 0xe

    goto/16 :goto_0
.end method

.method public containsAlias(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .local v13, "callerUid":I
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containsAlias "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .local v5, "uriuid":I
    const/4 v2, -0x1

    if-ne v5, v2, :cond_1

    move v5, v13

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! containsAlias is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p2

    invoke-interface {v12, v2, v0, v13}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_4

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containsAlias Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public createSecureChannel(ILandroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 8
    .param p1, "protocolType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSecureChannel protocolType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .local v4, "uid":I
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v6, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "UcmService"

    const-string v6, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .local v1, "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    const/4 v5, 0x1

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    const/16 v5, 0x41

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidSCPProtocol(I)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "UcmService"

    const-string v6, "Invalid protocolType..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "id":J
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v5, v4, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->createSecureChannel(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in createSecureChannel -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move/from16 v5, v18

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    const/16 v17, 0x1

    :cond_3
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! decrypt is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_6

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypt new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v19    # "userId":I
    :cond_5
    :goto_1
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_7

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v19    # "userId":I
    :cond_6
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypt. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v19    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    :cond_7
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_8

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .local v16, "response":[B
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v16, :cond_9

    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for decrypt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected deletAndRefreshAgents(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 3
    .param p1, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    const-string v0, "UcmService"

    const-string v1, "deletAndRefreshAgents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletAndRefreshAgents() remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgents()V

    return-void
.end method

.method public delete(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "pluginResponse":Landroid/os/Bundle;
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMERRORTESTING: @CredentialManagerService delete Response from plugin with error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "deleteCertificate"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "booleanresponse"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v1, v0

    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v1, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v1

    .end local v1    # "agentResponse":Ljava/lang/Object;
    .restart local v0    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v4, "booleanresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .local v3, "response":Z
    const-string v4, "errorresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteCertificate Response:  error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UCMERRORTESTING: @CredentialManagerService deleteCertificate Response from plugin with error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .restart local v1    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public destroySecureChannel()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "UcmService"

    const-string v5, "destroySecureChannel ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "uid":I
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v5, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v4, v5, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "UcmService"

    const-string v5, "  Agent don\'t UCM PLUGIN permission. Returning..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x41

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "id":J
    :try_start_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v4, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destroySecureChannel(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in destroySecureChannel -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public generateDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "generateDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateDek()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    :cond_5
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDek response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPair "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "bytearrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .local v9, "response":[B
    const-string v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPair Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPairInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "generateKeyPairInternal"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "bytearrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .local v9, "response":[B
    const-string v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPairInternal Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public generateKeyguardPassword(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xe

    const/4 v11, 0x1

    const/16 v10, 0xd

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateKeyguardPassword "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    const/4 v5, 0x0

    .local v5, "password":[B
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v11, v7, :cond_1

    :cond_0
    const-string v7, "UcmService"

    const-string v8, "uri is empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "errorresponse"

    const/16 v8, 0x10

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v7, "boot_test"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v11, v7, :cond_2

    const-string v7, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no agent found for Source = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "errorresponse"

    invoke-virtual {v1, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_4

    const-string v7, "UcmService"

    const-string v8, "no agentService found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "errorresponse"

    invoke-virtual {v1, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-interface {v3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyguardPassword()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v7, "UcmService"

    const-string v8, "ERROR: Null Response received from agentService"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v7, "errorresponse"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const-string v7, "bytearrayresponse"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-string v7, "errorresponse"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "errorcode":I
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateKeyguardPassword Response from plugin:  error code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_6

    const-string v7, "UcmService"

    const-string v8, "password is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "errorresponse"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    array-length v7, v5

    if-nez v7, :cond_7

    const-string v7, "UcmService"

    const-string v8, "password length is 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "errorresponse"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "password length is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .local v6, "strAscii":Ljava/lang/String;
    const-string v7, "stringresponse"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "numBytes"    # I
    .param p3, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v19

    .local v19, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    move/from16 v0, v19

    if-eq v5, v0, :cond_1

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    move/from16 v5, v19

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v18

    .local v18, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    const/16 v18, 0x1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! generateSecureRandom is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .local v13, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "user_id"

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ownerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resource"

    move/from16 v0, v18

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_4

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1, v13}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_5

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .local v15, "response":[B
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v15, :cond_6

    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for generateSecureRandom"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public generateWrappedDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "generateWrappedDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    :cond_5
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateWrappedDek response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finding active agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found active agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "getAdminConfigureBundleFromCs"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdminConfigureBundleFromCs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .local v5, "uriuid":I
    move/from16 v4, p2

    .local v4, "user_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! getAdminConfigureBundleFromCs is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_2

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    move/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_3

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPackageSetting Response from plugin: error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .local v7, "agentInfoBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v8

    .local v8, "credAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    new-instance v6, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v6, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "uid":I
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .local v12, "uriuid":I
    if-eq v12, v1, :cond_0

    if-eq v3, v12, :cond_0

    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_0

    move v3, v12

    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .local v2, "user_id":I
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v9

    .local v9, "uriresource":I
    if-ne v9, v1, :cond_1

    const/4 v9, 0x1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! getAgentInfo is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v7

    move-object v5, v7

    goto :goto_0
.end method

.method public getAgentService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "uid":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBinder "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", uid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v7

    .local v7, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v7, :cond_0

    :goto_0
    return-object v5

    :cond_0
    new-instance v6, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v6, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .local v12, "uriuid":I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_1

    if-eq v3, v12, :cond_1

    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_1

    move v3, v12

    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .local v2, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! getAgentService is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "binderService":Landroid/os/IBinder;
    :goto_1
    move-object v5, v9

    goto :goto_0

    .end local v9    # "binderService":Landroid/os/IBinder;
    :cond_3
    move-object v9, v5

    goto :goto_1
.end method

.method public getCertificateChain(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move/from16 v5, v18

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    const/16 v17, 0x1

    :cond_3
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! getCertificateChain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_6

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v19    # "userId":I
    :cond_5
    :goto_1
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_7

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v19    # "userId":I
    :cond_6
    const-string v2, "UcmService"

    const-string v3, "getCertificateChain user id id not valid. Keeping same userid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v19    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    :cond_7
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_8

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .local v16, "response":[B
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v16, :cond_9

    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for getCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getConfigureBundleFromCs(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v1, "bundleresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "getDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v5, "UcmService"

    const-string v6, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getDek()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    :cond_5
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDek Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_5

    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    invoke-interface {v3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getInfo()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .locals 5

    .prologue
    const-string v2, "UcmService"

    const-string v3, "getODESettingsConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    .local v0, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "responseBundle":Landroid/os/Bundle;
    const-string v2, "supportsode"

    iget v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "aid"

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "storagetype"

    sget-object v3, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    iget v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scptype"

    sget-object v3, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    iget v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPackageSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 20
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "getPackageSetting"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_0

    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v13

    .end local v13    # "agentResponse":Ljava/lang/Object;
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v10, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v10, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v17

    .local v17, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_1

    move/from16 v0, v17

    if-eq v7, v0, :cond_1

    const/16 v4, 0x3e8

    if-ne v7, v4, :cond_1

    move/from16 v7, v17

    :cond_1
    move/from16 v6, p5

    .local v6, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .local v18, "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! getPackageSetting is NOT allowed for URI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .local v15, "argBundle":Landroid/os/Bundle;
    const-string v4, "callerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "user_id"

    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "ownerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPackageSetting KEY_RESOURCE_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "resource"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPackageSetting KEY_USER_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "user_id"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPackageSetting KEY_CALLER_UID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "callerUid"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v14

    .local v14, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v14, :cond_3

    const-string v4, "UcmService"

    const-string v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v14, v0, v1, v2, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getPackageSetting(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    if-nez v12, :cond_4

    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .local v16, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getStatus : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v13, 0x1

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v13, v14, :cond_1

    :cond_0
    const-string v13, "UcmService"

    const-string v14, "csName is empty"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "errorresponse"

    const/16 v14, 0x10

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    .local v3, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v3

    .end local v3    # "agentResponse":Ljava/lang/Object;
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v12, -0x1

    .local v12, "state":I
    const/4 v11, -0x1

    .local v11, "remainCnt":I
    const/4 v6, -0x1

    .local v6, "maxCnt":I
    const/4 v8, -0x1

    .local v8, "pinMinLength":I
    const/4 v7, -0x1

    .local v7, "pinMaxLength":I
    const/4 v5, 0x0

    .local v5, "authMode":I
    const/4 v10, -0x1

    .local v10, "pukMinLength":I
    const/4 v9, -0x1

    .local v9, "pukMaxLength":I
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v13, 0x1

    const-string v14, "boot_test"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v13, v14, :cond_2

    const-string v13, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no agent found for Source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-nez v13, :cond_4

    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no agent info found for Source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v4

    .local v4, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v4, :cond_5

    const-string v13, "UcmService"

    const-string v14, "no agentService found"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_5
    invoke-interface {v4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getStatus()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string v13, "UcmService"

    const-string v14, "ERROR: Null Response received from agentService"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "errorresponse"

    const/16 v14, 0xd

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_6
    const-string v13, "UcmService"

    const-string v14, "getStatus success"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "state"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "remainCnt"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v5, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v10, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "values get from agent : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "maxAuthCnt"

    invoke-virtual {v2, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "maxPinLength"

    invoke-virtual {v2, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "minPinLength"

    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "authMode"

    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "minPukLength"

    invoke-virtual {v2, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "maxPukLength"

    invoke-virtual {v2, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public grantKeyChainAccess(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grantKeyChainAccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkSystemCaller()V

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UcmService"

    const-string v1, "Not Keychain URI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .local v6, "pluginResponse":Landroid/os/Bundle;
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService importKeyPair Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorresponse"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "installCertificate"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "booleanresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .local v9, "response":Z
    const-string v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installCertificate Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService installCertificate Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public isCredentialStorageLock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const-string v0, "UcmService"

    const-string v1, "UCS ODE isCredentialStorageLock in UCS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    return v0
.end method

.method public isKeyChainGranted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public isUserCertificatesExistInUCS()Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v17, "UcmService"

    const-string v18, "isUserCertificatesExistInUCS called"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "isUserCertificatesExistInUCS"

    invoke-static/range {v17 .. v17}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .local v7, "agentResponse":Landroid/os/Bundle;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .local v9, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v16

    .local v16, "user_id":I
    const-string v17, "callerUid"

    const/16 v18, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v17, "user_id"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .local v15, "newParamBundle":Landroid/os/Bundle;
    const-string v17, "removable_user_certificates_list"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v17, "extraArgs"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v17, "UcmService"

    const-string v18, "Iteration has started...."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_1
    const-string v17, "UcmService"

    const-string v18, "agentService == null... continue"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "id1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v14

    .local v14, "mdmAliases":[Ljava/lang/String;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "resource"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v8, v9}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v3, 0x0

    .local v3, "agentAliasesKeyChain":[Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v17, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    if-eqz v14, :cond_6

    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_6

    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v10    # "i":I
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v17, 0x1

    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "id1":J
    .end local v14    # "mdmAliases":[Ljava/lang/String;
    :goto_2
    return v17

    .restart local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .restart local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v12    # "id1":J
    .restart local v14    # "mdmAliases":[Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "resource"

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v8, v9}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v6, 0x0

    .local v6, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v7, :cond_8

    const-string v17, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :cond_8
    if-eqz v6, :cond_9

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_9
    if-eqz v14, :cond_b

    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .end local v10    # "i":I
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "id1":J
    .end local v14    # "mdmAliases":[Ljava/lang/String;
    :cond_c
    const/16 v17, 0x0

    goto :goto_2
.end method

.method public listAllProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "listAllProviders"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public listPasswordSupportedProviders()[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "uid":I
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .local v2, "user_id":I
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v5

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .local v1, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "id":J
    const/4 v10, 0x1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-ne v10, v0, :cond_3

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "password support provider : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_3
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v8    # "id":J
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    goto/16 :goto_0
.end method

.method public listProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyChangeToPlugin event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "notifyChangeToPlugin"

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "agentResponse":Landroid/os/Bundle;
    const/4 v4, 0x0

    .local v4, "error":Z
    if-nez p1, :cond_5

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .local v0, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v3, :cond_2

    const/4 v7, 0x0

    .local v7, "status":I
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v6

    .local v6, "notify":Z
    if-eqz v6, :cond_1

    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result v7

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " notify status - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    if-eq v4, v8, :cond_0

    if-eqz v7, :cond_0

    const-string v8, "errorresponse"

    const/16 v9, 0x12

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not notified"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v6    # "notify":Z
    .end local v7    # "status":I
    :cond_2
    const-string v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "UcmService"

    const-string v9, "agentService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v0    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    :cond_3
    if-nez v4, :cond_4

    const-string v8, "errorresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const-string v8, "booleanresponse"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    return-object v2

    :cond_5
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v1, :cond_6

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no agent found for Source = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "booleanresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .restart local v3    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v3, :cond_8

    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result v7

    .restart local v7    # "status":I
    if-nez v7, :cond_7

    const-string v8, "booleanresponse"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v8, "errorresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    const-string v8, "errorresponse"

    const/16 v9, 0x12

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v7    # "status":I
    :goto_3
    const-string v8, "booleanresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_8
    const-string v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "UcmService"

    const-string v9, "agentService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    const-string v2, "notifyLicenseStatus"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyLicenseStatus packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",status-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorCode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    return v2
.end method

.method public processCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "command"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processCommand "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    move/from16 v5, v16

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! processCommand is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1, v5}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_4

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processCommand Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public processMessage(I[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 9
    .param p1, "type"    # I
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processMessage type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .local v4, "uid":I
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v6, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "UcmService"

    const-string v6, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .local v1, "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    const/16 v5, 0x41

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidMsgType(I)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "UcmService"

    const-string v6, "Invalid message Type..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .restart local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    const/16 v5, 0x40

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    goto :goto_0

    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :cond_1
    if-nez p2, :cond_2

    const-string v5, "UcmService"

    const-string v6, "message byte is null.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .restart local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    const/16 v5, 0x32

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    goto :goto_0

    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "id":J
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v5, v4, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->processMsg(II[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in processMessage -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public declared-synchronized publishService()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "UcmService"

    const-string v1, "publishedService com.samsung.ucs.ucsservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected refreshAgents()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public resetNonMdmCertificates()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v18, "UcmService"

    const-string v19, "resetNonMdmCertificates called"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "resetNonMdmCertificates"

    invoke-static/range {v18 .. v18}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .local v7, "agentResponse":Landroid/os/Bundle;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v17

    .local v17, "user_id":I
    const-string v18, "callerUid"

    const/16 v19, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v18, "user_id"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v18, "UcmService"

    const-string v19, "Iteration has started...."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_1
    const-string v18, "UcmService"

    const-string v19, "agentService == null... continue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "resource"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v8, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v3, 0x0

    .local v3, "agentAliasesKeyChain":[Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v18, "stringarrayresponse"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    const-string v18, "resource"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v8, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v6, 0x0

    .local v6, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v7, :cond_5

    const-string v18, "stringarrayresponse"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :cond_5
    if-eqz v6, :cond_6

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "UcmService"

    const-string v19, "agentAliasesListKeychain.isEmpty() && agentAliasesListWiFi.isEmpty() .... continue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v16

    .local v16, "mdmAliases":[Ljava/lang/String;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_a

    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_9
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v11    # "i":I
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "alias":Ljava/lang/String;
    const-string v18, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request to delete KEYCHAIN for alias: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "resource"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v8, v9, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_3

    .end local v9    # "alias":Ljava/lang/String;
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "alias":Ljava/lang/String;
    const-string v18, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request to delete WIFI for alias: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "resource"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v8, v9, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_4

    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v9    # "alias":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id1":J
    .end local v16    # "mdmAliases":[Ljava/lang/String;
    :cond_c
    return-void
.end method

.method public resetUid(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "rstuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetUid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    move/from16 v5, v16

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! resetUid is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->resetUid(I)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_4

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetUid Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public resetUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetUser "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v0, v16

    if-eq v5, v0, :cond_1

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    move/from16 v5, v16

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! resetUser is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->resetUser(I)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_4

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetUser Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public saw(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 42
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    .local v21, "error":Z
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v38

    .local v38, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v38

    if-eq v0, v2, :cond_0

    move/from16 v0, v38

    if-eq v5, v0, :cond_0

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_0

    move/from16 v5, v38

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v37

    .local v37, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_1

    const/16 v37, 0x1

    :cond_1
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .local v15, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "user_id"

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ownerUid"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resource"

    move/from16 v0, v37

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "entryType"

    move/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw KEY_RESOURCE_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "resource"

    const/16 v41, -0x2

    move/from16 v0, v41

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw KEY_USER_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "user_id"

    const/16 v41, -0x2

    move/from16 v0, v41

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw KEY_CALLER_UID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "callerUid"

    const/16 v41, -0x2

    move/from16 v0, v41

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v6, "KNOX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .local v24, "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_2
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .local v3, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iteration has started.... uid-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .local v28, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v21, 0x1

    goto :goto_0

    :cond_3
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v12, :cond_4

    const-string v2, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v21, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "UcmService"

    const-string v6, "skipping obscure agentService"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-interface {v12, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_6

    const-string v2, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v2, "stringarrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .local v13, "agentaliases":[Ljava/lang/String;
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .local v22, "errorcode":I
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_2

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Agent alias size -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v13

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    aget-object v14, v16, v27

    .local v14, "alias":Ljava/lang/String;
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Agent alias-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .end local v14    # "alias":Ljava/lang/String;
    :cond_7
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .local v23, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .local v35, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .local v36, "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .local v30, "id1":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v34

    .local v34, "mdmallowedaliases":[Ljava/lang/String;
    const/16 v40, 0x0

    .local v40, "wifiCert":[Ljava/lang/String;
    const/4 v2, 0x3

    move/from16 v0, v37

    if-ne v0, v2, :cond_c

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getWifiCertificateAliasesAsUser(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_c

    move-object/from16 v0, v40

    array-length v2, v0

    if-lez v2, :cond_c

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, "combinedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v16, v40

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    const/16 v27, 0x0

    :goto_2
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    aget-object v18, v16, v27

    .local v18, "certAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : Found wifi certAlias-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .end local v18    # "certAlias":Ljava/lang/String;
    :cond_9
    if-eqz v34, :cond_b

    move-object/from16 v0, v34

    array-length v2, v0

    if-lez v2, :cond_b

    move-object/from16 v16, v34

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    const/16 v27, 0x0

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    aget-object v39, v16, v27

    .local v39, "whitelistedAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .end local v39    # "whitelistedAlias":Ljava/lang/String;
    :cond_b
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "mdmallowedaliases":[Ljava/lang/String;
    check-cast v34, [Ljava/lang/String;

    .end local v19    # "combinedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "mdmallowedaliases":[Ljava/lang/String;
    :cond_c
    if-nez v34, :cond_10

    const/16 v35, 0x0

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v33

    .local v33, "mdmaliases":[Ljava/lang/String;
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v33, :cond_d

    move-object/from16 v0, v33

    array-length v2, v0

    if-nez v2, :cond_11

    :cond_d
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v36, 0x0

    :cond_e
    :goto_5
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v23    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : Initial agent alias list for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v36, :cond_15

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_15

    const/16 v25, 0x0

    .local v25, "i":I
    :goto_6
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_15

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v23

    invoke-virtual {v2, v14, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : Removing from agent alias list : alias name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .end local v14    # "alias":Ljava/lang/String;
    .end local v25    # "i":I
    .end local v33    # "mdmaliases":[Ljava/lang/String;
    :cond_10
    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .restart local v33    # "mdmaliases":[Ljava/lang/String;
    :cond_11
    if-eqz v34, :cond_12

    move-object/from16 v0, v34

    array-length v2, v0

    if-nez v2, :cond_13

    :cond_12
    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_13
    move-object/from16 v16, v33

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    const/16 v27, 0x0

    :goto_7
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    aget-object v14, v16, v27

    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v35

    invoke-virtual {v2, v14, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, v36

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : new alias added to mdmunauthorizedaliasesList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    :cond_14
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : mdmunauthorizedaliasesList unchanged, access allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v14    # "alias":Ljava/lang/String;
    :cond_15
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .restart local v14    # "alias":Ljava/lang/String;
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .local v9, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v20

    .local v20, "csUri":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw : Adding alias uri to finalaliasesList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v3    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v12    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v13    # "agentaliases":[Ljava/lang/String;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v20    # "csUri":Ljava/lang/String;
    .end local v22    # "errorcode":I
    .end local v23    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v28    # "id":J
    .end local v30    # "id1":J
    .end local v32    # "len$":I
    .end local v33    # "mdmaliases":[Ljava/lang/String;
    .end local v34    # "mdmallowedaliases":[Ljava/lang/String;
    .end local v35    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v40    # "wifiCert":[Ljava/lang/String;
    :cond_16
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    .local v17, "array":[Ljava/lang/String;
    const-string v2, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez v21, :cond_17

    const-string v2, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    move-object v11, v10

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .end local v17    # "array":[Ljava/lang/String;
    .end local v24    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_a
    return-object v11

    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    .restart local v3    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v3, :cond_19

    const-string v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_a

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_19
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .restart local v12    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_1a

    const-string v2, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_a

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1a
    invoke-interface {v12, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_1b

    const-string v2, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_a

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1b
    const-string v2, "stringarrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "agentaliases":[Ljava/lang/String;
    const-string v2, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .restart local v22    # "errorcode":I
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saw Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    move/from16 v0, v37

    if-ne v0, v2, :cond_1c

    const-string v2, "stringarrayresponse"

    invoke-virtual {v10, v2, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "errorresponse"

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1c
    const/4 v2, 0x3

    move/from16 v0, v37

    if-eq v0, v2, :cond_1d

    const-string v2, "errorresponse"

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "stringarrayresponse"

    invoke-virtual {v10, v2, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "errorresponse"

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .restart local v28    # "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1f
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .restart local v35    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .restart local v36    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v13, :cond_20

    const-string v2, "errorresponse"

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v34

    .restart local v34    # "mdmallowedaliases":[Ljava/lang/String;
    if-nez v34, :cond_24

    const/16 v35, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "mdmaliases":[Ljava/lang/String;
    if-eqz v33, :cond_21

    move-object/from16 v0, v33

    array-length v2, v0

    if-nez v2, :cond_25

    :cond_21
    const/16 v36, 0x0

    :cond_22
    :goto_c
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    if-eqz v36, :cond_29

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_29

    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_d
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_29

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v23

    invoke-virtual {v2, v14, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v25, v25, 0x1

    goto :goto_d

    .end local v14    # "alias":Ljava/lang/String;
    .end local v25    # "i":I
    .end local v33    # "mdmaliases":[Ljava/lang/String;
    :cond_24
    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    goto :goto_b

    .restart local v33    # "mdmaliases":[Ljava/lang/String;
    :cond_25
    if-eqz v34, :cond_26

    move-object/from16 v0, v34

    array-length v2, v0

    if-nez v2, :cond_27

    :cond_26
    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    goto :goto_c

    :cond_27
    move-object/from16 v16, v33

    .restart local v16    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    .restart local v32    # "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_e
    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_22

    aget-object v14, v16, v26

    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v0, v35

    invoke-virtual {v2, v14, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_28

    move-object/from16 v0, v36

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .end local v14    # "alias":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v32    # "len$":I
    :cond_29
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .restart local v24    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .restart local v14    # "alias":Ljava/lang/String;
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .restart local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "csUri":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .end local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v20    # "csUri":Ljava/lang/String;
    :cond_2a
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    .restart local v17    # "array":[Ljava/lang/String;
    const-string v2, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "errorresponse"

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_a
.end method

.method public sawInternal(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sawInternal() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; userId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; resourceType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "agentResponse":Landroid/os/Bundle;
    const-string v11, "sawInternal"

    invoke-static {v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .local v1, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v1, :cond_0

    const-string v11, "UcmService"

    const-string v12, "sawInternal(): activeAgent == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "errorresponse"

    const/16 v12, 0xe

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v4, v3

    .end local v3    # "agentResponse":Landroid/os/Bundle;
    .local v4, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v4

    .end local v4    # "agentResponse":Ljava/lang/Object;
    .restart local v3    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v5

    .local v5, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v5, :cond_1

    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v11, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    const-string v11, "UcmService"

    const-string v12, "agentService == null || mPolicyManager.isCSobscure() ... continue"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "errorresponse"

    const/16 v12, 0xe

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v4, v3

    .restart local v4    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v4    # "agentResponse":Ljava/lang/Object;
    :cond_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .local v7, "argBundle":Landroid/os/Bundle;
    const-string v11, "callerUid"

    const/16 v12, 0x3e8

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "user_id"

    move/from16 v0, p2

    invoke-virtual {v7, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "resource"

    move/from16 v0, p3

    invoke-virtual {v7, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v5, v7}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v11, "UcmService"

    const-string v12, "ERROR: Null Response received from agentService"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .restart local v3    # "agentResponse":Landroid/os/Bundle;
    const-string v11, "errorresponse"

    const/16 v12, 0xd

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v4, v3

    .restart local v4    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v4    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const-string v11, "stringarrayresponse"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "agentAliases":[Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sawInternal() agentAliases.length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v2

    .local v8, "arr$":[Ljava/lang/String;
    array-length v10, v8

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v6, v8, v9

    .local v6, "alias":Ljava/lang/String;
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sawInternal() agentAliases="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v6    # "alias":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :cond_4
    move-object v4, v3

    .restart local v4    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 22
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "profile"    # Landroid/os/Bundle;
    .param p5, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "setAdminConfigureBundleForCs"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, "agentResponse":Landroid/os/Bundle;
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAdminConfigureBundleForCs "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    const-string v4, "UcmService"

    const-string v5, "setAdminConfigureBundleForCs : Bundle is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v13

    .end local v13    # "agentResponse":Ljava/lang/Object;
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_1

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no agent found for Source = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .local v18, "id":J
    new-instance v10, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v10, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .local v20, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_2

    move/from16 v0, v20

    if-eq v7, v0, :cond_2

    const/16 v4, 0x3e8

    if-ne v7, v4, :cond_2

    move/from16 v7, v20

    :cond_2
    move/from16 v6, p2

    .local v6, "user_id":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! setConfigureBundleForCsInternal is NOT allowed for URI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v4, "applet_location"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "appletLocation":Ljava/lang/String;
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkPluginUsed(Ljava/lang/String;)Z

    move-result v21

    .local v21, "usedPlugin":Z
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_4

    const-string v4, "UcmService"

    const-string v5, "the plugin already is used"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0x22

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0x19

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    .end local v21    # "usedPlugin":Z
    :cond_5
    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v14

    .local v14, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v14, :cond_6

    const-string v4, "UcmService"

    const-string v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v14, v0, v1, v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v12

    if-nez v12, :cond_7

    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string v4, "intresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .local v17, "response":I
    const-string v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .local v16, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 21
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "certChain"    # [B
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCertificateChain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .local v20, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    move/from16 v0, v20

    if-eq v5, v0, :cond_1

    const/16 v2, 0x3e8

    if-ne v5, v2, :cond_1

    move/from16 v5, v20

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v19

    .local v19, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    const/16 v19, 0x1

    :cond_2
    if-eqz p3, :cond_3

    const-string v2, "admin_id"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v15, 0x0

    .local v15, "ismdmcaller":Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! setCertificateChain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    .end local v15    # "ismdmcaller":Z
    .end local v16    # "id":J
    :cond_4
    const/4 v15, 0x1

    goto :goto_1

    .restart local v15    # "ismdmcaller":Z
    .restart local v16    # "id":J
    :cond_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .local v13, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "user_id"

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ownerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resource"

    move/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extraArgs"

    move-object/from16 v0, p3

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCertificateChain KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_6

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v2, v0, v1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_7

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string v2, "booleanresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .local v18, "response":Z
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v18, :cond_8

    if-nez v14, :cond_8

    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for setCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_8
    move-object v11, v10

    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setConfigureBundleForCs(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "profile"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfigureBundleForCs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez p3, :cond_0

    const-string v1, "UcmService"

    const-string v2, "setConfigureBundleForCs : Bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "intresponse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "intresponse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setPackageSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 21
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "option"    # Landroid/os/Bundle;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "setPackageSetting"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_0

    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v13

    .end local v13    # "agentResponse":Ljava/lang/Object;
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v10, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v10, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .local v20, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_1

    move/from16 v0, v20

    if-eq v7, v0, :cond_1

    const/16 v4, 0x3e8

    if-ne v7, v4, :cond_1

    move/from16 v7, v20

    :cond_1
    move/from16 v6, p6

    .local v6, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .local v18, "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! setPackageSetting is NOT allowed for URI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .local v15, "argBundle":Landroid/os/Bundle;
    const-string v4, "callerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "user_id"

    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "ownerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "extraArgs"

    move-object/from16 v0, p5

    invoke-virtual {v15, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPackageSetting KEY_RESOURCE_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "resource"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPackageSetting KEY_USER_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "user_id"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPackageSetting KEY_CALLER_UID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "callerUid"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v14

    .local v14, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v14, :cond_3

    const-string v4, "UcmService"

    const-string v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v14, v0, v1, v2, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setPackageSetting(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    if-nez v12, :cond_4

    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string v4, "intresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .local v17, "response":I
    const-string v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .local v16, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setState(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "setState"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    if-nez p1, :cond_0

    const-string v4, "UcmService"

    const-string v5, "uri is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v4, 0x1

    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_3

    const-string v4, "UcmService"

    const-string v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-interface {v3, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setState(I)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move/from16 v5, v18

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    const/16 v17, 0x1

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! sign is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_6

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v19    # "userId":I
    :cond_5
    :goto_1
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_7

    const-string v2, "UcmService"

    const-string v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v19    # "userId":I
    :cond_6
    const-string v2, "UcmService"

    const-string v3, "sign user id id not valid. Keeping same userid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v19    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_8

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .local v16, "response":[B
    const-string v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sign Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v16, :cond_9

    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for sign"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public unwrapDek(Ljava/lang/String;[B)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "wrappedDek"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unwrapDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "unwrapDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    :cond_0
    const-string v5, "UcmService"

    const-string v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v5, "UcmService"

    const-string v6, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    const-string v5, "UcmService"

    const-string v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    :cond_4
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    :cond_5
    const-string v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unwrapDek Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public verifyPin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifyPin : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    :cond_0
    const-string v6, "UcmService"

    const-string v7, "uri is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p2, :cond_2

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_3

    :cond_2
    const-string v6, "UcmService"

    const-string v7, "pin is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v6, 0x1

    const-string v7, "boot_test"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_4

    const-string v6, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no agent found for Source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    const-string v6, "UcmService"

    const-string v7, "no agentService found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->verifyPin(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v6, "UcmService"

    const-string v7, "ERROR: Null Response received from agentService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string v6, "state"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .local v5, "state":I
    const-string v6, "remainCnt"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, "remainCnt":I
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOCK_STATE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REMAIN_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x83

    if-ne v5, v6, :cond_8

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    :cond_8
    const/16 v6, 0x85

    if-ne v5, v6, :cond_9

    const-string v6, "UcmService"

    const-string v7, "state changed to blocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x85

    invoke-direct {p0, v6, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendStateChangeBroadcast(ILjava/lang/String;)V

    :cond_9
    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifyPuk : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    :cond_0
    const-string v6, "UcmService"

    const-string v7, "uri is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p3, :cond_2

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_3

    :cond_2
    const-string v6, "UcmService"

    const-string v7, "pin is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v6, 0x1

    const-string v7, "boot_test"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_4

    const-string v6, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no agent found for Source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    const-string v6, "UcmService"

    const-string v7, "no agentService found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v6, "UcmService"

    const-string v7, "ERROR: Null Response received from agentService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string v6, "state"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .local v5, "state":I
    const-string v6, "remainCnt"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, "remainCnt":I
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOCK_STATE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REMAIN_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method
