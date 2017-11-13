.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$Constants;
    }
.end annotation


# static fields
.field private static final ACTION_STEP_IDLE_STATE:Ljava/lang/String; = "com.android.server.device_idle.STEP_IDLE_STATE"

.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z = false

.field static final MSG_REPORT_ACTIVE:I = 0x4

.field static final MSG_REPORT_IDLE_OFF:I = 0x3

.field static final MSG_REPORT_IDLE_ON:I = 0x2

.field static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x5

.field static final MSG_WRITE_CONFIG:I = 0x1

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_IDLE_PENDING:I = 0x2

.field private static final STATE_INACTIVE:I = 0x1

.field private static final STATE_LOCATING:I = 0x4

.field private static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCharging:Z

.field public final mConfigFile:Lcom/android/internal/os/AtomicFile;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mCurDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnabled:Z

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHaveGps:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private mInactiveTimeout:J

.field private final mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNotMoving:Z

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOn:Z

.field private mSensing:Z

.field private mSensingAlarmIntent:Landroid/app/PendingIntent;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSigMotionActive:Z

.field private final mSigMotionListener:Landroid/hardware/TriggerEventListener;

.field private mSigMotionSensor:Landroid/hardware/Sensor;

.field private mState:I

.field private mSubEnable:Z

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 937
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 189
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 194
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 200
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    .line 213
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 219
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 225
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 231
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 238
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 243
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 249
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 266
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 268
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 338
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    .line 346
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    .line 367
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 938
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    .line 939
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 940
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceIdleController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->removeInternalWhitelistAppExceptIdle(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceIdleController;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelist3rdPartyAppInternal(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/DeviceIdleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object v0
.end method

.method private addPowerSaveWhitelist3rdPartyAppInternal(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mUid"    # I

    .prologue
    const/4 v7, 0x1

    .line 1210
    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mSubEnable:Z

    if-nez v4, :cond_1

    .line 1211
    const/4 v2, 0x0

    .line 1246
    :cond_0
    :goto_0
    return v2

    .line 1213
    :cond_1
    const/4 v2, 0x0

    .line 1215
    .local v2, "result":Z
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1216
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 1217
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1218
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1220
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1224
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1226
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "added 3rd party app to PowerSave whitelist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v2, 0x1

    .line 1232
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1233
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    .line 1234
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1235
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1237
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1241
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "added 3rd party app to PowerSave whitelist except Idle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const/4 v2, 0x1

    .line 1243
    goto/16 :goto_0

    .line 1216
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1233
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .locals 5
    .param p2, "outAppIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .prologue
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .line 1810
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1811
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1812
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1811
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1814
    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1815
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1814
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1817
    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 1818
    .local v2, "size":I
    new-array v0, v2, [I

    .line 1819
    .local v0, "appids":[I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 1820
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v1

    .line 1819
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1822
    :cond_2
    return-object v0
.end method

.method private static buildExceptIdleAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .locals 7
    .param p3, "outAppIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .prologue
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, "filteredApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    .line 1828
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1829
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1830
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1829
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1832
    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1833
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1832
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1835
    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1836
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1837
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "filtered apps id  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1840
    :cond_2
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 1841
    .local v2, "size":I
    new-array v0, v2, [I

    .line 1842
    .local v0, "appids":[I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    .line 1843
    invoke-virtual {p3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v1

    .line 1844
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "except-idle apps id  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1846
    :cond_3
    return-object v0
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2021
    const-string v0, "Device idle controller (deviceidle) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    const-string v0, "  [-h] [CMD]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    const-string v0, "Commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    const-string v0, "  step"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    const-string v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    const-string v0, "  force-idle"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    const-string v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    const-string v0, "    Use \"step\" to get out."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    const-string v0, "  disable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2031
    const-string v0, "    Completely disable device idle mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    const-string v0, "  enable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2033
    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    const-string v0, "  enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2035
    const-string v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    const-string v0, "  whitelist"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    const-string v0, "    Print currently whitelisted apps."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    const-string v0, "  whitelist [package ...]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    const-string v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    const-string v0, "  tempwhitelist [package ..]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    const-string v0, "    Temporarily place packages in whitelist for 10 seconds."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2042
    return-void
.end method

.method private get3rdWhitelistEnable()Z
    .locals 7

    .prologue
    .line 948
    const/4 v0, 0x0

    .line 949
    .local v0, "retval":Z
    const-string/jumbo v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "sCountryCode":Ljava/lang/String;
    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 951
    .local v3, "sSalesCode":Ljava/lang/String;
    const-string/jumbo v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, "sProductName":Ljava/lang/String;
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "country_code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sales_code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string v4, "JP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 955
    const-string v4, "DeviceIdleController"

    const-string/jumbo v5, "get3rdWhitelistEnable: JP"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 957
    const-string v4, "DeviceIdleController"

    const-string/jumbo v5, "get3rdWhitelistEnable: DCM"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v0, 0x1

    .line 962
    :cond_0
    const-string/jumbo v4, "matisse10wifikx"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 963
    const/4 v0, 0x1

    .line 965
    :cond_1
    return v0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 943
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1476
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 1918
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1923
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v8, :cond_1

    if-ne v6, v10, :cond_0

    .line 1927
    :cond_1
    if-eq v6, v8, :cond_3

    .line 1928
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "no start tag found"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6

    .line 1959
    .end local v6    # "type":I
    :catch_0
    move-exception v1

    .line 1960
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    return-void

    .line 1931
    .restart local v6    # "type":I
    :cond_3
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1933
    .local v3, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v10, :cond_2

    if-ne v6, v11, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_2

    .line 1934
    :cond_5
    if-eq v6, v11, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 1938
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1939
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "wl"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1940
    const/4 v7, 0x0

    const-string/jumbo v8, "n"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    .line 1941
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1943
    const v7, 0xa200

    :try_start_2
    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1947
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 1949
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v7

    goto :goto_1

    .line 1953
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <config>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_1

    .line 1961
    .end local v3    # "outerDepth":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_2
    move-exception v1

    .line 1962
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1963
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v1

    .line 1964
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1965
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v1

    .line 1966
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1967
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v1

    .line 1968
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1969
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 1970
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private removeInternalWhitelistAppExceptIdle(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1295
    monitor-enter p0

    .line 1296
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1297
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1298
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1299
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 1301
    monitor-exit p0

    .line 1308
    :goto_0
    return v0

    .line 1303
    :cond_0
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1304
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1305
    monitor-exit p0

    goto :goto_0

    .line 1307
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePowerSaveWhitelist3rdPartyAppInternal(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2710

    const/4 v9, -0x1

    .line 1251
    iget-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mSubEnable:Z

    if-nez v6, :cond_1

    .line 1252
    const/4 v3, 0x0

    .line 1291
    :cond_0
    :goto_0
    return v3

    .line 1254
    :cond_1
    const/4 v3, 0x0

    .line 1256
    .local v3, "result":Z
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1257
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 1258
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1259
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1260
    .local v5, "uid":I
    if-lt v5, v10, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1262
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1263
    .local v1, "mUid":I
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1265
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1268
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1269
    const-string v6, "DeviceIdleController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removing 3rd party App from PowerSave whitelist:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v3, 0x1

    .line 1275
    .end local v1    # "mUid":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "uid":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1276
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_0

    .line 1277
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1278
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1279
    .restart local v5    # "uid":I
    if-lt v5, v10, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1281
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1282
    .restart local v1    # "mUid":I
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1285
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1286
    const-string v6, "DeviceIdleController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removing 3rd party App from PowerSave whitelist except Idle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const/4 v3, 0x1

    .line 1288
    goto/16 :goto_0

    .line 1257
    .end local v1    # "mUid":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1276
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .locals 3

    .prologue
    .line 1884
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1885
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1886
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1887
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .locals 3

    .prologue
    .line 1890
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1891
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1892
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1893
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 158
    packed-switch p0, :pswitch_data_0

    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 159
    :pswitch_0
    const-string v0, "ACTIVE"

    goto :goto_0

    .line 160
    :pswitch_1
    const-string v0, "INACTIVE"

    goto :goto_0

    .line 161
    :pswitch_2
    const-string v0, "IDLE_PENDING"

    goto :goto_0

    .line 162
    :pswitch_3
    const-string v0, "SENSING"

    goto :goto_0

    .line 163
    :pswitch_4
    const-string v0, "LOCATING"

    goto :goto_0

    .line 164
    :pswitch_5
    const-string v0, "IDLE"

    goto :goto_0

    .line 165
    :pswitch_6
    const-string v0, "IDLE_MAINTENANCE"

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateTempWhitelistAppIdsLocked()V
    .locals 4

    .prologue
    .line 1867
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1868
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v2, v2

    if-eq v2, v1, :cond_0

    .line 1869
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 1871
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1872
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 1871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1874
    :cond_1
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_2

    .line 1879
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 1881
    :cond_2
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .locals 4

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->buildExceptIdleAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 1855
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 1857
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 1864
    :cond_0
    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .locals 13
    .param p1, "callingUid"    # I
    .param p2, "appId"    # I
    .param p3, "duration"    # J
    .param p5, "sync"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    .line 1421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1422
    .local v6, "timeNow":J
    const/4 v4, 0x0

    .line 1423
    .local v4, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    monitor-enter p0

    .line 1424
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1425
    .local v2, "callingAppId":I
    const/16 v8, 0x2710

    if-lt v2, v8, :cond_0

    .line 1426
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1427
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not on whitelist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1461
    .end local v2    # "callingAppId":I
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1431
    .restart local v2    # "callingAppId":I
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v8, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 1432
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1433
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v3, :cond_5

    const/4 v5, 0x1

    .line 1435
    .local v5, "newEntry":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 1436
    new-instance v3, Landroid/util/Pair;

    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    new-instance v8, Landroid/util/MutableLong;

    const-wide/16 v10, 0x0

    invoke-direct {v8, v10, v11}, Landroid/util/MutableLong;-><init>(J)V

    move-object/from16 v0, p6

    invoke-direct {v3, v8, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1437
    .restart local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v8, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1439
    :cond_1
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/util/MutableLong;

    add-long v10, v6, p3

    iput-wide v10, v8, Landroid/util/MutableLong;->value:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1443
    if-eqz v5, :cond_3

    .line 1446
    :try_start_2
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const v9, 0x8011

    move-object/from16 v0, p6

    invoke-interface {v8, v9, v0, p2}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1450
    :goto_1
    :try_start_3
    move-wide/from16 v0, p3

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 1451
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked()V

    .line 1452
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    if-eqz v8, :cond_2

    .line 1453
    if-nez p5, :cond_6

    .line 1454
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/server/DeviceIdleController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 1459
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    .line 1461
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1462
    if-eqz v4, :cond_4

    .line 1463
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1465
    :cond_4
    return-void

    .line 1433
    .end local v5    # "newEntry":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 1456
    .restart local v5    # "newEntry":Z
    :cond_6
    :try_start_4
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1448
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .prologue
    .line 1408
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 1409
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .local v3, "appId":I
    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p6

    move-object/from16 v7, p7

    .line 1410
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    .end local v0    # "uid":I
    .end local v3    # "appId":I
    :goto_0
    return-void

    .line 1411
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1160
    monitor-enter p0

    .line 1162
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0xa200

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1168
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelist3rdPartyAppInternal(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1170
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1182
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 1175
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1176
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1177
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1178
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1180
    :cond_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 1184
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1181
    :catch_0
    move-exception v1

    .line 1182
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .prologue
    const/4 v1, 0x0

    .line 1558
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v0, :cond_0

    .line 1559
    invoke-static {v1, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1560
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 1561
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1562
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 1563
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 1565
    :cond_0
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .locals 3

    .prologue
    .line 1569
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_2

    .line 1572
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1574
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 1575
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 1576
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v1, "no activity"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1578
    :cond_2
    return-void
.end method

.method cancelAlarmLocked()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1758
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1759
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 1760
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1762
    :cond_0
    return-void
.end method

.method cancelLocatingLocked()V
    .locals 2

    .prologue
    .line 1773
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1775
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 1778
    :cond_0
    return-void
.end method

.method cancelSensingAlarmLocked()V
    .locals 2

    .prologue
    .line 1765
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSensing:Z

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSensing:Z

    .line 1770
    :cond_0
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1480
    .local v2, "timeNow":J
    monitor-enter p0

    .line 1481
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1482
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1484
    monitor-exit p0

    .line 1506
    :goto_0
    return-void

    .line 1486
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/MutableLong;

    iget-wide v4, v1, Landroid/util/MutableLong;->value:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 1487
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1491
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked()V

    .line 1492
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1493
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 1495
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    :try_start_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v5, 0x4011

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v5, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1505
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1503
    .restart local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/MutableLong;

    iget-wide v4, v1, Landroid/util/MutableLong;->value:J

    sub-long/2addr v4, v2

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1499
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2045
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2047
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump DeviceIdleController from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2367
    :goto_0
    return-void

    .line 2053
    :cond_0
    if-eqz p3, :cond_1f

    .line 2054
    const/4 v10, 0x0

    .line 2055
    .local v10, "userId":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v14, v5, :cond_1f

    .line 2056
    aget-object v7, p3, v14

    .line 2057
    .local v7, "arg":Ljava/lang/String;
    const-string v5, "-h"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2058
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 2060
    :cond_1
    const-string v5, "-u"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2061
    add-int/lit8 v14, v14, 0x1

    .line 2062
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v14, v5, :cond_2

    .line 2063
    aget-object v7, p3, v14

    .line 2064
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2055
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2066
    :cond_3
    const-string v5, "-a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2068
    const-string/jumbo v5, "step"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2069
    monitor-enter p0

    .line 2070
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v22

    .line 2072
    .local v22, "token":J
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 2073
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V

    .line 2074
    const-string v5, "Stepped to: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2076
    :try_start_2
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2078
    monitor-exit p0

    goto :goto_0

    .end local v22    # "token":J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2076
    .restart local v22    # "token":J
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2080
    .end local v22    # "token":J
    :cond_4
    const-string/jumbo v5, "force-idle"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2081
    monitor-enter p0

    .line 2082
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v22

    .line 2084
    .restart local v22    # "token":J
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    if-nez v5, :cond_5

    .line 2085
    const-string v5, "Unable to go idle; not enabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2103
    :try_start_6
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto/16 :goto_0

    .line 2105
    .end local v22    # "token":J
    :catchall_2
    move-exception v5

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .line 2088
    .restart local v22    # "token":J
    :cond_5
    const/4 v5, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2089
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2090
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2091
    .local v4, "curState":I
    :goto_2
    const/4 v5, 0x5

    if-eq v4, v5, :cond_7

    .line 2092
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V

    .line 2093
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v4, v5, :cond_6

    .line 2094
    const-string v5, "Unable to go idle; stopped at "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2095
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2103
    :try_start_8
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0

    .line 2099
    :cond_6
    :try_start_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    goto :goto_2

    .line 2101
    :cond_7
    const-string v5, "Now forced in to idle mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2103
    :try_start_a
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2105
    monitor-exit p0

    goto/16 :goto_0

    .line 2103
    .end local v4    # "curState":I
    :catchall_3
    move-exception v5

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2107
    .end local v22    # "token":J
    :cond_8
    const-string/jumbo v5, "disable"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2108
    monitor-enter p0

    .line 2109
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result-wide v22

    .line 2111
    .restart local v22    # "token":J
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    if-eqz v5, :cond_9

    .line 2112
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    .line 2113
    const-string/jumbo v5, "disabled"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2114
    const-string v5, "Idle mode disabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 2117
    :cond_9
    :try_start_d
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2119
    monitor-exit p0

    goto/16 :goto_0

    .end local v22    # "token":J
    :catchall_4
    move-exception v5

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v5

    .line 2117
    .restart local v22    # "token":J
    :catchall_5
    move-exception v5

    :try_start_e
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 2121
    .end local v22    # "token":J
    :cond_a
    const-string/jumbo v5, "enable"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2122
    monitor-enter p0

    .line 2123
    :try_start_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-result-wide v22

    .line 2125
    .restart local v22    # "token":J
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 2126
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    if-nez v5, :cond_b

    .line 2127
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    .line 2128
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2129
    const-string v5, "Idle mode enabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 2132
    :cond_b
    :try_start_11
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2134
    monitor-exit p0

    goto/16 :goto_0

    .end local v22    # "token":J
    :catchall_6
    move-exception v5

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v5

    .line 2132
    .restart local v22    # "token":J
    :catchall_7
    move-exception v5

    :try_start_12
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 2136
    .end local v22    # "token":J
    :cond_c
    const-string/jumbo v5, "enabled"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2137
    monitor-enter p0

    .line 2138
    :try_start_13
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    if-eqz v5, :cond_d

    const-string v5, "1"

    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    monitor-exit p0

    goto/16 :goto_0

    :catchall_8
    move-exception v5

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v5

    .line 2138
    :cond_d
    :try_start_14
    const-string v5, " 0"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    goto :goto_3

    .line 2141
    :cond_e
    const-string/jumbo v5, "whitelist"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 2144
    .restart local v22    # "token":J
    add-int/lit8 v14, v14, 0x1

    .line 2145
    :try_start_15
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v14, v5, :cond_14

    .line 2146
    :cond_f
    :goto_4
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v14, v5, :cond_19

    .line 2147
    aget-object v7, p3, v14

    .line 2148
    add-int/lit8 v14, v14, 0x1

    .line 2149
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_10

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_11

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_11

    .line 2151
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package must be prefixed with + or -: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 2200
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2154
    :cond_11
    const/4 v5, 0x0

    :try_start_16
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 2155
    .local v16, "op":C
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 2156
    .local v17, "pkg":Ljava/lang/String;
    const/16 v5, 0x2b

    move/from16 v0, v16

    if-ne v0, v5, :cond_13

    .line 2157
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    goto :goto_4

    .line 2200
    .end local v16    # "op":C
    .end local v17    # "pkg":Ljava/lang/String;
    :catchall_9
    move-exception v5

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2160
    .restart local v16    # "op":C
    .restart local v17    # "pkg":Ljava/lang/String;
    :cond_12
    :try_start_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2163
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2169
    .end local v16    # "op":C
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_14
    monitor-enter p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 2170
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_5
    :try_start_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v15, v5, :cond_15

    .line 2171
    const-string/jumbo v5, "system-excidle,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2173
    const-string v5, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2174
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2170
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 2176
    :cond_15
    const/4 v15, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v15, v5, :cond_16

    .line 2177
    const-string/jumbo v5, "system,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2178
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2179
    const-string v5, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2180
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2176
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 2182
    :cond_16
    const/4 v15, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v15, v5, :cond_17

    .line 2183
    const-string/jumbo v5, "user,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2184
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2185
    const-string v5, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2186
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2182
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 2189
    :cond_17
    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v15, v5, :cond_18

    .line 2190
    const-string/jumbo v5, "internal,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    const-string v5, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2189
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 2197
    :cond_18
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 2200
    .end local v15    # "j":I
    :cond_19
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2197
    .restart local v15    # "j":I
    :catchall_a
    move-exception v5

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    :try_start_1a
    throw v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 2203
    .end local v15    # "j":I
    .end local v22    # "token":J
    :cond_1a
    const-string/jumbo v5, "tempwhitelist"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 2206
    .restart local v22    # "token":J
    add-int/lit8 v14, v14, 0x1

    .line 2207
    :try_start_1b
    move-object/from16 v0, p3

    array-length v5, v0

    if-lt v14, v5, :cond_1b

    .line 2208
    const-string v5, "At least one package name must be specified"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 2219
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2211
    :cond_1b
    :goto_9
    :try_start_1c
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v14, v5, :cond_1c

    .line 2212
    aget-object v7, p3, v14

    .line 2213
    add-int/lit8 v14, v14, 0x1

    .line 2214
    const/4 v6, 0x0

    const-wide/16 v8, 0x2710

    const/4 v11, 0x1

    const-string/jumbo v12, "shell"

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 2216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    goto :goto_9

    .line 2219
    :catchall_b
    move-exception v5

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_1c
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2222
    .end local v22    # "token":J
    :cond_1d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1e

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1e

    .line 2223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2226
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2232
    .end local v7    # "arg":Ljava/lang/String;
    .end local v10    # "userId":I
    .end local v14    # "i":I
    :cond_1f
    monitor-enter p0

    .line 2233
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 2235
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v18

    .line 2236
    .local v18, "size":I
    if-lez v18, :cond_20

    .line 2237
    const-string v5, "  Whitelist (except idle) system apps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_a
    move/from16 v0, v18

    if-ge v14, v0, :cond_20

    .line 2239
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 2243
    .end local v14    # "i":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v18

    .line 2244
    if-lez v18, :cond_21

    .line 2245
    const-string v5, "  Whitelist system apps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2246
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_b
    move/from16 v0, v18

    if-ge v14, v0, :cond_21

    .line 2247
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2246
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 2251
    .end local v14    # "i":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v18

    .line 2252
    if-lez v18, :cond_22

    .line 2253
    const-string v5, "  Whitelist user apps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2254
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_c
    move/from16 v0, v18

    if-ge v14, v0, :cond_22

    .line 2255
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2256
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2254
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 2261
    .end local v14    # "i":I
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mSubEnable:Z

    if-eqz v5, :cond_26

    .line 2262
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v18

    .line 2263
    if-lez v18, :cond_24

    .line 2264
    const-string v5, "  Whitelist user apps(*):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2265
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_d
    move/from16 v0, v18

    if-ge v14, v0, :cond_24

    .line 2266
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2267
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    const-string v5, "(I)"

    :goto_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2265
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 2268
    :cond_23
    const-string v5, ""

    goto :goto_e

    .line 2272
    .end local v14    # "i":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v18

    .line 2273
    if-lez v18, :cond_26

    .line 2274
    const-string v5, "  Whitelist (except idle) user apps(*):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_f
    move/from16 v0, v18

    if-ge v14, v0, :cond_26

    .line 2276
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_25

    const-string v5, "(I)"

    :goto_10
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 2278
    :cond_25
    const-string v5, ""

    goto :goto_10

    .line 2284
    .end local v14    # "i":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v18

    .line 2285
    if-lez v18, :cond_27

    .line 2286
    const-string v5, "  Whitelist (except idle) all app ids:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2287
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_11
    move/from16 v0, v18

    if-ge v14, v0, :cond_27

    .line 2288
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2290
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2287
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 2293
    .end local v14    # "i":I
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v18

    .line 2294
    if-lez v18, :cond_28

    .line 2295
    const-string v5, "  Whitelist all app ids:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2296
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_12
    move/from16 v0, v18

    if-ge v14, v0, :cond_28

    .line 2297
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2299
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2296
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    .line 2302
    .end local v14    # "i":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 2303
    if-lez v18, :cond_29

    .line 2304
    const-string v5, "  Temp whitelist schedule:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 2306
    .local v20, "timeNow":J
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_13
    move/from16 v0, v18

    if-ge v14, v0, :cond_29

    .line 2307
    const-string v5, "    UID="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2308
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2309
    const-string v5, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 2311
    .local v13, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v5, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/MutableLong;

    iget-wide v8, v5, Landroid/util/MutableLong;->value:J

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v8, v9, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2312
    const-string v5, " - "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2313
    iget-object v5, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2306
    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    .line 2316
    .end local v13    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .end local v14    # "i":I
    .end local v20    # "timeNow":J
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v0, v5

    move/from16 v18, v0

    .line 2317
    :goto_14
    if-lez v18, :cond_2b

    .line 2318
    const-string v5, "  Temp whitelist app ids:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2319
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_15
    move/from16 v0, v18

    if-ge v14, v0, :cond_2b

    .line 2320
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v5, v5, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2322
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2319
    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    .line 2316
    .end local v14    # "i":I
    :cond_2a
    const/16 v18, 0x0

    goto :goto_14

    .line 2326
    :cond_2b
    const-string v5, "  mEnabled="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2328
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mSubEnable:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    .line 2329
    const-string v5, "  mSubEnabled=true"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2332
    :cond_2c
    const-string v5, "  mForceIdle="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2333
    const-string v5, "  mSigMotionSensor="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2334
    const-string v5, "  mCurDisplay="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2335
    const-string v5, "  mScreenOn="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2336
    const-string v5, "  mCharging="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2337
    const-string v5, "  mSigMotionActive="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2338
    const-string v5, "  mSensing="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mSensing:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mNotMoving="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2339
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2340
    const-string v5, "  mLocating="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mHaveGps="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2341
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mHaveGps:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mLocated="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz v5, :cond_2d

    .line 2343
    const-string v5, "  mLastGenericLocation="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2345
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz v5, :cond_2e

    .line 2346
    const-string v5, "  mLastGpsLocation="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2348
    :cond_2e
    const-string v5, "  mState="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    const-string v5, "  mInactiveTimeout="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    move-object/from16 v0, p2

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2350
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2351
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v24, 0x0

    cmp-long v5, v8, v24

    if-eqz v5, :cond_2f

    .line 2352
    const-string v5, "  mNextAlarmTime="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2353
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p2

    invoke-static {v8, v9, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2354
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2356
    :cond_2f
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    const-wide/16 v24, 0x0

    cmp-long v5, v8, v24

    if-eqz v5, :cond_30

    .line 2357
    const-string v5, "  mNextIdlePendingDelay="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2358
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    move-object/from16 v0, p2

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2359
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2361
    :cond_30
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    const-wide/16 v24, 0x0

    cmp-long v5, v8, v24

    if-eqz v5, :cond_31

    .line 2362
    const-string v5, "  mNextIdleDelay="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2363
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    move-object/from16 v0, p2

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2364
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2366
    :cond_31
    monitor-exit p0

    goto/16 :goto_0

    .end local v18    # "size":I
    :catchall_c
    move-exception v5

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    throw v5
.end method

.method exitForceIdleLocked()V
    .locals 2

    .prologue
    .line 1591
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_1

    .line 1592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 1593
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1

    .line 1594
    :cond_0
    const-string/jumbo v0, "exit-force-idle"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 1597
    :cond_1
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1509
    monitor-enter p0

    .line 1510
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 1511
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1512
    monitor-exit p0

    .line 1513
    return-void

    .line 1512
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppIdTempWhitelistInternal()[I
    .locals 1

    .prologue
    .line 1396
    monitor-enter p0

    .line 1397
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1398
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .locals 1

    .prologue
    .line 1384
    monitor-enter p0

    .line 1385
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1386
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .locals 1

    .prologue
    .line 1390
    monitor-enter p0

    .line 1391
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1392
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 1335
    monitor-enter p0

    .line 1336
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int v3, v4, v5

    .line 1337
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    .line 1338
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1339
    .local v1, "cur":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1340
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1341
    add-int/lit8 v1, v1, 0x1

    .line 1339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1343
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1344
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1345
    add-int/lit8 v1, v1, 0x1

    .line 1343
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1347
    :cond_1
    monitor-exit p0

    return-object v0

    .line 1348
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "cur":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 1352
    monitor-enter p0

    .line 1353
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int v3, v4, v5

    .line 1354
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    .line 1355
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1356
    .local v1, "cur":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1357
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1358
    add-int/lit8 v1, v1, 0x1

    .line 1356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1360
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1361
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1362
    add-int/lit8 v1, v1, 0x1

    .line 1360
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1364
    :cond_1
    monitor-exit p0

    return-object v0

    .line 1365
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "cur":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1313
    monitor-enter p0

    .line 1314
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1315
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 1316
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1317
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .line 1316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1319
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1320
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1324
    monitor-enter p0

    .line 1325
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1326
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 1327
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1328
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .line 1327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1330
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1331
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1699
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v0, :cond_0

    .line 1700
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 1701
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1702
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 1703
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1704
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingAlarmLocked()V

    .line 1705
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1707
    :cond_0
    return-void
.end method

.method handleWriteConfigFile()V
    .locals 7

    .prologue
    .line 1980
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1983
    .local v1, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1984
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1985
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1986
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1987
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1991
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v5

    .line 1992
    const/4 v3, 0x0

    .line 1994
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1995
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1996
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1997
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1998
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1999
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2004
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2005
    return-void

    .line 1987
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1988
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2000
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 2001
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v4, "DeviceIdleController"

    const-string v6, "Error writing config file"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2002
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1

    .line 2004
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1377
    monitor-enter p0

    .line 1378
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1380
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1369
    monitor-enter p0

    .line 1370
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInternalWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1373
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnyMotionResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v0, 0x1

    .line 676
    if-ne p1, v0, :cond_1

    .line 678
    monitor-enter p0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "sense_motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 680
    monitor-exit p0

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 681
    :cond_1
    if-nez p1, :cond_0

    .line 683
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 685
    monitor-enter p0

    .line 686
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 687
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V

    .line 688
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 689
    :cond_2
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 692
    monitor-enter p0

    .line 693
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 694
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz v0, :cond_3

    .line 695
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V

    .line 697
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 8
    .param p1, "phase"    # I

    .prologue
    .line 1098
    const/16 v4, 0x1f4

    if-ne p1, v4, :cond_0

    .line 1099
    monitor-enter p0

    .line 1100
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1101
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1102
    const-class v4, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManagerInternal;

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 1103
    const-string/jumbo v4, "netpolicy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1108
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    .line 1111
    new-instance v4, Landroid/location/LocationRequest;

    invoke-direct {v4}, Landroid/location/LocationRequest;-><init>()V

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 1116
    new-instance v5, Lcom/android/server/AnyMotionDetector;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-direct {v5, v4, v6, v7, p0}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;)V

    iput-object v5, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 1120
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.device_idle.STEP_IDLE_STATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1123
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 1125
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.device_idle.STEP_IDLE_STATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 1128
    .local v2, "intentSensing":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mSensingAlarmIntent:Landroid/app/PendingIntent;

    .line 1130
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 1131
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    const/high16 v5, 0x50000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1135
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    const-string v4, "com.android.server.device_idle.STEP_IDLE_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1138
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1139
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1140
    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1145
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1146
    .local v3, "packageFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1147
    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1151
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v4, v5}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 1153
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateDisplayLocked()V

    .line 1155
    monitor-exit p0

    .line 1157
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentSensing":Landroid/content/Intent;
    .end local v3    # "packageFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 1155
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onStart()V
    .locals 20

    .prologue
    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 973
    .local v15, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 974
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x112001a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mEnabled:Z

    .line 977
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mSubEnable:Z

    .line 979
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v16

    .line 980
    .local v16, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v6

    .line 981
    .local v6, "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    .line 982
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    .local v14, "pkg":Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 985
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_0

    .line 986
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 987
    .local v8, "appid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appid":I
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 993
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v5

    .line 994
    .local v5, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_3

    .line 995
    invoke-virtual {v5, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 997
    .restart local v14    # "pkg":Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 998
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_2

    .line 999
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1002
    .restart local v8    # "appid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 994
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appid":I
    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1011
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController;->mSubEnable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1012
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveUserAppExceptIdle()Landroid/util/ArraySet;

    move-result-object v7

    .line 1013
    .local v7, "allowPowerUserAppExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_5

    .line 1014
    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1016
    .restart local v14    # "pkg":Ljava/lang/String;
    const v17, 0xa200

    :try_start_5
    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1021
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_4

    .line 1022
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1024
    .restart local v8    # "appid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1013
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appid":I
    :cond_4
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1028
    :catch_0
    move-exception v10

    .line 1029
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1090
    .end local v5    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "allowPowerUserAppExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "i":I
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v16    # "sysConfig":Lcom/android/server/SystemConfig;
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v17

    .line 1033
    .restart local v5    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v16    # "sysConfig":Lcom/android/server/SystemConfig;
    :cond_5
    const/4 v9, 0x0

    .line 1034
    .local v9, "cscAllowPowerList":Ljava/lang/String;
    :try_start_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_ConfigAllowedPackagesDuringPowerSaving"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1037
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_a

    .line 1038
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1041
    .local v13, "listApps":[Ljava/lang/String;
    const/4 v11, 0x0

    :goto_6
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_a

    .line 1042
    aget-object v17, v13, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v14

    .line 1043
    .restart local v14    # "pkg":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1044
    .local v12, "isPreloadApp":Z
    const/4 v8, -0x1

    .line 1046
    .restart local v8    # "appid":I
    const/16 v17, 0x0

    :try_start_8
    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1047
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController;->mSubEnable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1048
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_6

    const/4 v12, 0x1

    .line 1049
    :cond_6
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1057
    if-nez v12, :cond_7

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1073
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7
    :goto_7
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController;->mSubEnable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    if-nez v12, :cond_8

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1041
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 1060
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_9
    :try_start_a
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_7

    .line 1061
    const/4 v12, 0x1

    .line 1062
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 1071
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v17

    goto :goto_7

    .line 1079
    .end local v8    # "appid":I
    .end local v12    # "isPreloadApp":Z
    .end local v13    # "listApps":[Ljava/lang/String;
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_a
    :try_start_b
    new-instance v17, Lcom/android/server/DeviceIdleController$Constants;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 1082
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1084
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1087
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1088
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 1090
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1092
    const-string/jumbo v17, "deviceidle"

    new-instance v18, Lcom/android/server/DeviceIdleController$BinderService;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1093
    const-class v17, Lcom/android/server/DeviceIdleController$LocalService;

    new-instance v18, Lcom/android/server/DeviceIdleController$LocalService;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1094
    return-void

    .line 1007
    .end local v9    # "cscAllowPowerList":Ljava/lang/String;
    .restart local v14    # "pkg":Ljava/lang/String;
    :catch_2
    move-exception v17

    goto/16 :goto_3

    .line 990
    .end local v5    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_3
    move-exception v17

    goto/16 :goto_1
.end method

.method readConfigFileLocked()V
    .locals 5

    .prologue
    .line 1897
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1900
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1905
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 1906
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1907
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1911
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1915
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 1901
    :catch_0
    move-exception v0

    .line 1902
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 1908
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 1911
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1912
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1910
    :catchall_0
    move-exception v3

    .line 1911
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1913
    :goto_1
    throw v3

    .line 1912
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v3

    goto :goto_0

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1710
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1711
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1715
    :cond_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 1716
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHaveGps:Z

    if-nez v0, :cond_0

    .line 1719
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 1720
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_0

    .line 1721
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V

    goto :goto_0
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1726
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1727
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 1739
    :cond_0
    :goto_0
    return-void

    .line 1731
    :cond_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 1732
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 1736
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_0

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked()V

    goto :goto_0
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1188
    monitor-enter p0

    .line 1190
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelist3rdPartyAppInternal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1192
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1193
    monitor-exit p0

    .line 1204
    :goto_0
    return v0

    .line 1197
    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1198
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1199
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1200
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 1201
    monitor-exit p0

    goto :goto_0

    .line 1203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetIdleManagementLocked()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1581
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 1582
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 1583
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 1584
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingAlarmLocked()V

    .line 1585
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 1586
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stopMonitoringSignificantMotion()V

    .line 1587
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 1588
    return-void
.end method

.method scheduleAlarmLocked(JZ)V
    .locals 5
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    .prologue
    const/4 v4, 0x2

    .line 1782
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 1797
    :goto_0
    return-void

    .line 1789
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 1790
    if-eqz p3, :cond_1

    .line 1791
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setIdleUntil(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1794
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .prologue
    .line 1551
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v3, 0x4

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, p2, v1, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1553
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1554
    return-void

    .line 1551
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method scheduleSensingAlarmLocked(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 1801
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingAlarmLocked()V

    .line 1802
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 1803
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mSensingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSensing:Z

    .line 1806
    return-void
.end method

.method public setNetworkPolicyTempWhitelistCallbackInternal(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1468
    monitor-enter p0

    .line 1469
    :try_start_0
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    .line 1470
    monitor-exit p0

    .line 1471
    return-void

    .line 1470
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method significantMotionLocked()V
    .locals 3

    .prologue
    .line 1691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    .line 1692
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 1693
    return-void
.end method

.method startMonitoringSignificantMotion()V
    .locals 3

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    if-nez v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 1745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    .line 1747
    :cond_0
    return-void
.end method

.method stepIdleStateLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1601
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 1603
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1604
    .local v8, "now":J
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v0, v8

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1606
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v0, :cond_0

    .line 1607
    const-string v0, "alarm"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 1686
    :cond_0
    :goto_0
    return-void

    .line 1612
    :cond_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1616
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringSignificantMotion()V

    .line 1617
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 1619
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 1620
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 1621
    iput v6, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1623
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    goto :goto_0

    .line 1626
    :pswitch_1
    iput v10, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1628
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleSensingAlarmLocked(J)V

    .line 1630
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 1631
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    .line 1632
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1633
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 1634
    iput-object v11, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 1635
    iput-object v11, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    goto :goto_0

    .line 1638
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1640
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleSensingAlarmLocked(J)V

    .line 1642
    iput-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 1645
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    :goto_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1652
    iput-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mHaveGps:Z

    .line 1653
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v6}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto/16 :goto_0

    .line 1647
    :catch_0
    move-exception v7

    .line 1648
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "DeviceIdleController"

    const-string v1, "Bad LocationManger settings"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1656
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mHaveGps:Z

    goto/16 :goto_0

    .line 1660
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingAlarmLocked()V

    .line 1661
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 1662
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 1664
    :pswitch_4
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 1667
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 1669
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 1670
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1671
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1676
    :pswitch_5
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 1679
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 1681
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1682
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1683
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1612
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method stopMonitoringSignificantMotion()V
    .locals 3

    .prologue
    .line 1751
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSigMotionListener:Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSigMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 1753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSigMotionActive:Z

    .line 1755
    :cond_0
    return-void
.end method

.method updateChargingLocked(Z)V
    .locals 2
    .param p1, "charging"    # Z

    .prologue
    .line 1537
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1

    .line 1538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1539
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_0

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1548
    :cond_0
    :goto_0
    return-void

    .line 1542
    :cond_1
    if-eqz p1, :cond_0

    .line 1543
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1544
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_0

    .line 1545
    const-string v0, "charging"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method updateDisplayLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1516
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    .line 1520
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 1522
    .local v0, "screenOn":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v3, :cond_2

    .line 1523
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1524
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v1, :cond_0

    .line 1525
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1533
    :cond_0
    :goto_1
    return-void

    .end local v0    # "screenOn":Z
    :cond_1
    move v0, v2

    .line 1520
    goto :goto_0

    .line 1527
    .restart local v0    # "screenOn":Z
    :cond_2
    if-eqz v0, :cond_0

    .line 1528
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1529
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v1, :cond_0

    .line 1530
    const-string/jumbo v1, "screen"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method writeConfigFileLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1975
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    .line 1976
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1977
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2008
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2009
    const-string v2, "config"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2011
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2012
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "wl"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2013
    const-string/jumbo v2, "n"

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2014
    const-string/jumbo v2, "wl"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2010
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2016
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v2, "config"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2017
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2018
    return-void
.end method
