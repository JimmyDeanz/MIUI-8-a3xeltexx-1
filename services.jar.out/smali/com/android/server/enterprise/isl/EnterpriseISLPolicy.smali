.class public Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;
.source "EnterpriseISLPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DIGEST_TYPE:Ljava/lang/String; = "SHA-256"

.field private static final ENTERPRISE_MDM_ID:Ljava/lang/String; = "mAdminID"

.field private static final IM_MIGRATION_STATUS:Ljava/lang/String; = "migrationRequiredPrefs"

.field private static final ISL_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.ISA_BIND_ACTION"

.field private static final ISL_VERSION:Ljava/lang/String; = "2.0"

.field private static final KNOX1_PREFIX:Ljava/lang/String; = "sec_container_1."

.field private static final MIGRATION_ACTION:Ljava/lang/String; = "com.sec.knox.migrationagent.START_IM_MIGRATION"

.field private static final MIGRATION_COMPLETE:Ljava/lang/String; = "com.sec.enterprise.knox.IM_MIGRATION_COMPLETE"

.field private static final MIGRATION_FLAG:Ljava/lang/String; = "migrationIMFlag"

.field private static final PARTITION_TO_SCAN:Ljava/lang/String; = "/system"

.field private static TAG:Ljava/lang/String; = null

.field public static final WATCH_EVENTS:I = 0xfc6

.field private static mAdminIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mFilesCount:I

.field private static mISAInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static mISAList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPersonaManager:Landroid/os/IPersonaManager;

.field private static mProgress:I

.field private static mSubscriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private static final syncObj:Ljava/lang/Object;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

.field private mSystemBinObserver:Landroid/os/FileObserver;

.field private mSystemFmwrkObserver:Landroid/os/FileObserver;

.field private mSystemXbinObserver:Landroid/os/FileObserver;

.field private final mTimaService:Landroid/service/tima/ITimaService;

.field private migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

.field private mySharedPreference:Landroid/content/SharedPreferences;

.field private perAdminPackageListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    .line 110
    const-string v0, "EnterpriseISLPolicyService"

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Landroid/os/IPersonaManager;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->syncObj:Ljava/lang/Object;

    .line 167
    sput v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    .line 169
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;-><init>()V

    .line 108
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    .line 127
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 129
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    .line 135
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 143
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    .line 171
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    .line 172
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    .line 173
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    .line 175
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    .line 176
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    .line 177
    const-string/jumbo v0, "tima"

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TIMA_SERVICE:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    .line 186
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseISLPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    .line 191
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 192
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    .line 195
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseISLPolicy Constructor ===== registerEnterpriseISLpolicyReciever() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerEnterpriseISLpolicyReciever()V

    .line 198
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseISLPolicy Constructor ===== registerMigrationReceiver() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerMigrationReceiver()V

    .line 200
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "migrationRequiredPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    .line 202
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 103
    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return p0
.end method

.method static synthetic access$1104()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 103
    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return p0
.end method

