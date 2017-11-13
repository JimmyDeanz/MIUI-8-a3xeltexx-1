.class public Lcom/android/server/usb/UsbHostRestrictor;
.super Ljava/lang/Object;
.source "UsbHostRestrictor.java"


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbHostRestrictor"

.field private static final USB_HOST_DISABLE_FILE_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/disable"
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private static final USB_HOST_ENABLE_PATH:Ljava/lang/String; = "/sys/class/usb_notify"

.field private static final USB_HOST_PATH:Ljava/lang/String; = "/devices/virtual/host_notify"

.field private static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field private static mCurrentSysNodeValue:Ljava/lang/String;

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mBootCompleted:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private final mLock:Ljava/lang/Object;

.field private final mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUEventHostObserver:Landroid/os/UEventObserver;

.field private final mUPSMReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "OFF"

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mUsbDeviceManager"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$1;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$3;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUPSMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$4;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$4;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventHostObserver:Landroid/os/UEventObserver;

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventHostObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUPSMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->handleBootCompleteBroadcast()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbHostRestrictor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->turnOnLcd()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V

    return-void
.end method

.method private checkBuildType()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .local v1, "checkType":Ljava/lang/String;
    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "ENG"

    .local v0, "buildType":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "buildType":Ljava/lang/String;
    :cond_0
    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "USER"

    .restart local v0    # "buildType":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "buildType":Ljava/lang/String;
    :cond_1
    const-string v0, "ENG"

    .restart local v0    # "buildType":Ljava/lang/String;
    goto :goto_0
.end method

.method private checkUsbBlockingCondition(Ljava/lang/String;)Z
    .locals 5
    .param p1, "disableValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "ENG"

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkBuildType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "UsbHostRestrictor"

    const-string v3, "Cannot DISABLE USB at ENG BINARY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const-string v3, "USER"

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkBuildType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "CHM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    .local v0, "isUPSModeOn":Z
    if-eqz v0, :cond_4

    const-string v3, "ON_ALL_SIM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ON_ALL_UPSM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ON_ALL_BOTH"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v1, "UsbHostRestrictor"

    const-string v3, "DISABLE USB for USER BINARY and CMCC MODEL and UPSM"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v2, "OFF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 2"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v3, "ON_ALL_SIM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ON_ALL_BOTH"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v1, "UsbHostRestrictor"

    const-string v3, "DISABLE USB for USER BINARY and CMCC MODEL"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_6
    const-string v2, "OFF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 3"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 4"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "isUPSModeOn":Z
    :cond_8
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "ON_ALL_UPSM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "ON_ALL_BOTH"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const-string v1, "UsbHostRestrictor"

    const-string v3, "DISABLE USB for USER BINARY and Ultra Power Save Mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto/16 :goto_0

    :cond_a
    const-string v2, "OFF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 5"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 6"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 7"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 8"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getPowerManager()V
    .locals 3

    .prologue
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UsbHost"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    return-void
.end method

.method private getUsbHostDisableSysNodeWritable()Z
    .locals 5

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/usb_notify"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .local v1, "writableHostSysNode":Z
    :goto_0
    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writableHostSysNode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .end local v1    # "writableHostSysNode":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "writableHostSysNode":Z
    goto :goto_0
.end method

.method private handleBootCompleteBroadcast()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->initSetUsbBlock()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initSetUsbBlock()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "isUPSModeOn":Z
    const-string v2, "UsbHostRestrictor"

    const-string v3, "initSetUsbBlock STARTED"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getAllSubInfoCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v0, :cond_4

    const-string v2, "UsbHostRestrictor"

    const-string v3, "SIM was never inserted"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    const-string v2, "UsbHostRestrictor"

    const-string v3, "UPS Mode is ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ON_ALL_BOTH"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [ON] 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "UsbHostRestrictor"

    const-string v3, "UPS Mode is OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ON_ALL_SIM"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [ON] 2"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-lez v0, :cond_8

    const-string v2, "UsbHostRestrictor"

    const-string v3, "SIM was already inserted"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    const-string v2, "UsbHostRestrictor"

    const-string v3, "UPS Mode is ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ON_ALL_UPSM"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [ON] 3"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v2, "UsbHostRestrictor"

    const-string v3, "UPS Mode is OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "OFF"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [OFF]"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    if-gez v0, :cond_0

    const-string v2, "UsbHostRestrictor"

    const-string v3, "SUBINFO value is abnormal"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isUsbBlocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "returnUsbBlockState":Z
    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Current USB BLOCK STATE is UNKNOWN!! So USB is UNBLOCKED as a default value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readDisableSysNodefromFile()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v1, ""

    .local v1, "returnVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/usb_notify/usb_control/disable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v3, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Failed to read from DISABLE FILE"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v2, "OFF"

    sput-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v3, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showAlertDialog()V
    .locals 5

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsReceiverActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cmcc_block_usb"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity to show the USB BLOCK Dialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showToast()V
    .locals 2

    .prologue
    const-string v0, "UsbHostRestrictor"

    const-string v1, "showToast"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->showUsbBlockToastbyUPSM()V

    return-void
.end method

.method private turnOnLcd()V
    .locals 4

    .prologue
    const-string v0, "UsbHostRestrictor"

    const-string v1, "turnOnLcd :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_1
    return-void
.end method

.method private writeDisableSysNodetoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "writeValue"    # Ljava/lang/String;

    .prologue
    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write Disable Sys Node with ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->checkUsbBlockingCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    invoke-static {v1, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    const-string v2, "OFF"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OFF"

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Failed to write to DISABLE FILE"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OFF"

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "USB Host Restrictor State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor mBootCompleted:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MultiSimManager.getAllSubInfoCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getAllSubInfoCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor Disable Sys Node Value :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor Disable Sys Node Writable :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor mCurrentSysNodeValue :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor UPSM ON/OFF :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor SUPPORT UPSM :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
