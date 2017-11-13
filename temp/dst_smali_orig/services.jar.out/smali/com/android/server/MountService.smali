.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$MountServiceInternalImpl;,
        Lcom/android/server/MountService$DirEncryptListner;,
        Lcom/android/server/MountService$Callbacks;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$PackageInstalledMap;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FORCE_ADOPTABLE:Ljava/lang/String; = "forceAdoptable"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CRYPTD_TAG:Ljava/lang/String; = "CryptdConnector"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final ENCRYPT_ERROR_NAME:Ljava/lang/String; = "error_not_encrypted"

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final PROPERTY_ENCRYPT_NAME:Ljava/lang/String; = "vold.encrypt_progress"

.field private static final RESTRICTION3_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy3"

.field private static final RESTRICTION4_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy4"

.field private static final RESTRICTIONPOLICY_SDCARDENABLED_METHOD:Ljava/lang/String; = "isSdCardEnabled"

.field private static final RESTRICTIONPOLICY_SDCARDWRITEALLOW_METHOD:Ljava/lang/String; = "isSDCardWriteAllowed"

.field private static final RESTRICTIONPOLICY_USBHOSTSTORAGE_METHOD:Ljava/lang/String; = "isUsbHostStorageAllowed"

.field private static final RESTRICTIONPOLICY_USBMASSSTORAGE_METHOD:Ljava/lang/String; = "isUsbMassStorageEnabled"

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z

.field static sSelf:Lcom/android/server/MountService;


# instance fields
.field private final SEC_ODE_POLICY_SET:I

.field private final SEC_ODE_POLICY_UNSET:I

.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/MountService$PackageInstalledMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private final mCallbacks:Lcom/android/server/MountService$Callbacks;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private final mContext:Landroid/content/Context;

.field private final mCryptConnector:Lcom/android/server/NativeDaemonConnector;

.field private volatile mDaemonConnected:Z

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceAdoptable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private final mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mMoveTargetUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mPrimaryStorageUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureContainerVolume:Landroid/os/storage/StorageVolume;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private mStartedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mSystemReady:Z

.field private final mUnmountLock:Ljava/lang/Object;

.field private mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUnmountLock"
    .end annotation
.end field