.method static synthetic access$1800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAllPackagesFromOwnerspace(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->islMigration(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendBroadcastToMDM(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Map;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/Map;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    return-object v0
.end method

.method private checkContainerOwner(II)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 496
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 499
    .local v0, "ownerUid":I
    if-ne p2, v0, :cond_0

    .line 500
    const/4 v1, 0x1

    .line 501
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkContainerOwner: Container: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " owned by Admin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    return v1
.end method

.method private static checkIfUserIsContainer(I)Z
    .locals 5
    .param p0, "containerId"    # I

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, "isUserPersona":Z
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfUserIsContainer: containerId value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 485
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Landroid/os/IPersonaManager;

    invoke-interface {v2, p0}, Landroid/os/IPersonaManager;->exists(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 490
    :cond_1
    :goto_0
    return v1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error at checkIfUserIsContainer : "

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

.method private doMigration3rdPartyUpdate()Z
    .locals 12

    .prologue
    .line 325
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, ">>>> doMigration3rdPartyUpdate"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    const/4 v1, 0x0

    .line 328
    .local v1, "bRet":Z
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 329
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "mMultiMap is empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v1

    .line 386
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_0
    return v2

    .line 334
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_2
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "full package list in DB"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mappingAdminPackageList()V

    .line 337
    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 338
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "No 3rd party in DB, do not need to migration"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_4
    const/4 v1, 0x1

    move v2, v1

    .line 340
    .restart local v2    # "bRet":I
    goto :goto_0

    .line 343
    .end local v2    # "bRet":I
    :cond_5
    const/4 v1, 0x1

    .line 345
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "check prefix & putBaseline"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_6
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 347
    .local v0, "admin":I
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_8

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "admin : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_8
    const/4 v6, 0x0

    .line 349
    .local v6, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v6

    .line 350
    if-nez v6, :cond_b

    .line 351
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "interfaceISA is null, need to bind isa"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_9
    const/4 v1, 0x0

    .end local v0    # "admin":I
    .end local v6    # "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    :cond_a
    :goto_1
    move v2, v1

    .line 386
    .restart local v2    # "bRet":I
    goto :goto_0

    .line 356
    .end local v2    # "bRet":I
    .restart local v0    # "admin":I
    .restart local v6    # "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    :cond_b
    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 357
    .local v8, "perAdminPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_7

    .line 360
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 361
    .local v7, "packageName":Ljava/lang/String;
    const-string/jumbo v9, "sec_container_1."

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 363
    :try_start_0
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_d

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "migration - packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_d
    invoke-interface {v6, v7}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->removePackageFromBaseline(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 366
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_e

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "removePackage failed - packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_e
    const/4 v1, 0x0

    .line 381
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_f
    if-nez v1, :cond_7

    goto :goto_1

    .line 371
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_10
    const-string/jumbo v9, "sec_container_1."

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->putPackageToBaseline(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 372
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_c

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "putPackage failed - packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 374
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Landroid/os/RemoteException;
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_11

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "migration exception : packagename : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_11
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private enforceEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)I
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 427
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 428
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 433
    :goto_0
    return v1

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    goto :goto_0
.end method

.method private enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getAdminISAMAPFromDB()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1078
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ISL getAdminISAMAPFromDB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "adminUid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "isaPackageName"

    aput-object v2, v0, v1

    .line 1080
    .local v0, "sReturnColumns":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    const-string v2, "EnterpriseIslFpTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->getAdminISAMapFromDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    .locals 5
    .param p1, "callMe"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    .prologue
    .line 470
    const/4 v2, -0x1

    .line 471
    .local v2, "retVal":I
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in getAdminId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 473
    .local v0, "i":I
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 474
    move v2, v0

    goto :goto_0

    .line 477
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method private getAllPackagesFromOwnerspace(I)Ljava/util/List;
    .locals 14
    .param p1, "ownerUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v11, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 509
    .local v8, "userManager":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 510
    .local v9, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v3, "mPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 512
    .local v10, "userlistSize":I
    sget-boolean v11, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Userlist size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 514
    .local v4, "pNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 516
    .local v7, "uf":Landroid/content/pm/UserInfo;
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    if-lez v11, :cond_2

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 521
    :cond_2
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    if-eqz v11, :cond_3

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v11, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 522
    :cond_3
    iget-object v11, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x5040

    iget v13, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    .line 524
    .local v5, "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-boolean v11, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v11, :cond_4

    sget-object v11, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "in getPackageList-- USER ID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Total PackageLists Size ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_4
    if-eqz v5, :cond_1

    .line 527
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 528
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_5

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    .line 529
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 532
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 538
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "uf":Landroid/content/pm/UserInfo;
    :cond_6
    if-eqz v4, :cond_7

    .line 539
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    .end local v3    # "mPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-object v3

    .restart local v3    # "mPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .locals 3
    .param p1, "adminUID"    # I

    .prologue
    .line 462
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getISAInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 464
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getISAInterface - ISAInterface not registered for the Admin--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    return-object v0
.end method

.method private getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pIsaName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1084
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ISL getPackageListfromDB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v0, v5

    const-string/jumbo v3, "isaPackageName"

    aput-object v3, v0, v6

    .line 1086
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    .line 1087
    .local v2, "sValues":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v3, "packageName"

    aput-object v3, v1, v5

    .line 1088
    .local v1, "sReturnColumns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    const-string v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->getPackageListfromDB(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static getPersonaManager()Landroid/os/IPersonaManager;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Landroid/os/IPersonaManager;

    if-nez v0, :cond_0

    .line 208
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Landroid/os/IPersonaManager;

    .line 210
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Landroid/os/IPersonaManager;

    return-object v0
.end method

.method private getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .locals 3
    .param p1, "adminUID"    # I

    .prologue
    .line 453
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getSubscriberInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 455
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSubscriberInstance - Subscriber not registered for the Admin--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    return-object v0
.end method

.method private islMigration(Z)V
    .locals 6
    .param p1, "bSendIntent"    # Z

    .prologue
    const/4 v5, 0x1

    .line 238
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, ">>> islMigration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 240
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->doMigration3rdPartyUpdate()Z

    move-result v0

    .line 243
    .local v0, "bMigration":Z
    if-ne v0, v5, :cond_4

    .line 244
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "EnterpriseISLPolicyMigrationReceiver onReceive ---- Migration Success"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    const-string/jumbo v3, "migrationIMFlag"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    :cond_2
    :goto_0
    if-ne p1, v5, :cond_3

    .line 252
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.enterprise.knox.IM_MIGRATION_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v2, "in":Landroid/content/Intent;
    const-string v3, "IM_MIGRATION_RESULT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 256
    .end local v2    # "in":Landroid/content/Intent;
    :cond_3
    return-void

    .line 248
    :cond_4
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "EnterpriseISLPolicyMigrationReceiver onReceive ---- Migration Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mappingAdminPackageList()V
    .locals 9

    .prologue
    .line 390
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 394
    .local v0, "admin":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select packageName from EnterpriseIslFpTable Where adminUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NOT IN ( \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "prebaseLine"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' , \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 400
    .local v1, "cr":Landroid/database/Cursor;
    iget-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 401
    if-eqz v1, :cond_3

    .line 403
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 404
    const-string/jumbo v6, "packageName"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "pckg":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 406
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    sget-boolean v6, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The Admin id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " The package Name is ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 411
    .end local v4    # "pckg":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 415
    iget-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 418
    .end local v0    # "admin":I
    .end local v1    # "cr":Landroid/database/Cursor;
    .end local v5    # "sql":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1093
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1094
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1095
    if-eqz p1, :cond_1

    .line 1096
    const-string/jumbo v1, "sec_container_1."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1097
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove the knox 1.0 prefix - package name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_0
    const-string/jumbo v1, "sec_container_1."

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1103
    :cond_1
    return-object p1
.end method

.method private removeKnox1PrefixList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1108
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1109
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1110
    if-eqz p1, :cond_1

    .line 1111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    .local v2, "packageNamesModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1113
    .local v3, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1115
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_0
    move-object p1, v2

    .line 1118
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageNamesModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object p1
.end method

.method private sendBroadcastToMDM(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 268
    const/4 v7, -0x1

    .line 269
    .local v7, "mdmUid":I
    const/4 v1, 0x0

    .line 270
    .local v1, "flag":Z
    const/4 v6, 0x0

    .line 271
    .local v6, "mdmPkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 272
    .local v3, "isMdmuser":Z
    iget-object v12, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 273
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v5

    .line 274
    .local v5, "mAdminISAMapFromDB":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v12, "android.intent.extra.user_handle"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 275
    .local v11, "userHandle":I
    const-string v12, "android.intent.extra.UID"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 276
    .local v10, "uID":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "package:"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "pkg":Ljava/lang/String;
    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 279
    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 280
    .local v4, "key":I
    move v7, v4

    .line 281
    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v6, v12, v13

    .line 282
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const/4 v12, -0x1

    if-le v7, v12, :cond_4

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 285
    const/4 v3, 0x1

    .line 286
    sget-boolean v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v12, :cond_1

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " sendBroadcastToMDM-- containerId= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " UID= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " PackageName= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    const/4 v1, 0x1

    .line 316
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 317
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendintent(Landroid/content/Intent;Z)V

    .line 321
    :cond_3
    return-void

    .line 289
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":I
    :cond_4
    invoke-static {v11}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v11, :cond_0

    .line 290
    sget-boolean v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v12, :cond_5

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "sendBroadcastToMDM-- user is a normal guest user "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_5
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendintent(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 295
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":I
    :cond_6
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 296
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 297
    .restart local v4    # "key":I
    move v7, v4

    .line 298
    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v6, v12, v13

    .line 299
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const/4 v12, -0x1

    if-le v7, v12, :cond_9

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 302
    const/4 v3, 0x1

    .line 303
    sget-boolean v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v12, :cond_8

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " sendBroadcastToMDM-- containerId= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " UID= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " PackageName= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_8
    const/4 v1, 0x1

    .line 305
    goto/16 :goto_1

    .line 306
    :cond_9
    invoke-static {v11}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v12

    if-nez v12, :cond_7

    if-eqz v11, :cond_7

    .line 307
    sget-boolean v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v12, :cond_a

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "sendBroadcastToMDM-- user is a normal guest user "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_a
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendintent(Landroid/content/Intent;Z)V

    goto :goto_2

    .line 312
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":I
    :cond_b
    sget-boolean v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v12, :cond_2

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v13, "No Admin on Device !!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private sendintent(Landroid/content/Intent;Z)V
    .locals 4
    .param p1, "in"    # Landroid/content/Intent;
    .param p2, "isMdmuser"    # Z

    .prologue
    .line 260
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, ">>>> sendintent to Admins  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    const-string/jumbo v2, "isMdmUser"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 263
    .local v0, "id":J
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 264
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    return-void
.end method


# virtual methods
.method public clearBaseline(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 984
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in clearBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 986
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 987
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 988
    if-eqz v2, :cond_2

    .line 990
    :try_start_0
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->clearBaseline()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 998
    :goto_0
    return v3

    .line 991
    :catch_0
    move-exception v1

    .line 992
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 995
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "clearBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public convertEventToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 803
    const/4 v0, 0x0

    .line 804
    .local v0, "ret":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 841
    :goto_0
    return-object v0

    .line 806
    :sswitch_0
    const-string v0, "Attribute modified"

    .line 807
    goto :goto_0

    .line 810
    :sswitch_1
    const-string v0, "File modified"

    .line 811
    goto :goto_0

    .line 814
    :sswitch_2
    const-string v0, "File or subdirectory moved from"

    .line 815
    goto :goto_0

    .line 818
    :sswitch_3
    const-string v0, "File or subdirectory moved to"

    .line 819
    goto :goto_0

    .line 822
    :sswitch_4
    const-string v0, "New file or subdirectory created"

    .line 823
    goto :goto_0

    .line 826
    :sswitch_5
    const-string v0, "File deleted"

    .line 827
    goto :goto_0

    .line 830
    :sswitch_6
    const-string v0, "Deleted Self"

    .line 831
    goto :goto_0

    .line 834
    :sswitch_7
    const-string v0, "Moved Self"

    .line 835
    goto :goto_0

    .line 804
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x40 -> :sswitch_2
        0x80 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x400 -> :sswitch_6
        0x800 -> :sswitch_7
    .end sparse-switch
.end method

.method public establishBaselineScan(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "compareWithPreBaseline"    # Z

    .prologue
    .line 949
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in establishBaselineScan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 951
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 952
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 953
    if-eqz v2, :cond_2

    .line 955
    :try_start_0
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->establishBaselineScan(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 962
    :goto_0
    return v3

    .line 956
    :catch_0
    move-exception v1

    .line 957
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 960
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "establishBaselineScan - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getISAList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
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
    .line 568
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "in getISAList"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 571
    .local v3, "pm":Landroid/content/pm/PackageManager;
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 572
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v9

    iget v0, v9, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 574
    .local v0, "adminId":I
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.ISA_BIND_ACTION"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v1, "bindInent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 577
    .local v4, "id":J
    const/4 v9, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v3, v1, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 578
    .local v8, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 581
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 582
    .local v6, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 583
    .local v7, "servcInfo":Landroid/content/pm/ServiceInfo;
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_1

    .line 585
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getISAList - Package  Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getISAList - Service  Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getISAList - No package found with ISL intent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_3
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    return-object v9
.end method

.method public isISAReady(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 724
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in isISAReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 726
    .local v0, "adminUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 727
    const/4 v1, 0x1

    .line 730
    :goto_0
    return v1

    .line 729
    :cond_1
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISA Service could not be found for Admin_uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1839
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1851
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1852
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1853
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1854
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1855
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1857
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1845
    return-void
.end method

.method public performPreBaselineScan(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 931
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in performPreBaselineScan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 933
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 934
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 935
    if-eqz v2, :cond_2

    .line 937
    :try_start_0
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performPreBaselineScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 945
    :goto_0
    return v3

    .line 938
    :catch_0
    move-exception v1

    .line 939
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 942
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "performPreBaselineScan - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public performScanNow(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 966
    .local p3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in performScanNow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 968
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 969
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 970
    if-eqz v2, :cond_2

    .line 972
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1PrefixList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 973
    invoke-interface {v2, p2, p3}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performScanNow(ILjava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 980
    :goto_0
    return v3

    .line 974
    :catch_0
    move-exception v1

    .line 975
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 978
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "performScanNow - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public putPackageToBaseline(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1002
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in putPackageToBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1004
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1005
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 1006
    if-eqz v2, :cond_2

    .line 1008
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1009
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->putPackageToBaseline(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1016
    :goto_0
    return v3

    .line 1010
    :catch_0
    move-exception v1

    .line 1011
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1014
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "putPackageToBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerEnterpriseISLpolicyReciever()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 553
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEnterpriseISLpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    .line 555
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 556
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 562
    return-void
.end method

.method public registerMigrationReceiver()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 545
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerMigrationReceiver - Registering the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    .line 547
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 548
    .local v3, "migrationfilter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.knox.migrationagent.START_IM_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 550
    return-void
.end method

.method public removePackageFromBaseline(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1020
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in removePackageFromBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1022
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1023
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 1024
    if-eqz v2, :cond_2

    .line 1026
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1027
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->removePackageFromBaseline(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1034
    :goto_0
    return v3

    .line 1028
    :catch_0
    move-exception v1

    .line 1029
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1032
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestBindISA(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 603
    const/16 v19, 0x0

    .line 604
    .local v19, "ret":Z
    const/4 v13, 0x1

    .line 606
    .local v13, "flag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 607
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_0

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v24, "EnterpriseISLPolicyReceiver already registered"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 613
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_1

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v24, "EnterpriseISLPolicyMigrationReceiver already registered"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 620
    :cond_2
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_3

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "requestBindISA - packageName is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_3
    const/16 v23, 0x0

    .line 717
    :goto_2
    return v23

    .line 609
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerEnterpriseISLpolicyReciever()V

    goto :goto_0

    .line 615
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerMigrationReceiver()V

    goto :goto_1

    .line 624
    :cond_6
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_7

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "in requestBindISA - packageName is -- "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 627
    .local v5, "adminId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v16

    .line 629
    .local v16, "mAdminISAMapFromDB":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v23, "MigrationAgent"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 630
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_8

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "requestBindISA from Migration Agent"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 632
    .local v15, "key":I
    move v5, v15

    .line 633
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "packageName":Ljava/lang/String;
    check-cast p2, Ljava/lang/String;

    .line 634
    .restart local p2    # "packageName":Ljava/lang/String;
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_9

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "adminID : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", packageName : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":I
    :cond_9
    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v23

    if-lez v23, :cond_c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 642
    :cond_a
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_b

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "in requestBindISA - when the map is empty we must check the DB and get the admin for which last binding was there"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 648
    :cond_c
    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_e

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    .line 649
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_d

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "in requestBindISA - add the multiple MDM support backtracking"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 654
    :cond_e
    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_10

    .line 655
    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 656
    .restart local v15    # "key":I
    if-ne v5, v15, :cond_f

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_f

    .line 657
    const/4 v13, 0x0

    .line 663
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":I
    :cond_10
    if-nez v13, :cond_12

    .line 664
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_11

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "in requestBindISA - checking if any of the entries do have ISA so prevent other MDM to bind to that ISA, failed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 668
    :cond_12
    new-instance v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)V

    .line 669
    .local v9, "cISAConnect":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 672
    .local v17, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v23, "com.samsung.android.ISA_BIND_ACTION"

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v8, "bindInent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 674
    .local v6, "backupUID":J
    const/16 v23, 0x0

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v21

    .line 675
    .local v21, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 677
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_19

    .line 678
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 679
    .local v18, "resInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    .line 680
    .local v20, "servcInfo":Landroid/content/pm/ServiceInfo;
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_14

    .line 681
    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "requestBindISA - Package  Name -- "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "requestBindISA - Service  Name -- "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_14
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 686
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .local v12, "compName":Landroid/content/ComponentName;
    if-eqz v12, :cond_13

    .line 691
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_15

    .line 692
    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Comp Name -- "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Comp Class -- "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_15
    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 698
    .local v4, "action":Landroid/content/Intent;
    invoke-virtual {v4, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 700
    new-instance v22, Landroid/os/UserHandle;

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    .line 701
    .local v22, "uHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 702
    .local v10, "callID":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v9, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 703
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    const/16 v19, 0x1

    .line 713
    .end local v4    # "action":Landroid/content/Intent;
    .end local v10    # "callID":J
    .end local v12    # "compName":Landroid/content/ComponentName;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "servcInfo":Landroid/content/pm/ServiceInfo;
    .end local v22    # "uHandle":Landroid/os/UserHandle;
    :cond_16
    :goto_3
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string/jumbo v24, "migrationIMFlag"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 714
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_17

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v24, ">>> requestBind IM Migration Starts-- "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_17
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->islMigration(Z)V

    :cond_18
    move/from16 v23, v19

    .line 717
    goto/16 :goto_2

    .line 710
    :cond_19
    sget-boolean v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v23, :cond_16

    sget-object v23, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "requestBindISA - No package found with ISL intent"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setISLCallBack(I)V
    .locals 5
    .param p1, "adminId"    # I

    .prologue
    .line 785
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in setISLCallBack"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    const/4 v2, 0x0

    .line 787
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 788
    if-eqz v2, :cond_2

    .line 790
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    .line 791
    .local v0, "callMe":Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
    invoke-interface {v2, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->setISLCallBack(Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;)V

    .line 792
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    .end local v0    # "callMe":Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
    :cond_1
    :goto_0
    return-void

    .line 794
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setISLCallBack - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIntegrityResultSubscriber(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;)V
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "subscriber"    # Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    .prologue
    .line 1056
    if-nez p2, :cond_1

    .line 1057
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setIntegrityResultSubscriber - subscriber is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in setIntegrityResultSubscriber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    iget v0, v2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1063
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v2, :cond_0

    .line 1069
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    new-instance v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    invoke-interface {v2, v3}, Landroid/service/tima/ITimaService;->setISLCallback(Landroid/service/tima/ITimaISLCallback;)V

    .line 1070
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "call back registered with TIMA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1071
    :catch_0
    move-exception v1

    .line 1072
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRuntimeWatch(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v3, 0xfc6

    .line 845
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in startRuntimeWatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 847
    .local v0, "adminUid":I
    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_1

    .line 850
    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v2, "/system/bin/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    .line 852
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 854
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_2

    .line 855
    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v2, "/system/xbin/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    .line 857
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 860
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_3

    .line 861
    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v2, "/system/framework/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    .line 863
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 865
    const/4 v1, 0x1

    return v1
.end method

.method public stopRuntimeWatch(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 869
    const/4 v2, 0x0

    .line 870
    .local v2, "retValue":Z
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in stopRuntimeWatch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 872
    .local v0, "admin_UID":I
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 873
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 874
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 875
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 876
    const/4 v2, 0x1

    .line 898
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v2

    .line 873
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 881
    .end local v1    # "i":I
    :cond_3
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 882
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List contains Admin Id ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    sget-object v4, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 884
    const/4 v2, 0x1

    .line 885
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 886
    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    .line 887
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 888
    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    .line 889
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 890
    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    .line 891
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Stopping system bin watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Stopping system xbin watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Stopping system framework watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1833
    return-void
.end method

.method public updatePlatformBaseline(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1038
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in updatePlatformBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1040
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1041
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 1042
    if-eqz v2, :cond_2

    .line 1044
    :try_start_0
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->updatePlatformBaseline()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1051
    :goto_0
    return v3

    .line 1045
    :catch_0
    move-exception v1

    .line 1046
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1049
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updatePlatformBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