.field private mUsbStorageBooster:Landroid/os/DVFSHelper;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumes:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private physicalVolumeLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/MountService;->SEC_ODE_POLICY_SET:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/MountService;->SEC_ODE_POLICY_UNSET:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->physicalVolumeLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mUnmountLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    new-instance v0, Lcom/android/server/MountService$MountServiceInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceInternalImpl;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$1;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    new-instance v0, Lcom/android/server/MountService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    new-instance v0, Lcom/android/server/MountService$3;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    sput-object p0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/MountService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/MountService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    new-instance v10, Landroid/os/HandlerThread;

    const-string v0, "MountService"

    invoke-direct {v10, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v10, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    .local v8, "dataDir":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string v0, "system"

    invoke-direct {v11, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v11, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v1, "last-fstrim"

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "storage.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/MountService;->readSettingsLocked()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v0, Landroid/os/storage/MountServiceInternal;

    iget-object v1, p0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    new-instance v12, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector"

    invoke-direct {v12, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v12, "thread":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "cryptd"

    const/16 v3, 0x1f4

    const-string v4, "CryptdConnector"

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "CryptdConnector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v7, "crypt_thread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .local v13, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/MountService;->addInternalVolume()V

    invoke-direct {p0}, Lcom/android/server/MountService;->registerDeviceRestriction()V

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v2, "com.android.server"

    const/16 v3, 0x16

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;

    return-void

    .end local v7    # "crypt_thread":Ljava/lang/Thread;
    .end local v12    # "thread":Ljava/lang/Thread;
    .end local v13    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create fstrim record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private ApplyCurrentSdCardPolicy(Z)V
    .locals 13
    .param p1, "unAvailable"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    .local v3, "removeEncryption":Z
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ApplyCurrentSdCardPolicy :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v12, :cond_4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v0, v9, :cond_4

    iget-object v9, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/VolumeInfo;

    .local v8, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, v8, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .local v7, "vPath":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .local v6, "vId":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removable storage path :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v9, v8, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v9, v12, :cond_3

    const/16 v4, 0x1e

    .local v4, "retries":I
    move v5, v4

    .end local v4    # "retries":I
    .local v5, "retries":I
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getState()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-ne v9, v12, :cond_5

    add-int/lit8 v4, v5, -0x1

    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    if-ltz v5, :cond_2

    const-wide/16 v10, 0x3e8

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v4

    .end local v4    # "retries":I
    .restart local v5    # "retries":I
    goto :goto_2

    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    :catch_0
    move-exception v1

    .local v1, "iex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v9, "MountService"

    const-string v10, "Interrupted while waiting for media"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "iex":Ljava/lang/InterruptedException;
    :cond_2
    :goto_3
    if-nez v4, :cond_3

    const-string v9, "MountService"

    const-string v10, "Timed out waiting for media to check"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "retries":I
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .local v2, "ilex":Ljava/lang/IllegalArgumentException;
    const-string v9, "MountService"

    const-string v10, "volume removed, while waiting "

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "ilex":Ljava/lang/IllegalArgumentException;
    .end local v6    # "vId":Ljava/lang/String;
    .end local v7    # "vPath":Ljava/lang/String;
    .end local v8    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_4
    return-void

    .restart local v0    # "i":I
    .restart local v5    # "retries":I
    .restart local v6    # "vId":Ljava/lang/String;
    .restart local v7    # "vPath":Ljava/lang/String;
    .restart local v8    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_5
    move v4, v5

    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    goto :goto_3
.end method

.method private SMdump()[Landroid/os/storage/StorageVolume;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .local v0, "storage":Landroid/os/storage/StorageManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->systemReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/MountService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->onStartUser(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->shouldBenchmark()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->physicalVolumeLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->logEncryptionState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/MountService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/MountService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->remountUidExternalStorage(II)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/MountService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->ApplyCurrentSdCardPolicy(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->handleDaemonConnected()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/MountService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/server/MountService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/MountService;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    return-object v0
.end method

.method public static addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    if-eqz p0, :cond_0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private addInternalVolume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string v1, "private"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 7
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .local v3, "o":Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "o":Lcom/android/server/MountService$ObbState;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    throw v1
.end method

.method private addPrivateVolume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.secretmode_service"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .local v0, "ENABLE_PRIVATEMODE":Z
    if-nez v0, :cond_0

    const-string v3, "MountService"

    const-string v4, "This model is not supported privatemode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v3, "MountService"

    const-string v4, "MountService addPrivateVolume"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/storage/VolumeInfo;

    const-string v3, "privatemode"

    invoke-direct {v2, v3, v5, v6, v6}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .local v2, "private_volume":Landroid/os/storage/VolumeInfo;
    iput v5, v2, Landroid/os/storage/VolumeInfo;->state:I

    iget v3, v2, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/os/storage/VolumeInfo;->mountFlags:I

    const-string v3, "/storage/Private"

    iput-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "forVold"    # Z

    .prologue
    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_1

    .end local p0    # "canonicalPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "canonicalPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .local v5, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .local v0, "externalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .local v1, "legacyExternalPath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v2, "Android/obb"

    .local v2, "obbPath":Ljava/lang/String;
    const-string v6, "Android/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Android/obb"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .local v3, "ownerEnv":Landroid/os/Environment$UserEnvironment;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v2    # "obbPath":Ljava/lang/String;
    .end local v3    # "ownerEnv":Landroid/os/Environment$UserEnvironment;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .restart local v2    # "obbPath":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private checkExternalSecureContainerMounted()Z
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .local v1, "mStorageVolumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    aget-object v3, v1, v0

    .local v3, "vol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Description : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .end local v3    # "vol":Landroid/os/storage/StorageVolume;
    :goto_1
    return v4

    .restart local v3    # "vol":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "vol":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkSystemUid()Z
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "requester":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const-string v1, "MountService"

    const-string v2, "Invalid uid. Only SYSTEM can use MountService Call."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private cleanupSercureContainerList(Ljava/lang/String;)V
    .locals 4
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    const-string v2, "all"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$PackageInstalledMap;

    .local v1, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-boolean v2, v1, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-eqz v2, :cond_3

    const-string v2, "external"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "iter":Ljava/util/Iterator;
    .restart local v1    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :cond_3
    :try_start_1
    iget-boolean v2, v1, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-nez v2, :cond_2

    const-string v2, "internal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private copyLocaleFromMountService()V
    .locals 7

    .prologue
    :try_start_0
    const-string v4, "SystemLocale"

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "systemLocale":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v3    # "systemLocale":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "systemLocale":Ljava/lang/String;
    :cond_0
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .local v2, "locale":Ljava/util/Locale;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting system properties to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "persist.sys.locale"

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v4, "MountService"

    const-string v5, "Error setting system locale from mount service"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private enforceAdminUser()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Only admin users can adopt sd cards"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1    # "isAdmin":Z
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .restart local v1    # "isAdmin":Z
    :cond_0
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .locals 3
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-object v0

    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    monitor-exit v3

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_1
    return-object v2

    .restart local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "emulated"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_0

    monitor-exit v2

    return-object v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No volume found for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    monitor-exit v3

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No volume found for path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private forgetPartition(Ljava/lang/String;)V
    .locals 6
    .param p1, "partGuid"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "forget_partition"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to forget key for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "primary_physical"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleDaemonConnected()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const-string v0, ""

    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountService;->copyLocaleFromMountService()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method private handleSystemReady()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hasDeviceRestriction(Ljava/lang/String;)Z
    .locals 9
    .param p1, "restriction"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "usbhost_storage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isUsbHostStorageAllowed"

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "true"

    aput-object v8, v5, v4

    invoke-direct {p0, p1, v6, v7, v5}, Lcom/android/server/MountService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v6, "sdcard_storage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSdCardEnabled"

    invoke-direct {p0, p1, v4, v5, v8}, Lcom/android/server/MountService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    const-string v6, "storage_itpolicy"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    if-nez v2, :cond_3

    const-string v5, "MountService"

    const-string v6, "hasDeviceRestriction: DevicePolicyManager is NULL"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v0

    .local v0, "check":Z
    if-nez v0, :cond_4

    const-string v6, "storage_itpolicy_ui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "MountService"

    const-string v7, "Send ACTION_SDCARD_ITPOLICY_TOAST_EVENT INTENT!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.SDCARD_ITPOLICY_TOAST_EVENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "toastintent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v3    # "toastintent":Landroid/content/Intent;
    :cond_4
    if-nez v0, :cond_0

    const-string v4, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "policy has restriction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    .end local v0    # "check":Z
    .end local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    :cond_5
    const-string v6, "storage_kor_mdm"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "persist.sys.microsd_lock"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "externalstorage_lock_state":Ljava/lang/String;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "externalstorage_lock_state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "microsd_lock.enabled"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto/16 :goto_0

    .end local v1    # "externalstorage_lock_state":Ljava/lang/String;
    :cond_6
    const-string v6, "mass_storage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isUsbMassStorageEnabled"

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "true"

    aput-object v8, v5, v4

    invoke-direct {p0, p1, v6, v7, v5}, Lcom/android/server/MountService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_0

    :cond_7
    const-string v5, "readonly_storage"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v5, "isSDCardWriteAllowed"

    invoke-direct {p0, p1, v4, v5, v8}, Lcom/android/server/MountService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_0

    :cond_8
    const-string v5, "MountService"

    const-string v6, "not define policy !!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "restrict":Ljava/lang/String;
    const-string v0, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", restrict(allow) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "false"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v8    # "restrict":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v6    # "cr":Landroid/database/Cursor;
    .restart local v8    # "restrict":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v8    # "restrict":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/lang/Exception;
    const-string v0, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isDeviceEncrypting()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "encrypt":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "error_not_encrypted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isExternalSecureContainer(Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "isExt":Z
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MountService$PackageInstalledMap;

    .local v2, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v3, v2, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v0, v2, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    .end local v2    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExternalSecureContainer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .locals 12
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isMountDisallowed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "ro.crypto.state"

    const-string v10, "fail"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "encrypt_state":Ljava/lang/String;
    const-string v0, "null"

    .local v0, "decrypt_state":Ljava/lang/String;
    const-string v9, "encrypted"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "vold.decrypt"

    const-string v10, "fail"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "trigger_restart_framework"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!!Skip!!! mount request : encrypt_state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", decrypt_state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "to protect sdcardfs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v4, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    .local v5, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v9, :cond_2

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v8, "MountService"

    const-string v9, "SDcard is restricted in MDM"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5, v7}, Landroid/app/enterprise/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v9, :cond_3

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v8, "MountService"

    const-string v9, "USB MEMORY is restricted in MDM"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_3
    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v9, :cond_4

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-eqz v9, :cond_4

    move v2, v7

    .local v2, "isSdCard":Z
    :goto_1
    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v9, :cond_5

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v9

    if-eqz v9, :cond_5

    move v3, v7

    .local v3, "isUsbHost":Z
    :goto_2
    const-string v9, "storage_kor_mdm"

    invoke-direct {p0, v9}, Lcom/android/server/MountService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v8, "MountService"

    const-string v9, "Policy has restriction \'storage_kor_mdm\'; cannot mount volume."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "isSdCard":Z
    .end local v3    # "isUsbHost":Z
    :cond_4
    move v2, v8

    goto :goto_1

    .restart local v2    # "isSdCard":Z
    :cond_5
    move v3, v8

    goto :goto_2

    .restart local v3    # "isUsbHost":Z
    :cond_6
    if-eqz v2, :cond_7

    const-string v9, "sdcard_storage"

    invoke-direct {p0, v9}, Lcom/android/server/MountService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v8, "MountService"

    const-string v9, "Policy has restriction \'sdcard\'; cannot mount volume."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_8

    const-string v9, "usbhost_storage"

    invoke-direct {p0, v9}, Lcom/android/server/MountService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v8, "MountService"

    const-string v9, "Policy has restriction \'usbhost_storage\'; cannot mount volume."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v9, "storage_itpolicy_ui"

    invoke-direct {p0, v9}, Lcom/android/server/MountService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v8, "MountService"

    const-string v9, "Policy has restriction \'storage_itpolicy_ui\'; cannot mount volume."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget v9, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v9, :cond_a

    iget v9, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v9, v7, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .local v6, "userManager":Landroid/os/UserManager;
    const-string v7, "no_physical_media"

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    goto/16 :goto_0

    .end local v6    # "userManager":Landroid/os/UserManager;
    :cond_b
    move v7, v8

    goto/16 :goto_0
.end method

.method private isReady()Z
    .locals 5

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .local v0, "packageUid":I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callerUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private killMediaProvider()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "media"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .local v1, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_1
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const-string v6, "vold reset"

    invoke-interface {v0, v4, v5, v6}, Landroid/app/IActivityManager;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v1    # "provider":Landroid/content/pm/ProviderInfo;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "provider":Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private logEncryptionState()V
    .locals 9

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .local v7, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .local v6, "userId":I
    if-nez v7, :cond_1

    const/4 v8, -0x1

    .local v8, "encryptionStatus":I
    :goto_0
    const/4 v2, 0x3

    if-eq v8, v2, :cond_0

    const/4 v2, 0x2

    if-eq v8, v2, :cond_0

    const/4 v2, 0x4

    if-ne v8, v2, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage encryption is active."

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void

    .end local v8    # "encryptionStatus":I
    :cond_1
    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v8

    goto :goto_0

    .restart local v8    # "encryptionStatus":I
    :cond_2
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage encryption is inactive."

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private onCleanupUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCleanupUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "volume"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "user_stopped"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .locals 7
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    const/4 v4, 0x0

    .local v4, "volumeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v5, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "android.os.storage.extra.DISK_ID"

    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    iget-object v5, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    iput v4, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V
    invoke-static {v5, p1, v4}, Lcom/android/server/MountService$Callbacks;->access$2100(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method private onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 39
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "builder":Ljava/lang/StringBuilder;
    const-string v36, "onEvent::"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " raw= "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v36, " cooked = "

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    aget-object v31, v4, v19

    .local v31, "str":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v31    # "str":Ljava/lang/String;
    :cond_0
    const-string v36, "MountService"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v36, "MountService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unhandled vold event "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/16 v36, 0x1

    return v36

    :pswitch_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    const/16 v36, 0x1

    aget-object v20, p3, v36

    .local v20, "id":Ljava/lang/String;
    const/16 v36, 0x2

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .local v17, "flags":I
    const-string v36, "persist.fw.force_adoptable"

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    if-nez v36, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mForceAdoptable:Z

    move/from16 v36, v0

    if-eqz v36, :cond_3

    :cond_2
    or-int/lit8 v17, v17, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    new-instance v37, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v17    # "flags":I
    .end local v20    # "id":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .local v12, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v12, :cond_1

    const/16 v36, 0x2

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    iput-wide v0, v12, Landroid/os/storage/DiskInfo;->size:J

    goto :goto_1

    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .restart local v12    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v12, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    const/16 v18, 0x2

    .local v18, "i":I
    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v18

    move/from16 v1, v36

    if-ge v0, v1, :cond_4

    aget-object v36, p3, v18

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x20

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v12, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    goto/16 :goto_1

    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    .end local v18    # "i":I
    :pswitch_4
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .restart local v12    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/MountService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_1

    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .restart local v12    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v12, :cond_1

    const/16 v36, 0x2

    aget-object v36, p3, v36

    move-object/from16 v0, v36

    iput-object v0, v12, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    goto/16 :goto_1

    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .restart local v12    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    invoke-static {v0, v12}, Lcom/android/server/MountService$Callbacks;->access$2000(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_1

    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_7
    const/16 v36, 0x1

    aget-object v20, p3, v36

    .restart local v20    # "id":Ljava/lang/String;
    const/16 v36, 0x2

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .local v34, "type":I
    const/16 v36, 0x3

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "diskId":Ljava/lang/String;
    const/16 v36, 0x4

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .local v25, "partGuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .restart local v12    # "disk":Landroid/os/storage/DiskInfo;
    new-instance v35, Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    move/from16 v2, v34

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v12, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .local v35, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    goto/16 :goto_1

    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    .end local v13    # "diskId":Ljava/lang/String;
    .end local v20    # "id":Ljava/lang/String;
    .end local v25    # "partGuid":Ljava/lang/String;
    .end local v34    # "type":I
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_8
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_1

    move-object/from16 v0, v35

    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    move/from16 v24, v0

    .local v24, "oldState":I
    const/16 v36, 0x2

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .local v23, "newState":I
    move/from16 v0, v23

    move-object/from16 v1, v35

    iput v0, v1, Landroid/os/storage/VolumeInfo;->state:I

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/MountService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    goto/16 :goto_1

    .end local v23    # "newState":I
    .end local v24    # "oldState":I
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_9
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_1

    const/16 v36, 0x2

    aget-object v36, p3, v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    goto/16 :goto_1

    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_a
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_1

    const/16 v36, 0x2

    aget-object v36, p3, v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    goto/16 :goto_1

    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    const/16 v18, 0x2

    .restart local v18    # "i":I
    :goto_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v18

    move/from16 v1, v36

    if-ge v0, v1, :cond_5

    aget-object v36, p3, v18

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x20

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    goto/16 :goto_1

    .end local v18    # "i":I
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_c
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_1

    const/16 v36, 0x2

    aget-object v36, p3, v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    goto/16 :goto_1

    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_d
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_1

    const/16 v36, 0x2

    aget-object v36, p3, v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    goto/16 :goto_1

    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_e
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_f
    const/16 v36, 0x1

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .local v30, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    goto/16 :goto_1

    .end local v30    # "status":I
    :pswitch_10
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x7

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    const/16 v36, 0x1

    aget-object v26, p3, v36

    .local v26, "path":Ljava/lang/String;
    const/16 v36, 0x2

    aget-object v21, p3, v36

    .local v21, "ident":Ljava/lang/String;
    const/16 v36, 0x3

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .local v8, "create":J
    const/16 v36, 0x4

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .local v14, "drop":J
    const/16 v36, 0x5

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .local v28, "run":J
    const/16 v36, 0x6

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .local v10, "destroy":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-class v37, Landroid/os/DropBoxManager;

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/DropBoxManager;

    .local v16, "dropBox":Landroid/os/DropBoxManager;
    const-string v36, "storage_benchmark"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v27

    .local v27, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v27, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move-wide/from16 v0, v36

    move-object/from16 v2, v27

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_1

    .end local v8    # "create":J
    .end local v10    # "destroy":J
    .end local v14    # "drop":J
    .end local v16    # "dropBox":Landroid/os/DropBoxManager;
    .end local v21    # "ident":Ljava/lang/String;
    .end local v26    # "path":Ljava/lang/String;
    .end local v27    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v28    # "run":J
    :pswitch_11
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x4

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    const/16 v36, 0x1

    aget-object v26, p3, v36

    .restart local v26    # "path":Ljava/lang/String;
    const/16 v36, 0x2

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .local v6, "bytes":J
    const/16 v36, 0x3

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .local v32, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-class v37, Landroid/os/DropBoxManager;

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/DropBoxManager;

    .restart local v16    # "dropBox":Landroid/os/DropBoxManager;
    const-string v36, "storage_trim"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v27

    .restart local v27    # "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v27, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move-wide/from16 v0, v36

    move-object/from16 v2, v27

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x280
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private onMoveStatusLocked(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v0, :cond_1

    const-string v0, "MountService"

    const-string v1, "Odd, status but no move requested"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " copy phase finshed; persisting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    :cond_2
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finished with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    iput-object v4, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private onStartUser(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartUser "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "user_started"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    monitor-enter v5

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, p1, v6}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .local v2, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    invoke-static {v4}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "envState":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v6, v0, v0}, Lcom/android/server/MountService$Callbacks;->access$1900(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "envState":Ljava/lang/String;
    .end local v2    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    invoke-static {v4, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Lcom/android/server/MountService;->physicalVolumeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v1    # "i":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v5, 0x5

    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "private"

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found primary storage#1 at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_1
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found primary storage#2 at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_2
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_6

    const-string v2, "primary_physical"

    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found primary storage#3 at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    :cond_3
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    :cond_5
    const/4 v2, 0x0

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_6
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_7
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping automatic mounting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .locals 19
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/VolumeRecord;

    .local v16, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v16, :cond_5

    new-instance v16, Landroid/os/storage/VolumeRecord;

    .end local v16    # "rec":Landroid/os/storage/VolumeRecord;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/storage/VolumeInfo;->type:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .restart local v16    # "rec":Landroid/os/storage/VolumeRecord;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    .end local v16    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/MountService$Callbacks;->access$2200(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/MountService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v12, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.VOLUME_ID"

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.os.storage.extra.VOLUME_STATE"

    move/from16 v0, p3

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.os.storage.extra.FS_UUID"

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v12, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .end local v12    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "oldStateEnv":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "newStateEnv":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Removable Media Event : External SD Card Mounted"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVolumeStateChangedLocked:: volInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/MountService;->mStartedUsers:[I

    .local v10, "arr$":[I
    array-length v13, v10

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v13, :cond_9

    aget v17, v10, v11

    .local v17, "userId":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1, v5}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v18

    .local v18, "userVol":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v15, v14}, Lcom/android/server/MountService$Callbacks;->access$1900(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v18    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v10    # "arr$":[I
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "newStateEnv":Ljava/lang/String;
    .end local v15    # "oldStateEnv":Ljava/lang/String;
    .end local v17    # "userId":I
    .restart local v16    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_5
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_0

    .end local v16    # "rec":Landroid/os/storage/VolumeRecord;
    .restart local v14    # "newStateEnv":Ljava/lang/String;
    .restart local v15    # "oldStateEnv":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Removable Media Event : USB HOST Memory Mounted"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v4, "unmounted"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Removable Media Event : External SD Card Unmounted"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Removable Media Event : USB HOST Memory Unmounted"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v4, :cond_a

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v6, 0x5

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    return-void
.end method

.method private policycheckForSKMM()V
    .locals 5

    .prologue
    const-string v3, "security.ode.trustedboot"

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "TRUSTEDBOOT_PROPERTY":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/MountService;->getCCmodeForCryptKeeper()I

    move-result v2

    .local v2, "getCCmode":I
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "security.mdm.trustedboot"

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "MDM_PROPERTY":Ljava/lang/String;
    const-string v3, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_0

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const-string v3, "security.ode.update"

    const/high16 v4, 0x40000

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "security.ode.trustedboot"

    const-string v4, "On"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/MountService;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v3, "security.ode.policycheck"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "MDM_PROPERTY":Ljava/lang/String;
    :cond_2
    return-void

    .restart local v0    # "MDM_PROPERTY":Ljava/lang/String;
    :cond_3
    const-string v3, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "security.ode.update"

    const/high16 v4, 0x80000

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "security.ode.trustedboot"

    const-string v4, "false"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/MountService;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readSettingsLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    iput-boolean v9, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    const/4 v1, 0x0

    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readSettingsLocked() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v13}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .local v2, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v10, :cond_5

    if-ne v6, v14, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "tag":Ljava/lang/String;
    const-string v11, "volumes"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "version"

    const/4 v12, 0x1

    invoke-static {v2, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .local v8, "version":I
    const-string v11, "ro.vold.primary_physical"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .local v3, "primaryPhysical":Z
    const/4 v11, 0x3

    if-ge v8, v11, :cond_1

    if-lt v8, v14, :cond_3

    if-nez v3, :cond_3

    :cond_1
    move v7, v10

    .local v7, "validAttr":Z
    :goto_1
    if-eqz v7, :cond_2

    const-string v11, "primaryStorageUuid"

    invoke-static {v2, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    :cond_2
    const-string v11, "forceAdoptable"

    const/4 v12, 0x0

    invoke-static {v2, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/MountService;->mForceAdoptable:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "primaryPhysical":Z
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "validAttr":Z
    .end local v8    # "version":I
    :catch_0
    move-exception v9

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_2
    return-void

    .restart local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "primaryPhysical":Z
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v8    # "version":I
    :cond_3
    move v7, v9

    goto :goto_1

    .end local v3    # "primaryPhysical":Z
    .end local v8    # "version":I
    :cond_4
    :try_start_1
    const-string v11, "volume"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v2}, Lcom/android/server/MountService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v4

    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v11, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v12, v4, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v11, v12, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readSettingsLocked() TAG_VOLUME rec "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,rec.fsUuid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v9, "MountService"

    const-string v10, "Failed reading metadata"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_2
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v9, "MountService"

    const-string v10, "Failed reading metadata"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .locals 6
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "type"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .local v2, "type":I
    const-string v3, "fsUuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fsUuid":Ljava/lang/String;
    new-instance v1, Landroid/os/storage/VolumeRecord;

    invoke-direct {v1, v2, v0}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .local v1, "meta":Landroid/os/storage/VolumeRecord;
    const-string v3, "partGuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const-string v3, "nickname"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    const-string v3, "userFlags"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    const-string v3, "createdMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-string v3, "lastTrimMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    const-string v3, "lastBenchMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    return-object v1
.end method

.method private registerDeviceRestriction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private remountUidExternalStorage(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    const-string v1, "none"

    .local v1, "modeName":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "remount_uid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :pswitch_0
    const-string v1, "default"

    goto :goto_0

    :pswitch_1
    const-string v1, "read"

    goto :goto_0

    :pswitch_2
    const-string v1, "write"

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remount UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resetIfReadyAndConnectedLocked()V
    .locals 13

    .prologue
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thinking about reset, mSystemReady="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/MountService;->mSystemReady:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mDaemonConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/android/server/MountService;->killMediaProvider()V

    iget-object v8, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    iget-object v8, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {p0}, Lcom/android/server/MountService;->addInternalVolume()V

    invoke-direct {p0}, Lcom/android/server/MountService;->addPrivateVolume()V

    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v9, "volume"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "reset"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    const-string v8, "external"

    invoke-direct {p0, v8}, Lcom/android/server/MountService;->cleanupSercureContainerList(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v9, Landroid/os/UserManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v9, "volume"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "user_added"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget v12, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "um":Landroid/os/UserManager;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    const-string v9, "Failed to reset vold"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_0
    return-void

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "um":Landroid/os/UserManager;
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget v6, v0, v2

    .local v6, "userId":I
    iget-object v8, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v9, "volume"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "user_started"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "internal"

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_1

    iget-wide v2, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "unknown"

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private shouldBenchmark()Z
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "storage_benchmark_interval"

    const-wide/32 v12, 0x240c8400

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .local v2, "benchInterval":J
    const-wide/16 v10, -0x1

    cmp-long v9, v2, v10

    if-nez v9, :cond_0

    :goto_0
    return v7

    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_0
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v4, v10, :cond_3

    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v10, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v11, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeRecord;

    .local v5, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v5, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    sub-long v0, v10, v12

    .local v0, "benchAge":J
    cmp-long v10, v0, v2

    if-ltz v10, :cond_2

    monitor-exit v9

    move v7, v8

    goto :goto_0

    .end local v0    # "benchAge":J
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v5    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private systemReady()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/MountService;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private validateDeviceRestriction(Ljava/lang/String;)V
    .locals 3
    .param p1, "restriction"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "policy has restriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 2
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .locals 9
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "startMillis":J
    :cond_0
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " still waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v6, v2, p3

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave up waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupt while waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-string v1, "mConnectedSignal"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method

.method private warnOnNotMounted()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_1
    return-void

    .restart local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "MountService"

    const-string v3, "No primary storage mounted!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private writeSettingsLocked()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeSettingsLocked() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v6, 0x0

    const-string v7, "volumes"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "version"

    const/4 v7, 0x3

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v6, "primaryStorageUuid"

    iget-object v7, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "forceAdoptable"

    iget-boolean v7, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeRecord;

    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v3, v4}, Lcom/android/server/MountService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_0
    const/4 v6, 0x0

    const-string v7, "volumes"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "size":I
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .locals 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "type"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->type:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v0, "fsUuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "partGuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nickname"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "userFlags"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v0, "createdMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v0, "lastTrimMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v0, "lastBenchMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public benchmark(Ljava/lang/String;)J
    .locals 9
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    const-string v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "benchmark :: = volId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-wide/32 v4, 0x2bf20

    const-string v3, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "benchmark"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "res":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lcom/android/server/NativeDaemonTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .end local v1    # "res":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonTimeoutException;
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    .end local v0    # "e":Lcom/android/server/NativeDaemonTimeoutException;
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->policycheckForSKMM()V

    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method public changeEncryptionPassword2(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MountService"

    const-string v1, "deprecated func. please use the another func."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public clearPassword()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "clearpw"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    goto :goto_0

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public createNewUserDir(ILjava/lang/String;)V
    .locals 8
    .param p1, "userHandle"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only SYSTEM_UID can create user directories"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    const-string v3, "MountService"

    const-string v4, "Creating new user dir"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "createnewuserdir"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v3, "0"

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createnewuserdir sent unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "error":Ljava/lang/String;
    const-string v3, "MountService"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "createnewuserdir threw exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "createnewuserdir threw exception"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1
    return-void
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z

    .prologue
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    const/4 v1, 0x0

    .local v1, "rc":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_1

    const-string v2, "1"

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    if-eqz p6, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    return v1

    :cond_1
    :try_start_2
    const-string v2, "0"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public cryptoMount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "mountpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MountService"

    const-string v1, "deprecated func. please use the another func."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 13
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->policycheckForSKMM()V

    const-string v0, "MountService"

    const-string v1, "decrypting storage..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "cryptfs"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "checkpw"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v4, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v9

    .local v9, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v9}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .local v7, "code":I
    if-nez v7, :cond_1

    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/MountService$2;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v7    # "code":I
    .end local v9    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v7

    .restart local v7    # "code":I
    .restart local v9    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage decryption failed."

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v7    # "code":I
    .end local v9    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v8

    .local v8, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage decryption failed."

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    move v0, v12

    move v1, v11

    move v2, v10

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v7

    goto :goto_0
.end method

.method public deleteUserKey(I)V
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only SYSTEM_UID can delete user keys"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    const-string v3, "MountService"

    const-string v4, "Deleting user key"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "deleteuserkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v3, "0"

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteuserkey sent unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "error":Ljava/lang/String;
    const-string v3, "MountService"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "deleteuserkey threw exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "deleteuserkey threw exception"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1
    return-void
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    const/4 v3, 0x0

    .local v3, "rc":I
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "destroy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_0

    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return v3

    :catch_0
    move-exception v2

    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    const/4 v3, -0x7

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public dirCryptoMntFinished(Ljava/lang/String;)V
    .locals 7
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "mount"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "dirCryptoMntFinished"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update VolumeState! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableStorageEncryption(ILjava/lang/String;)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.DUMP"

    const-string v21, "MountService"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v19, "  "

    const/16 v20, 0xa0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v15, v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .local v15, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_0
    const-string v19, "Disks:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .local v5, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v5, v15}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v19, "Volumes:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/VolumeInfo;

    .local v18, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v18    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->SMdump()[Landroid/os/storage/StorageVolume;

    move-result-object v10

    .local v10, "mStorageVolumes":[Landroid/os/storage/StorageVolume;
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v19, "StorageVolumes:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v8, 0x0

    :goto_2
    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    aget-object v17, v10, v8

    .local v17, "svol":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v17    # "svol":Landroid/os/storage/StorageVolume;
    :cond_2
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v19, "Records:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/VolumeRecord;

    .local v12, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v12, v15}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v12    # "note":Landroid/os/storage/VolumeRecord;
    :cond_3
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Primary storage UUID: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Force adoptable: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mForceAdoptable:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_1
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v19, "mObbMounts:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .local v14, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/MountService$ObbState;

    .local v13, "obbState":Lcom/android/server/MountService$ObbState;
    invoke-virtual {v15, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_5

    .end local v4    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v14    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .end local v8    # "i":I
    .end local v10    # "mStorageVolumes":[Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v19

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v19

    .restart local v4    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v8    # "i":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "mStorageVolumes":[Landroid/os/storage/StorageVolume;
    .restart local v14    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_4
    :try_start_3
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_4

    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v14    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_5
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v19, "mObbPathToStateMap:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v19, " -> "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_6
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v19, "mConnection:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v16, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v19, "Last maintenance: "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/MountService;->mLastMaintenance:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .locals 9
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    const-string v0, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v8, "enablecrypto"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "inplace"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    sget-object v8, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v8, v8, p1

    aput-object v8, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v8, "enablecrypto"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "inplace"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    sget-object v8, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v8, v8, p1

    aput-object v8, v4, v5

    const/4 v5, 0x3

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage encryption failed."

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    const/4 v1, 0x0

    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "no permission to call finishMediaUpdate()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "MountService"

    const-string v1, "Odd, nobody asked to unmount?"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    const/4 v1, 0x0

    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public forgetAllVolumes()V
    .locals 6

    .prologue
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    const-string v3, "MountService"

    const-string v4, "forgetAllVolumes ::"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    .local v2, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->forgetPartition(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/server/MountService$Callbacks;->access$2400(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "fsUuid":Ljava/lang/String;
    .end local v2    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forgetVolume :: = fsUuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->forgetPartition(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/android/server/MountService$Callbacks;->access$2400(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    monitor-exit v2

    return-void

    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .locals 7
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    const-string v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format :: = volId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "format"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "auto"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatVolume :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->format(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getCCmodeForCryptKeeper()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->isDeviceEncrypting()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MountService"

    const-string v4, "Skip getField if enc/decryption is in progress. Due to time-out."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "getCCmodeForCryptKeeper"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentEncryptionFailCount()I
    .locals 7

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "getfailcount"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Error in communicating with cryptfs in validating"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/DiskInfo;

    .local v1, "res":[Landroid/os/storage/DiskInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/DiskInfo;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-object v1

    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/DiskInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getEncryptionState()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->isDeviceEncrypting()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MountService"

    const-string v4, "Skip getEncryptionState if enc/decryption is in progress. Due to time-out."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "no permission to access the crypt keeper fields"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->isDeviceEncrypting()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "MountService"

    const-string v8, "Skip getField if enc/decryption is in progress. Due to time-out."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    :cond_1
    return-object v6

    :cond_2
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "cryptfs"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "getfield"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x71

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "contents":[Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .local v6, "result":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .local v1, "content":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "contents":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v5, "rawPath cannot be null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .local v3, "state":Lcom/android/server/MountService$ObbState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find OBB mounted at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v4

    .end local v3    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v3    # "state":Lcom/android/server/MountService$ObbState;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "obb"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "path"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_0

    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .local v0, "code":I
    const/16 v5, 0x196

    if-eq v0, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getPassword()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v5, "only keyguard can retrieve password"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "getpw"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v3, "-1"

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MountService"

    const-string v4, "Invalid response to getPassword"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPasswordType()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "cryptfs"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "getpwtype"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    sget-object v4, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v2    # "i":I
    :goto_1
    return v2

    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "MountService"

    const-string v5, "unexpected return from cryptfs: Incomplete encryption case"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_1

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->isDeviceEncrypting()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "MountService"

    const-string v8, "Skip getField if enc/decryption is in progress. Due to time-out."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0}, Lcom/android/server/MountService;->checkSystemUid()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    const-string v6, ""

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "cryptfs"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "getfield"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x71

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "contents":[Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .local v6, "result":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .local v1, "content":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "contents":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    const-string v8, "Cannot get the property from footer"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    goto :goto_0
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fspath"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-string v7, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "asec"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "list"

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x6f

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "packdata":[Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v8

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/MountService;->checkExternalSecureContainerMounted()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$PackageInstalledMap;

    .local v4, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-boolean v7, v4, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    .end local v5    # "packdata":[Ljava/lang/String;
    .end local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v5, v12, [Ljava/lang/String;

    .restart local v5    # "packdata":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "iter":Ljava/util/Iterator;
    .restart local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    if-lez v2, :cond_2

    :try_start_2
    const-string v7, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSecureContainerList : (no media) lists = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .end local v2    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v7, v12, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    return-object v7

    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: getSecureContainerPath :: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalSecureContainer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/MountService;->checkExternalSecureContainerMounted()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v4, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt/asec/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_1

    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .local v4, "r":[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .local v0, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .local v5, "tok":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "data":[I
    .end local v2    # "i":I
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "r":[Ljava/lang/String;
    .end local v5    # "tok":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    :catch_1
    move-exception v1

    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v11, [I

    goto :goto_1
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .locals 42
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_1

    const/16 v23, 0x1

    .local v23, "forWrite":Z
    :goto_0
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .local v36, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/16 v24, 0x0

    .local v24, "foundPrimary":Z
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v38

    .local v38, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .local v28, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/MountService$MountServiceInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    const/16 v35, 0x1

    .local v35, "reportUnmounted":Z
    :goto_1
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/storage/VolumeInfo;

    .local v40, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v23, :cond_3

    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v40

    move/from16 v1, v38

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v39

    .local v39, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v40 .. v40}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v24, 0x1

    .end local v39    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .end local v23    # "forWrite":Z
    .end local v24    # "foundPrimary":Z
    .end local v25    # "i":I
    .end local v28    # "identity":J
    .end local v35    # "reportUnmounted":Z
    .end local v36    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v38    # "userId":I
    .end local v40    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/16 v23, 0x0

    goto :goto_0

    .restart local v23    # "forWrite":Z
    .restart local v24    # "foundPrimary":Z
    .restart local v28    # "identity":J
    .restart local v36    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v38    # "userId":I
    :cond_2
    const/16 v35, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .restart local v25    # "i":I
    .restart local v35    # "reportUnmounted":Z
    .restart local v40    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    :try_start_2
    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    .restart local v39    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_4
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v39    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v40    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v24, :cond_6

    const-string v4, "MountService"

    const-string v5, "No primary storage defined yet; hacking together a stub"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ro.vold.primary_physical"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .local v34, "primaryPhysical":Z
    const-string v26, "stub_primary"

    .local v26, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .local v7, "path":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "description":Ljava/lang/String;
    const/16 v27, 0x1

    .local v27, "primary":Z
    move/from16 v10, v34

    .local v10, "removable":Z
    if-nez v34, :cond_7

    const/4 v11, 0x1

    .local v11, "emulated":Z
    :goto_5
    const-wide/16 v32, 0x0

    .local v32, "mtpReserveSize":J
    const/16 v22, 0x0

    .local v22, "allowMassStorage":Z
    const-wide/16 v30, 0x0

    .local v30, "maxFileSize":J
    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .local v17, "owner":Landroid/os/UserHandle;
    const/16 v18, 0x0

    .local v18, "uuid":Ljava/lang/String;
    const-string v37, "removed"

    .local v37, "state":Ljava/lang/String;
    const/16 v41, 0x0

    new-instance v4, Landroid/os/storage/StorageVolume;

    const-string v5, "stub_primary"

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-string v19, "removed"

    const-string v20, "fuse"

    const/16 v21, 0x0

    invoke-direct/range {v4 .. v21}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "removable":Z
    .end local v11    # "emulated":Z
    .end local v17    # "owner":Landroid/os/UserHandle;
    .end local v18    # "uuid":Ljava/lang/String;
    .end local v22    # "allowMassStorage":Z
    .end local v26    # "id":Ljava/lang/String;
    .end local v27    # "primary":Z
    .end local v30    # "maxFileSize":J
    .end local v32    # "mtpReserveSize":J
    .end local v34    # "primaryPhysical":Z
    .end local v37    # "state":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/storage/StorageVolume;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/storage/StorageVolume;

    return-object v4

    .restart local v7    # "path":Ljava/io/File;
    .restart local v8    # "description":Ljava/lang/String;
    .restart local v10    # "removable":Z
    .restart local v26    # "id":Ljava/lang/String;
    .restart local v27    # "primary":Z
    .restart local v34    # "primaryPhysical":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_5
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .locals 4
    .param p1, "flags"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeRecord;

    .local v1, "res":[Landroid/os/storage/VolumeRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-object v1

    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const-string v2, "unknown"

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v1, v0

    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: getVolumeState :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    iget v5, v5, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, v1, v0

    aget-object v2, v1, v0

    iget v2, v2, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i":I
    .restart local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v2, "MountService"

    const-string v4, " :::: getVolumeState :: Not mathced volume"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "unknown"

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .locals 4
    .param p1, "flags"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-object v1

    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isEncryptedWithForceEncrypt()I
    .locals 7

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "forceencrypt"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot check force encrypt condition! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public isExternalStorageEmulated()Z
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    const-string v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v3, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v3, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "ret":Z
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: isSecureContainerMounted :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v0

    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isStorageFullyEncrypted()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fullyencrypted"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs fullyencrypted"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public lastMaintenance()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    return-wide v0
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .local v5, "userId":I
    new-instance v4, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v4, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .local v4, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v10, "appops"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v1, v9, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "appFile":Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v9

    invoke-static {v9, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v9

    invoke-static {v9, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v9

    invoke-static {v9, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v9, "/"

    invoke-virtual {p2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v6

    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    if-eq v9, v11, :cond_2

    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to mkdirs for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , volume is not writable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_0
    return v7

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to resolve "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .local v3, "iex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .end local v3    # "iex":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v9, "volume"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "mkdirs"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_2

    move v7, v8

    goto :goto_0

    :catch_2
    move-exception v2

    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v7

    goto :goto_0

    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid mkdirs path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public monitor()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    :cond_1
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .locals 9
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mount :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mounting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " restricted by policy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mount :: = volId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vol.mountFlags = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vol.mountUserId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "ext_flag":I
    const-string v4, "readonly_storage"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MountService"

    const-string v5, "Policy has restriction \'readonly_storage\'; readonly"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, -0x80000000

    :cond_1
    const/4 v2, 0x0

    .local v2, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v2    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .restart local v2    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/MountService;->isDeviceEncrypting()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "MountService"

    const-string v5, "Do not mount if en/decryption is in progres"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/MountService;->requiredEncPolicyCheck()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "mount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v3, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v3, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "hidden"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mount failed :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v7, v4, :cond_6

    const-string v4, "MountService"

    const-string v5, "Do not mount external SD card on user mode(=not owner) under SD card encryption policy is set"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v4, "MountService"

    const-string v5, "mount:: execute volume mount !!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v4, :cond_8

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "MountService"

    const-string v5, "mount:: LPM disable to boost usb-storage up until 100 sec"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;

    const v5, 0x186a0

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "mount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v3, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v3, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    iget-object v4, p0, Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v4, :cond_c

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "MountService"

    const-string v5, "mount:: LPM enable after boosting usb-storage up"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/MountService;->mUsbStorageBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_0

    :cond_7
    const-string v4, "MountService"

    const-string v5, "mount:: not Usb"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const-string v4, "MountService"

    const-string v5, "mount:: vol.disk is NULL"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const-string v4, "MountService"

    const-string v5, "mount:: not TYPE_PUBLIC"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    const-string v4, "MountService"

    const-string v5, "mount:: fail to setting LPM : mUsbStorageBooster is NULL"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    const-string v4, "MountService"

    const-string v5, "mount:: not Usb"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string v4, "MountService"

    const-string v5, "mount:: vol.disk is NULL"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string v4, "MountService"

    const-string v5, "mount:: not TYPE_PUBLIC"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const-string v4, "MountService"

    const-string v5, "mount:: fail to setting LPM : mUsbStorageBooster is NULL"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 8
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    .prologue
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send to OBB handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "readOnly"    # Z

    .prologue
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, -0x6

    monitor-exit v5

    :cond_0
    :goto_0
    return v3

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    .local v3, "rc":I
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "asec"

    const/4 v4, 0x5

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v8, "mount"

    aput-object v8, v7, v4

    const/4 v4, 0x1

    aput-object p1, v7, v4

    const/4 v4, 0x2

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v7, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x4

    if-eqz p4, :cond_3

    const-string v4, "ro"

    :goto_1
    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "path":Ljava/lang/String;
    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_2
    const-string v4, "/data/app-asec/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v7}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "rc":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .restart local v3    # "rc":I
    :cond_3
    :try_start_4
    const-string v4, "rw"
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .local v0, "code":I
    const/16 v4, 0x195

    if-eq v0, v4, :cond_2

    const/4 v3, -0x1

    goto :goto_2

    .end local v0    # "code":I
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "path":Ljava/lang/String;
    :cond_4
    :try_start_5
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v7, 0x1

    invoke-direct {v6, p0, p1, v7}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mountVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->mount(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public moveDumpstates()I
    .locals 7

    .prologue
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "movedump"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Error in communicating with cryptfs in validating"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public odeNativeTest(Ljava/lang/String;)I
    .locals 7
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "odenativetest"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Error in communicating with cryptfs in validating"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/MountService;->isDeviceEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MountService"

    const-string v1, "Skip register DirEncryptListener if enc/decryption is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-nez v0, :cond_1

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    :cond_1
    iget-object v0, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/MountService$DirEncryptListner;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DirEncryptListner;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    iget-object v0, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    invoke-virtual {v0, v2}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    const-string v0, "MountService"

    const-string v2, "register direncryption listener"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 7
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .prologue
    const-string v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->enforceAdminUser()V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "partitionMixed :: = diskId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "partition"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string v6, "mixed"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    const-string v2, "partitionMixed"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .locals 7
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    const-string v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->enforceAdminUser()V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "partitionPrivate :: = diskId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "partition"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string v6, "private"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    const-string v2, "partitionPrivate"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .locals 7
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    const-string v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "partitionPublic :: = diskId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "partition"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string v6, "public"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    const-string v2, "partitionPublic"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->register(Landroid/os/storage/IMountServiceListener;)V

    return-void
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    .prologue
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v4, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v4, p0, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, -0x6

    monitor-exit v3

    :goto_0
    return v1

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .local v1, "rc":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "rc":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method requiredEncPolicyCheck()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_2

    const-string v4, "MountService"

    const-string v5, "requiredEncPolicyCheck: DevicePolicyManager is NULL"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v2, Landroid/dirEncryption/SDCardEncryptionPolicies;

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x7

    invoke-direct {v2, v4, v5, v6}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .local v2, "policy":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    .local v1, "mDep":Lcom/android/server/DirEncryptPrefs;
    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    .end local v1    # "mDep":Lcom/android/server/DirEncryptPrefs;
    .end local v2    # "policy":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_3
    iget-object v4, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    const/4 v1, 0x0

    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "resize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public runMaintenance()V
    .locals 1

    .prologue
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDebugFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V

    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper fields"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->isDeviceEncrypting()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MountService"

    const-string v3, "Skip setField if enc/decryption is in progress. Due to time-out."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setfield"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    goto :goto_0

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setNullSDCardPassword(Ljava/lang/String;)I
    .locals 3
    .param p1, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MountService"

    const-string v1, "deprecated func. please use the another func."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    iget-object v4, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Primary storage already at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Move already in progress"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iput-object p2, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    iput-object p1, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    const-string v3, "primary_physical"

    iget-object v5, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "primary_physical"

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "MountService"

    const-string v5, "Skipping move to/from primary physical"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x52

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    const/16 v3, -0x64

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V

    :goto_0
    monitor-exit v4

    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .local v1, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .local v2, "to":Landroid/os/storage/VolumeInfo;
    if-nez v1, :cond_4

    const-string v3, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failing move due to missing from volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x6

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    monitor-exit v4

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    const-string v3, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failing move due to missing to volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x6

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "move_storage"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/MountService;->isDeviceEncrypting()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "MountService"

    const-string v4, "Skip getField if enc/decryption is in progress. Due to time-out."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/MountService;->checkSystemUid()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "setfield"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Cannot set the property into footer"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolumeNickname :: = fsUuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nickname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->access$2300(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    monitor-exit v2

    return-void

    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v1, v0

    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "mounted"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    const/4 v4, 0x2

    iput v4, v2, Landroid/os/storage/VolumeInfo;->state:I

    :cond_0
    :goto_1
    const-string v2, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: setVolumeState :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    iget v5, v5, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_2
    return-void

    :cond_1
    const-string v2, "unmounted"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    const/4 v4, 0x0

    iput v4, v2, Landroid/os/storage/VolumeInfo;->state:I

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i":I
    .restart local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v2, "MountService"

    const-string v4, " :::: setVolumeState :: Not mathced volume"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .prologue
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolumeUserFlags :: = fsUuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flags "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    xor-int/lit8 v3, p3, -0x1

    and-int/2addr v1, v3

    and-int v3, p2, p3

    or-int/2addr v1, v3

    iput v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->access$2300(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    monitor-exit v2

    return-void

    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    const-string v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    const-string v0, "MountService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 11
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-string v5, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "pathSplits":[Ljava/lang/String;
    aget-object v5, v1, v6

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unmount :: = volId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vol = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mUnmountLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    iget-object v5, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    const-string v7, "mUnmountSignal"

    invoke-direct {p0, v5, v7}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "ident":J
    :cond_1
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    array-length v5, v1

    if-ne v5, v10, :cond_2

    const-string v5, "hidden"

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doUnmountVolume :: volId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "volume"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "unmount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v4, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    aget-object v9, v1, v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    .restart local v2    # "ident":J
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v2    # "ident":J
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const-string v5, "MountService"

    const-string v6, "unmount :: already unmounted!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    :try_start_5
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "unmount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v4, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 9
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .prologue
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    .local v8, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send to OBB handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_0
    return-void

    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x0

    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: unmountSecureContainer :: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", force = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "MountService"

    const-string v7, " :::: unmountSecureContainer :: fail"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x5

    monitor-exit v6

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalSecureContainer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/server/MountService;->checkExternalSecureContainerMounted()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "MountService"

    const-string v7, "unmountSecureContainer : no media"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    const/4 v4, 0x0

    .local v4, "rc":I
    :try_start_2
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "asec"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_3

    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    :cond_3
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_1
    if-nez v4, :cond_0

    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    :catch_0
    move-exception v2

    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, 0x0

    .local v1, "code":I
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    const/16 v5, 0x195

    if-ne v1, v5, :cond_4

    const/4 v4, -0x7

    goto :goto_1

    :catch_1
    move-exception v3

    .local v3, "ex":Ljava/lang/NullPointerException;
    const/4 v4, -0x1

    goto :goto_0

    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_4
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmountVolume :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->unregister(Landroid/os/storage/IMountServiceListener;)V

    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    const-string v2, "MountService"

    const-string v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method public waitForAsecScan()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    const-string v1, "mAsecsScanned"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method
