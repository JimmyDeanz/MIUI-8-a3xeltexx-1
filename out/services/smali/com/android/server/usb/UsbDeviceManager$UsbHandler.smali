.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation


# static fields
.field private static final TAG_GENEREAL_INFO:Ljava/lang/String; = "GeneralInfo"

.field private static final TAG_REGION:Ljava/lang/String; = "Region"

.field private static final USB30_AVAILABLE:Ljava/lang/String; = "/sys/class/android_usb/android0/ss_host_available"

.field private static final USB30_ENABLED:Ljava/lang/String; = "/sys/class/android_usb/android0/bcdUSB"

.field private static final USB30_ENABLING:Ljava/lang/String; = "/sys/class/android_usb/android0/usb30en"


# instance fields
.field private mAdbNotificationShown:Z

.field private mConfigured:Z

.field private mConnected:Z

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mCurrentFunctions:Ljava/lang/String;

.field private mCurrentFunctionsApplied:Z

.field private mCurrentUser:I

.field private mHostConnected:Z

.field private final mKeyguardUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerConnected:Z

.field private final mPowerConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsb30ConnectionIsInProgressLock"
    .end annotation
.end field

.field private final mUsb30ConnectionIsInProgressLock:Ljava/lang/Object;

.field private mUsb30NotificationId:I

.field private mUsbDataUnlocked:Z

.field private final mUsbDeviceStates:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbNotificationId:I

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V
    .locals 7
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    .line 458
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 459
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 412
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    .line 418
    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 420
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    .line 421
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceStates:Ljava/util/LinkedHashMap;

    .line 423
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 444
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mKeyguardUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 1158
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsb30ConnectionIsInProgressLock:Ljava/lang/Object;

    .line 1159
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;

    .line 462
    :try_start_0
    const-string/jumbo v3, "sys.usb.config"

    const-string/jumbo v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 464
    const-string/jumbo v3, "none"

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v4, "sys.usb.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 469
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object v3

    const-string v4, "adb"

    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {p1, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 471
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 473
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "state":Ljava/lang/String;
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read \'/sys/class/android_usb/android0/state\', state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 477
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initalized current function "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;

    invoke-direct {v6, p1}, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 485
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v3

    const-string v4, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 486
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v3

    const-string v4, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 488
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 492
    .local v1, "powerfilter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 496
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 499
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mKeyguardUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 502
    # invokes: Lcom/android/server/usb/UsbDeviceManager;->registerDeviceRestriction()V
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Lcom/android/server/usb/UsbDeviceManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v1    # "powerfilter":Landroid/content/IntentFilter;
    .end local v2    # "state":Ljava/lang/String;
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UsbDeviceManager"

    const-string v4, "Error initializing UsbHandler"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$2800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsb30Available()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsb30Enabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    return p1
.end method

.method private applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const-string v0, "adb"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 731
    :goto_0
    return-object p1

    .line 729
    :cond_0
    const-string v0, "adb"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getDefaultFunctions()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1450
    const-string/jumbo v6, "persist.sys.usb.q_config"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1453
    .local v3, "q_func":Ljava/lang/String;
    const-string/jumbo v6, "none"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1463
    const-string/jumbo v6, "persist.sys.usb.config"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1465
    .local v2, "func":Ljava/lang/String;
    const-string/jumbo v6, "none"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1469
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 1470
    .local v5, "salesCode":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1471
    const-string v6, "UsbDeviceManager"

    const-string/jumbo v7, "getDefaultFunctions : salesCode is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    const-string v5, "OXA"

    .line 1475
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getRegionCode()Ljava/lang/String;

    move-result-object v4

    .line 1476
    .local v4, "regionCode":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1477
    const-string v6, "UsbDeviceManager"

    const-string/jumbo v7, "getDefaultFunctions : regionCode is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const-string v4, "EUR"

    .line 1484
    :cond_2
    const-string/jumbo v6, "ro.build.type"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1486
    .local v1, "checkType":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "adb_enabled"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_3

    const/4 v0, 0x1

    .line 1489
    .local v0, "adbEnable":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 1491
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v6, v0}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1494
    :cond_4
    const-string v6, "VZW"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mCheckUSAOpen:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$2100()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1495
    const-string/jumbo v6, "eng"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1496
    const-string/jumbo v6, "vzw_charging"

    invoke-static {v2, v6}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1497
    const-string v6, "UsbDeviceManager"

    const-string/jumbo v7, "getDefaultFunctions : Default Function set as CHARGING for VZW USER"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const-string/jumbo v6, "vzw_charging"

    invoke-direct {p0, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1500
    const-string/jumbo v6, "persist.sys.usb.config"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isFactoryBinary()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1518
    const-string/jumbo v2, "mtp,adb"

    .line 1519
    const-string/jumbo v6, "persist.sys.usb.config"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :cond_6
    const-string v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDefaultFunctions : func = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    .end local v0    # "adbEnable":Z
    .end local v1    # "checkType":Ljava/lang/String;
    .end local v2    # "func":Ljava/lang/String;
    .end local v4    # "regionCode":Ljava/lang/String;
    .end local v5    # "salesCode":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1458
    :cond_7
    const-string v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDefaultFunctions : q_func = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1460
    goto :goto_1

    .line 1503
    .restart local v0    # "adbEnable":Z
    .restart local v1    # "checkType":Ljava/lang/String;
    .restart local v2    # "func":Ljava/lang/String;
    .restart local v4    # "regionCode":Ljava/lang/String;
    .restart local v5    # "salesCode":Ljava/lang/String;
    :cond_8
    const-string/jumbo v6, "mtp"

    invoke-static {v2, v6}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1504
    const-string v6, "UsbDeviceManager"

    const-string/jumbo v7, "getDefaultFunctions : Default Function set as vzw_charging,adb for VZW ENG"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const-string/jumbo v2, "mtp,adb"

    .line 1507
    const-string/jumbo v6, "persist.sys.usb.config"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1510
    :cond_9
    const-string/jumbo v6, "mtp"

    invoke-static {v2, v6}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1511
    const-string v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDefaultFunctions : Default Function Modified as ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const-string/jumbo v6, "mtp"

    invoke-direct {p0, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1514
    const-string/jumbo v6, "persist.sys.usb.config"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getRegionCode()Ljava/lang/String;
    .locals 14

    .prologue
    .line 1573
    const/4 v6, 0x0

    .line 1574
    .local v6, "regionCode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1576
    .local v2, "fis":Ljava/io/FileInputStream;
    const-string/jumbo v11, "persis.sys.omc_path"

    const-string/jumbo v12, "unknown"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1578
    .local v0, "CUSTOMER_XML_FILE":Ljava/lang/String;
    const-string/jumbo v11, "unknown"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1579
    const-string v11, "UsbDeviceManager"

    const-string v12, "There is no value at OMC PATH"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const-string v0, "/system/csc/customer.xml"

    .line 1587
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1589
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1592
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_4

    .line 1593
    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 1594
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1595
    .local v8, "tag":Ljava/lang/String;
    const-string v11, "GeneralInfo"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1596
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_0

    .line 1597
    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Region"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1598
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1599
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 1614
    if-eqz v3, :cond_2

    .line 1615
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_1
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v7, v6

    .line 1620
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "regionCode":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    .local v7, "regionCode":Ljava/lang/String;
    :goto_2
    return-object v7

    .line 1582
    .end local v7    # "regionCode":Ljava/lang/String;
    .restart local v6    # "regionCode":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/customer.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1583
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Customer path : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1614
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "type":I
    :cond_4
    if-eqz v3, :cond_5

    .line 1615
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_6
    :goto_3
    move-object v7, v6

    .line 1620
    .end local v6    # "regionCode":Ljava/lang/String;
    .restart local v7    # "regionCode":Ljava/lang/String;
    goto :goto_2

    .line 1616
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "regionCode":Ljava/lang/String;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "regionCode":Ljava/lang/String;
    .restart local v9    # "type":I
    :catch_0
    move-exception v11

    move-object v2, v3

    .line 1619
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1606
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v1

    .line 1607
    .local v1, "fe":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_4
    const-string v11, "UsbDeviceManager"

    const-string/jumbo v12, "customer.xml file not found"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1614
    if-eqz v2, :cond_6

    .line 1615
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 1616
    :catch_2
    move-exception v11

    goto :goto_3

    .line 1608
    .end local v1    # "fe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v10

    .line 1609
    .local v10, "xpe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    :try_start_6
    const-string v11, "UsbDeviceManager"

    const-string v12, "Error customer.xml file"

    invoke-static {v11, v12, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1614
    if-eqz v2, :cond_6

    .line 1615
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 1616
    :catch_4
    move-exception v11

    goto :goto_3

    .line 1610
    .end local v10    # "xpe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v5

    .line 1611
    .local v5, "ioe":Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v11, "UsbDeviceManager"

    const-string v12, "IO error customer.xml file"

    invoke-static {v11, v12, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1614
    if-eqz v2, :cond_6

    .line 1615
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 1616
    :catch_6
    move-exception v11

    goto :goto_3

    .line 1613
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 1614
    :goto_7
    if-eqz v2, :cond_7

    .line 1615
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1618
    :cond_7
    :goto_8
    throw v11

    .line 1616
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":I
    :catch_7
    move-exception v11

    goto :goto_1

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v12

    goto :goto_8

    .line 1613
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 1610
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 1608
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v10

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1606
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private getSalesCode()Ljava/lang/String;
    .locals 13

    .prologue
    .line 1528
    const-string/jumbo v7, "null"

    .line 1530
    .local v7, "sales_code":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1531
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 1534
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v9, "/efs/imei/mps_code.dat"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v6, "mps_fd":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/csc/sales_code.dat"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1537
    .local v8, "sales_fd":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1538
    const-string v9, "UsbDeviceManager"

    const-string/jumbo v10, "mps exists"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    new-instance v4, Ljava/io/FileReader;

    const-string v9, "/efs/imei/mps_code.dat"

    invoke-direct {v4, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    .end local v3    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1541
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 1556
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :goto_0
    if-eqz v3, :cond_0

    .line 1557
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 1558
    :cond_0
    if-eqz v0, :cond_1

    .line 1559
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1565
    .end local v6    # "mps_fd":Ljava/io/File;
    .end local v8    # "sales_fd":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v7

    .line 1542
    .restart local v6    # "mps_fd":Ljava/io/File;
    .restart local v8    # "sales_fd":Ljava/io/File;
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1543
    const-string v9, "UsbDeviceManager"

    const-string/jumbo v10, "sales_code exists"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    new-instance v4, Ljava/io/FileReader;

    const-string v9, "/system/csc/sales_code.dat"

    invoke-direct {v4, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1545
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1546
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1548
    :cond_3
    :try_start_7
    const-string v9, "UsbDeviceManager"

    const-string v10, "Both dat does not exist"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1550
    .end local v6    # "mps_fd":Ljava/io/File;
    .end local v8    # "sales_fd":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1551
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_8
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File not Found exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1556
    if-eqz v3, :cond_4

    .line 1557
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 1558
    :cond_4
    if-eqz v0, :cond_1

    .line 1559
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 1560
    :catch_1
    move-exception v5

    .line 1561
    .local v5, "iex":Ljava/io/IOException;
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException(iex): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1560
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "iex":Ljava/io/IOException;
    .restart local v6    # "mps_fd":Ljava/io/File;
    .restart local v8    # "sales_fd":Ljava/io/File;
    :catch_2
    move-exception v5

    .line 1561
    .restart local v5    # "iex":Ljava/io/IOException;
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException(iex): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1552
    .end local v5    # "iex":Ljava/io/IOException;
    .end local v6    # "mps_fd":Ljava/io/File;
    .end local v8    # "sales_fd":Ljava/io/File;
    :catch_3
    move-exception v2

    .line 1553
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_a
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1556
    if-eqz v3, :cond_5

    .line 1557
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 1558
    :cond_5
    if-eqz v0, :cond_1

    .line 1559
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .line 1560
    :catch_4
    move-exception v5

    .line 1561
    .restart local v5    # "iex":Ljava/io/IOException;
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException(iex): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1555
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "iex":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1556
    :goto_4
    if-eqz v3, :cond_6

    .line 1557
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 1558
    :cond_6
    if-eqz v0, :cond_7

    .line 1559
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 1562
    :cond_7
    :goto_5
    throw v9

    .line 1560
    :catch_5
    move-exception v5

    .line 1561
    .restart local v5    # "iex":Ljava/io/IOException;
    const-string v10, "UsbDeviceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException(iex): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1555
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v5    # "iex":Ljava/io/IOException;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v6    # "mps_fd":Ljava/io/File;
    .restart local v8    # "sales_fd":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 1552
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 1550
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method private isChargingMode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "usbMode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 825
    if-nez p1, :cond_1

    .line 833
    :cond_0
    :goto_0
    return v0

    .line 828
    :cond_1
    const-string v1, "askon"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "charging"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "none"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFactoryBinary()Z
    .locals 3

    .prologue
    .line 1446
    const-string/jumbo v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUsb30Available()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1170
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/ss_host_available"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v0, "USB30_AVAILABLE_PATH":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return v3

    .line 1175
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/ss_host_available"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1176
    .local v2, "state":Ljava/lang/String;
    const-string v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUsb30Available: read \'/sys/class/android_usb/android0/ss_host_available\', state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1178
    const/4 v3, 0x1

    goto :goto_0

    .line 1179
    .end local v2    # "state":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1180
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "UsbDeviceManager"

    const-string v5, "Error reading at isUsb30Available()"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isUsb30Enabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1187
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/bcdUSB"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v0, "USB30_ENABLED_PATH":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return v3

    .line 1190
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v5, "askon"

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1191
    const-string v4, "UsbDeviceManager"

    const-string/jumbo v5, "isUsb30Enabled: always return false in charging only mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1196
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/bcdUSB"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1197
    .local v2, "state":Ljava/lang/String;
    const-string v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUsb30Enabled: read \'/sys/class/android_usb/android0/bcdUSB\', state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const-string v4, "0300"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1199
    const/4 v3, 0x1

    goto :goto_0

    .line 1200
    .end local v2    # "state":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1201
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "UsbDeviceManager"

    const-string v5, "Error reading at isUsb30Enabled()"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isUsbTransferAllowed()Z
    .locals 3

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 736
    .local v0, "userManager":Landroid/os/UserManager;
    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readBatteryOnline()I
    .locals 7

    .prologue
    .line 837
    const/4 v1, 0x0

    .line 838
    .local v1, "online":I
    const/4 v2, 0x0

    .line 840
    .local v2, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/power_supply/battery/online"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    .line 842
    const-string v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery online : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 846
    if-eqz v3, :cond_2

    .line 847
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    move-object v2, v3

    .line 850
    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    return v1

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v4, "UsbDeviceManager"

    const-string v5, "Error reading at battery online path"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    if-eqz v2, :cond_0

    .line 847
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 846
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 847
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_1
    throw v4

    .line 846
    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_2

    .line 843
    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_1

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :cond_2
    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_0
.end method

.method private setAdbEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 613
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAdbEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (mAdbEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eq p1, v2, :cond_1

    .line 615
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 619
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "oldFunctions":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "newFunctions":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 623
    const-string v2, "adb"

    invoke-static {v0, v2}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 624
    const-string/jumbo v2, "persist.sys.usb.config"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 639
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .line 642
    .end local v0    # "newFunctions":Ljava/lang/String;
    .end local v1    # "oldFunctions":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 643
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    .line 645
    :cond_2
    return-void

    .line 626
    .restart local v0    # "newFunctions":Ljava/lang/String;
    .restart local v1    # "oldFunctions":Ljava/lang/String;
    :cond_3
    const-string v2, "UsbDeviceManager"

    const-string/jumbo v3, "setAdbEnabled: ADB enabled, but no adb at FunctionName"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :cond_4
    const-string v2, "adb"

    invoke-static {v0, v2}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 630
    const-string/jumbo v2, "persist.sys.usb.config"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_5
    const-string v2, "UsbDeviceManager"

    const-string/jumbo v3, "setAdbEnabled: ADB disabled, but adb at FunctionName"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setEnabledFunctions(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    .prologue
    const/4 v5, 0x0

    .line 651
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnabledFunctions functions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "forceRestart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 656
    .local v0, "oldFunctions":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 658
    .local v1, "oldFunctionsApplied":Z
    const-string v2, "charging"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    const-string v2, "charging"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 669
    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 670
    const-string v2, "UsbDeviceManager"

    const-string v3, "Failsafe 1: Restoring previous USB functions."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-direct {p0, v0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 678
    :cond_2
    const-string v2, "charging"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 679
    const-string v2, "UsbDeviceManager"

    const-string v3, "Failsafe 2: Restoring default USB functions."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v2, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    :cond_3
    const-string v2, "charging"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 688
    const-string v2, "UsbDeviceManager"

    const-string v3, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string/jumbo v2, "none"

    invoke-direct {p0, v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    :cond_4
    const-string v2, "UsbDeviceManager"

    const-string v3, "Unable to set any USB functions!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUsbConfig(Ljava/lang/String;)Z
    .locals 4
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 587
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbConfig("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "sys.usb.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbConfig: this is same as before : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v1, 0x1

    .line 599
    :goto_0
    return v1

    .line 598
    :cond_0
    const-string/jumbo v1, "sys.usb.config"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private showUsbBlockAlertDialog()V
    .locals 5

    .prologue
    .line 1386
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1387
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsReceiverActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    const-string v2, "cmcc_block_usb"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1389
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1392
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_0
    return-void

    .line 1393
    :catch_0
    move-exception v0

    .line 1394
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UsbDeviceManager"

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

.method private trySetEnabledFunctions(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 699
    if-nez p1, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object p1

    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 703
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 705
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_3

    .line 707
    :cond_1
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting USB config to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 709
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 712
    const-string/jumbo v2, "none"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    .line 715
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 716
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to switch USB config to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    return v0

    .line 720
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    :cond_3
    move v0, v1

    .line 722
    goto :goto_0
.end method

.method private updateAdbNotification()V
    .locals 12

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbShowNotificationBar:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2700(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAdbNotification : mAdbEnabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mConnected = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mAdbNotificationShown = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1404
    const v6, 0x10403f6

    .line 1405
    .local v6, "id":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_2

    .line 1406
    const-string v0, "0"

    const-string/jumbo v1, "persist.adb.notify"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-nez v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1410
    .local v10, "r":Landroid/content/res/Resources;
    const v0, 0x10403f6

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1411
    .local v11, "title":Ljava/lang/CharSequence;
    const v0, 0x10403f7

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1414
    .local v7, "message":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.DevelopmentSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1417
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1420
    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x10807a5

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x1060059

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 1434
    .local v8, "notification":Landroid/app/Notification;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1435
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const v3, 0x10403f6

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v8, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1438
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "r":Landroid/content/res/Resources;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-eqz v0, :cond_0

    .line 1439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1440
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const v3, 0x10403f6

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method private updateAudioSourceFunction()V
    .locals 8

    .prologue
    .line 854
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "audio_source"

    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 856
    .local v3, "enabled":Z
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v6

    if-eq v3, v6, :cond_1

    .line 857
    const/4 v0, -0x1

    .line 858
    .local v0, "card":I
    const/4 v1, -0x1

    .line 860
    .local v1, "device":I
    if-eqz v3, :cond_0

    .line 861
    const/4 v4, 0x0

    .line 863
    .local v4, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v5, Ljava/util/Scanner;

    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/class/android_usb/android0/f_audio_source/pcm"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    .end local v4    # "scanner":Ljava/util/Scanner;
    .local v5, "scanner":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .line 865
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 869
    if-eqz v5, :cond_0

    .line 870
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    .line 874
    .end local v5    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    move-result-object v6

    invoke-virtual {v6, v3, v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->setAccessoryAudioState(ZII)V

    .line 876
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z
    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 878
    .end local v0    # "card":I
    .end local v1    # "device":I
    :cond_1
    return-void

    .line 866
    .restart local v0    # "card":I
    .restart local v1    # "device":I
    .restart local v4    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    .line 867
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v6, "UsbDeviceManager"

    const-string/jumbo v7, "could not open audio source PCM file"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 869
    if-eqz v4, :cond_0

    .line 870
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 869
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_2

    .line 870
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v6

    .line 869
    .end local v4    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "scanner":Ljava/util/Scanner;
    goto :goto_2

    .line 866
    .end local v4    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "scanner":Ljava/util/Scanner;
    goto :goto_1
.end method

.method private updateCurrentAccessory()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 742
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v0, 0x1

    .line 746
    .local v0, "enteringAccessoryMode":Z
    :goto_0
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCurrentAccessory: mCurrentAccessory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mAccessoryModeRequestTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",SystemClock.elapsedRealtime() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",enteringAccessoryMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mConfigured "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mConnected  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 756
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 757
    new-instance v1, Landroid/hardware/usb/UsbAccessory;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 758
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "entering USB accessory mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    const-string v1, "UsbDeviceManager"

    const-string/jumbo v2, "send ACTION_USB_ACCESSORY_ATTACHED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 763
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J
    invoke-static {v1, v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1202(Lcom/android/server/usb/UsbDeviceManager;J)J

    .line 783
    :cond_0
    :goto_1
    return-void

    .end local v0    # "enteringAccessoryMode":Z
    :cond_1
    move v0, v1

    .line 742
    goto/16 :goto_0

    .line 766
    .restart local v0    # "enteringAccessoryMode":Z
    :cond_2
    const-string v1, "UsbDeviceManager"

    const-string/jumbo v2, "nativeGetAccessoryStrings failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 768
    :cond_3
    if-nez v0, :cond_0

    .line 771
    const-string v2, "UsbDeviceManager"

    const-string/jumbo v3, "exited USB accessory mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-direct {p0, v8, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 774
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_0

    .line 775
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 776
    const-string v1, "UsbDeviceManager"

    const-string/jumbo v2, "send ACTION_USB_ACCESSORY_DETACHED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    .line 779
    :cond_4
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 780
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1302(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_1
.end method

.method private updateMidiFunction()V
    .locals 8

    .prologue
    .line 881
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v5, "midi"

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 883
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-eq v1, v4, :cond_1

    .line 884
    if-eqz v1, :cond_0

    .line 885
    const/4 v2, 0x0

    .line 887
    .local v2, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiCard:I
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->access$1902(Lcom/android/server/usb/UsbDeviceManager;I)I

    .line 889
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiDevice:I
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->access$2002(Lcom/android/server/usb/UsbDeviceManager;I)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 894
    if-eqz v3, :cond_0

    .line 895
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 899
    .end local v3    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1802(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 901
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiCard:I
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiDevice:I
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    .line 902
    return-void

    .line 890
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string v4, "UsbDeviceManager"

    const-string/jumbo v5, "could not open MIDI PCM file"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 892
    const/4 v1, 0x0

    .line 894
    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 894
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    .line 895
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v4

    .line 901
    .end local v2    # "scanner":Ljava/util/Scanner;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 894
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_3

    .line 890
    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_2
.end method

.method private updateUsbCableState(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .prologue
    .line 816
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_CABLE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 817
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 818
    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 820
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending intent : ACTION_USB_CABLE_STATE : connected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method private updateUsbFunctions()V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    .line 811
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    .line 812
    return-void
.end method

.method private updateUsbNotification()V
    .locals 1

    .prologue
    .line 1376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1377
    return-void
.end method

.method private updateUsbNotification(Z)V
    .locals 13
    .param p1, "refresh"    # Z

    .prologue
    .line 1225
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsbNotification : mConnected = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mConfigured = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mCurrentFunctions = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    const/4 v6, 0x0

    .line 1230
    .local v6, "id":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1232
    .local v10, "r":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSalesCode()Ljava/lang/String;

    move-result-object v11

    .line 1233
    .local v11, "salesCode":Ljava/lang/String;
    if-nez v11, :cond_2

    .line 1234
    const-string v0, "UsbDeviceManager"

    const-string/jumbo v1, "updateUsbNotification : salesCode is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v11, "OXA"

    .line 1238
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v0, :cond_4

    .line 1244
    :cond_3
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "charging"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1246
    const v6, 0x10403f0

    .line 1306
    :cond_4
    :goto_1
    if-nez p1, :cond_5

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eq v6, v0, :cond_0

    .line 1308
    :cond_5
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v0, :cond_6

    .line 1309
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1311
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1312
    .local v12, "title":Ljava/lang/CharSequence;
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsbNotification : cancel id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", title = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1315
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_6
    if-eqz v6, :cond_0

    .line 1316
    const v0, 0x10403f5

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1319
    .local v7, "message":Ljava/lang/CharSequence;
    const-string v0, "VZW"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mCheckUSAOpen:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$2100()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1320
    const v0, 0x1040bf7

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1323
    :cond_7
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1325
    .restart local v12    # "title":Ljava/lang/CharSequence;
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsbNotification : isKeyguardShowingAndNotOccluded = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$2600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isKeyguardSecure = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$2600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mBootCompleted = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1331
    const v0, 0x1040bf8

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1337
    :cond_8
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.deviceinfo.UsbModeChooserActivity"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1341
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON_ALL_SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON_ALL_BOTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1344
    :cond_9
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.SettingsReceiverActivity"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1347
    const-string v0, "cmcc_block_usb"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1350
    :cond_a
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1353
    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x10807a5

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x1060059

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 1367
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v6, v8, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1369
    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1370
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsbNotification : notify id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", title = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1247
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_b
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v1, "mtp"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1249
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mtp_and_ptp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->hasDeviceRestriction(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1251
    const-string v0, "VZW"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mCheckUSAOpen:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$2100()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1252
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const v6, 0x1040bf1

    :goto_2
    goto/16 :goto_1

    :cond_c
    const v6, 0x1040bf3

    goto :goto_2

    .line 1254
    :cond_d
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const v6, 0x1040bf1

    :goto_3
    goto/16 :goto_1

    :cond_e
    const v6, 0x10403f1

    goto :goto_3

    .line 1257
    :cond_f
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v1, "ptp"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1259
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mtp_and_ptp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->hasDeviceRestriction(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1261
    const-string v0, "VZW"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mCheckUSAOpen:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$2100()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1262
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const v6, 0x1040bf2

    :goto_4
    goto/16 :goto_1

    :cond_10
    const v6, 0x1040bf4

    goto :goto_4

    .line 1264
    :cond_11
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const v6, 0x1040bf2

    :goto_5
    goto/16 :goto_1

    :cond_12
    const v6, 0x10403f2

    goto :goto_5

    .line 1267
    :cond_13
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v1, "midi"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1270
    const-string v0, "VZW"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mCheckUSAOpen:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$2100()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1271
    const v6, 0x1040bf5

    goto/16 :goto_1

    .line 1273
    :cond_14
    const v6, 0x10403f3

    goto/16 :goto_1

    .line 1275
    :cond_15
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v1, "mass_storage"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1277
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mass_storage"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->hasDeviceRestriction(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1278
    const v6, 0x1040711

    goto/16 :goto_1

    .line 1280
    :cond_16
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "accessory"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1282
    const v6, 0x10403f4

    goto/16 :goto_1

    .line 1283
    :cond_17
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "askon"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1285
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->readBatteryOnline()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_18

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->readBatteryOnline()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_19

    .line 1286
    :cond_18
    const-string v0, "UsbDeviceManager"

    const-string/jumbo v1, "connected for HDMI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1287
    :cond_19
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON_ALL_UPSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1289
    const-string v0, "UsbDeviceManager"

    const-string v1, "Block for UPSM mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1291
    :cond_1a
    const-string v0, "UsbDeviceManager"

    const-string/jumbo v1, "updateUsbNotification : mCurrentFunctions is [askon]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const v6, 0x1040a67

    goto/16 :goto_1

    .line 1294
    :cond_1b
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v1, "vzw_charging"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1296
    const-string v0, "UsbDeviceManager"

    const-string/jumbo v1, "updateUsbNotification : mCurrentFunctions is [VZW CHARGING]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const v6, 0x1040bf6

    goto/16 :goto_1

    .line 1298
    :cond_1c
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v1, "sec_charging"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1300
    const-string v0, "UsbDeviceManager"

    const-string/jumbo v1, "updateUsbNotification : mCurrentFunctions is [SEC CHARGING]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const v6, 0x1040a67

    goto/16 :goto_1
.end method

.method private updateUsbStateBroadcast()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 787
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 790
    const-string/jumbo v3, "connected"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 791
    const-string/jumbo v3, "configured"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 792
    const-string/jumbo v3, "unlocked"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 794
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 795
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "functions":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 797
    aget-object v3, v0, v1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    .end local v0    # "functions":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " configured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 804
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sending intent : ACTION_USB_STATE : connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", configured = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", functions = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void
.end method

.method private waitForState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    .line 578
    const-string/jumbo v2, "sys.usb.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 583
    :goto_1
    return v2

    .line 580
    :cond_0
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_1
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") FAILED: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1625
    const-string v1, "  USB Device State:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Current Functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Current Functions Applied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Configured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    UsbDataUnlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    CurrentAccessory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    UseUsbNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$2400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsb30ConnectionIsInProgressLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1634
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mUsb30ConnectionIsInProgress "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1635
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1637
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel function list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/functions"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    usb 3.0 available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/ss_host_available"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    usb 3.0 enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/bcdUSB"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    usb 3.0 enabling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/usb30en"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1652
    :goto_0
    return-void

    .line 1635
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1649
    :catch_0
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public getCurrentFunctions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 906
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 908
    :sswitch_0
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleMessage -> MSG_UPDATE_STATE connected = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",configured = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 910
    iget v11, p1, Landroid/os/Message;->arg2:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 911
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v11, :cond_1

    .line 915
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    .line 916
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .line 918
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v12, "accessory"

    invoke-static {v11, v12}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 920
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    .line 925
    :cond_2
    :goto_3
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 926
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    .line 927
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    .line 930
    :cond_3
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    .line 931
    .local v6, "salesCode":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 932
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_UPDATE_STATE : salesCode is null"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v6, "OXA"

    .line 937
    :cond_4
    const-string v11, "VZW"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mCheckUSAOpen:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$2100()Z

    move-result v11

    if-nez v11, :cond_0

    .line 938
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v12, "vzw_charging"

    invoke-static {v11, v12}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 942
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_UPDATE_STATE : VZW CHARGING is configured state"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string/jumbo v11, "ro.crypto.state"

    const-string/jumbo v12, "unencrypted"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 945
    .local v5, "roCryptoState":Ljava/lang/String;
    const-string/jumbo v11, "vold.decrypt"

    const-string/jumbo v12, "trigger_restart_framework"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 947
    .local v9, "voldDecrypt":Ljava/lang/String;
    const-string/jumbo v11, "encrypted"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string/jumbo v11, "trigger_restart_min_framework"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 948
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_UPDATE_STATE : ENCRYPTED LOCKSCREEN. So skip about showing VZW USB Instruction Popup"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 909
    .end local v5    # "roCryptoState":Ljava/lang/String;
    .end local v6    # "salesCode":Ljava/lang/String;
    .end local v9    # "voldDecrypt":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 910
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 921
    :cond_7
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v11, :cond_2

    .line 923
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 949
    .restart local v5    # "roCryptoState":Ljava/lang/String;
    .restart local v6    # "salesCode":Ljava/lang/String;
    .restart local v9    # "voldDecrypt":Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "user_setup_complete"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    .line 950
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_UPDATE_STATE : SETUP WIZARD SCREEN. So skip about showing VZW USB Instruction Popup"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 952
    :cond_9
    const-string/jumbo v11, "persist.sys.usb.vzw_connected"

    const-string/jumbo v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 954
    .local v10, "vzw_connected":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 955
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_UPDATE_STATE : VZW already connected before"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 956
    :cond_a
    const-string/jumbo v11, "false"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 957
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_UPDATE_STATE : VZW never connected, so send intent to show a popup"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v4, "mIntent":Landroid/content/Intent;
    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.deviceinfo.UsbChargingNotiDialogVzw"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 964
    :try_start_0
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :goto_4
    const-string/jumbo v11, "persist.sys.usb.vzw_connected"

    const-string/jumbo v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 965
    :catch_0
    move-exception v2

    .line 966
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to start activity to show VZW Fisrt USB Connection Popup : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 972
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "mIntent":Landroid/content/Intent;
    .end local v5    # "roCryptoState":Ljava/lang/String;
    .end local v9    # "voldDecrypt":Ljava/lang/String;
    .end local v10    # "vzw_connected":Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v12, "vzw_charging"

    invoke-static {v11, v12}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 974
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_UPDATE_STATE : VZW CHARGING is connected state"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 979
    .end local v6    # "salesCode":Ljava/lang/String;
    :sswitch_1
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 980
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    goto/16 :goto_0

    .line 979
    :cond_c
    const/4 v11, 0x0

    goto :goto_5

    .line 983
    :sswitch_2
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleMessage -> MSG_ENABLE_ADB = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    const/4 v11, 0x1

    :goto_6
    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v11, 0x0

    goto :goto_6

    .line 987
    :sswitch_3
    const-string v11, "UsbDeviceManager"

    const-string/jumbo v12, "handleMessage -> MSG_SET_CURRENT_FUNCTION"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 990
    .local v3, "functions":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    if-eqz v11, :cond_e

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isChargingMode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 991
    const-string v11, "DISCONNECTED"

    invoke-virtual {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 994
    :cond_e
    const/4 v11, 0x0

    invoke-direct {p0, v3, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 996
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isChargingMode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 997
    const-string v11, "CONFIGURED"

    invoke-virtual {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1001
    .end local v3    # "functions":Ljava/lang/String;
    :sswitch_4
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1004
    :sswitch_5
    const-string v11, "UsbDeviceManager"

    const-string/jumbo v12, "handleMessage -> MSG_SET_USB_DATA_UNLOCKED"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1008
    :sswitch_6
    const-string v11, "UsbDeviceManager"

    const-string/jumbo v12, "handleMessage -> MSG_SYSTEM_READY"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    .line 1010
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .line 1011
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    .line 1013
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1014
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbCableState(Z)V

    .line 1015
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    goto/16 :goto_0

    .line 1019
    :sswitch_7
    const-string v11, "UsbDeviceManager"

    const-string/jumbo v12, "handleMessage -> MSG_BOOT_COMPLETED"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbCableState(Z)V

    .line 1021
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    .line 1022
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    .line 1024
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v11, :cond_f

    .line 1025
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v11, v12}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1027
    :cond_f
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 1028
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v12}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    .line 1030
    :cond_10
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isChargingMode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1031
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v11

    const/16 v12, 0x64

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    goto/16 :goto_0

    .line 1035
    :sswitch_8
    iget v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget v12, p1, Landroid/os/Message;->arg1:I

    if-eq v11, v12, :cond_0

    .line 1037
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v12, "mtp"

    invoke-static {v11, v12}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_11

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v12, "ptp"

    invoke-static {v11, v12}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    :cond_11
    const/4 v0, 0x1

    .line 1041
    .local v0, "active":Z
    :goto_7
    if-eqz v0, :cond_14

    iget v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    const/16 v12, -0x2710

    if-eq v11, v12, :cond_14

    .line 1042
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current user switched to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; resetting USB host stack for MTP or PTP"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 1045
    .local v8, "userManager":Landroid/os/UserManager;
    iget v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1046
    .local v1, "currentUser":Landroid/content/pm/UserInfo;
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 1047
    .local v7, "targetUser":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v11

    if-nez v11, :cond_13

    :cond_12
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1048
    :cond_13
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 1053
    .end local v1    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "targetUser":Landroid/content/pm/UserInfo;
    .end local v8    # "userManager":Landroid/os/UserManager;
    :cond_14
    :goto_8
    iget v11, p1, Landroid/os/Message;->arg1:I

    iput v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    goto/16 :goto_0

    .line 1037
    .end local v0    # "active":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_7

    .line 1050
    .restart local v0    # "active":Z
    .restart local v1    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v7    # "targetUser":Landroid/content/pm/UserInfo;
    .restart local v8    # "userManager":Landroid/os/UserManager;
    :cond_16
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_8

    .line 1058
    .end local v0    # "active":Z
    .end local v1    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "targetUser":Landroid/content/pm/UserInfo;
    .end local v8    # "userManager":Landroid/os/UserManager;
    :sswitch_9
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleMessage -> MSG_POWER_STATE = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbCableState(Z)V

    .line 1061
    :cond_17
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_1c

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isChargingMode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 1062
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    if-eqz v11, :cond_1b

    .line 1063
    const-string v11, "CONFIGURED"

    invoke-virtual {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 1065
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "user_setup_complete"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_18

    .line 1066
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_POWER_STATE : SETUP WIZARD SCREEN. So skip about showing USB BLOCK Popup"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1068
    :cond_18
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_SIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 1069
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->showUsbBlockAlertDialog()V

    goto/16 :goto_0

    .line 1070
    :cond_19
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_BOTH"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 1071
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->showUsbBlockAlertDialog()V

    .line 1072
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v11

    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    goto/16 :goto_0

    .line 1073
    :cond_1a
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_UPSM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1074
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v11

    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    goto/16 :goto_0

    .line 1080
    :cond_1b
    const-string v11, "DISCONNECTED"

    invoke-virtual {p0, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1082
    :cond_1c
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_1d

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_UPSM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 1083
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "user_setup_complete"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 1084
    const-string v11, "UsbDeviceManager"

    const-string v12, "USB Blocked by UPSM while Device is not in CHARGING MODE. And Not on SetupWizard. Show TOAST"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v11

    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    goto/16 :goto_0

    .line 1087
    :cond_1d
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_1e

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_SIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 1088
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "user_setup_complete"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 1089
    const-string v11, "UsbDeviceManager"

    const-string v12, "USB Blocked by SIM while Device is not in CHARGING MODE. Show Dialog"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->showUsbBlockAlertDialog()V

    goto/16 :goto_0

    .line 1092
    :cond_1e
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_BOTH"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1093
    iget-boolean v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "user_setup_complete"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 1094
    const-string v11, "UsbDeviceManager"

    const-string v12, "USB Blocked by BOTH while Device is not in CHARGING MODE. And Not on SetupWizard. Show Dialog and TOAST"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->showUsbBlockAlertDialog()V

    .line 1096
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v11

    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    goto/16 :goto_0

    .line 1102
    :sswitch_a
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleMessage -> MSG_SHOW_UPSM_BLOCK_TOAST = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ultra_powersaving_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1f

    .line 1104
    const-string v11, "UsbDeviceManager"

    const-string v12, "Ultra Power Saving Mode Toast"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x1040bf9

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1106
    :cond_1f
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "emergency_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_20

    .line 1107
    const-string v11, "UsbDeviceManager"

    const-string v12, "Emergency Mode Toast"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x1040bfa

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1110
    :cond_20
    const-string v11, "UsbDeviceManager"

    const-string v12, "Don\'t show Toast"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 906
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_1
        0x9 -> :sswitch_a
        0x64 -> :sswitch_9
    .end sparse-switch
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 517
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 518
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 519
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 520
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Z

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 524
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 525
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 526
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 527
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 528
    return-void

    .line 526
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendMessage(IZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg"    # Z

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 510
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 511
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 512
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 513
    return-void

    .line 511
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendMessage(IZZ)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg0"    # Z
    .param p3, "arg1"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 532
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 533
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 534
    if-eqz p3, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 535
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 536
    return-void

    :cond_0
    move v1, v3

    .line 533
    goto :goto_0

    :cond_1
    move v2, v3

    .line 534
    goto :goto_1
.end method

.method public setUsb30Mode(Z)V
    .locals 6
    .param p1, "modeUSB30on"    # Z

    .prologue
    .line 1208
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/usb30en"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v0, "USB30_ENABLING_PATH":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1222
    :goto_0
    return-void

    .line 1213
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsb30ConnectionIsInProgressLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    :try_start_1
    const-string v2, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUsb30Mode: mUsb30ConnectionIsInProgress "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " write \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sys/class/android_usb/android0/usb30en"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', val = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;

    .line 1216
    const-string v4, "/sys/class/android_usb/android0/usb30en"

    if-eqz p1, :cond_1

    const-string v2, "1"

    :goto_1
    invoke-static {v4, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v2, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUsb30Mode-- mUsb30ConnectionIsInProgress "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " write \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sys/class/android_usb/android0/usb30en"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', val = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1219
    :catch_0
    move-exception v1

    .line 1220
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbDeviceManager"

    const-string v3, "Error setUsb30Mode()"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1216
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    const-string v2, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V
    .locals 6
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "status"    # Landroid/hardware/usb/UsbPortStatus;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 566
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 567
    .local v0, "hostConnected":Z
    :goto_0
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateHostState()  hostConnected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v3, 0x8

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 569
    return-void

    .end local v0    # "hostConnected":Z
    :cond_0
    move v0, v2

    .line 566
    goto :goto_0

    .restart local v0    # "hostConnected":Z
    :cond_1
    move v1, v2

    .line 568
    goto :goto_1
.end method

.method public declared-synchronized updateState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    const-string v3, "DISCONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    const/4 v1, 0x0

    .line 542
    .local v1, "connected":I
    const/4 v0, 0x0

    .line 553
    .local v0, "configured":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 555
    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 560
    .local v2, "msg":Landroid/os/Message;
    if-nez v1, :cond_4

    const-wide/16 v4, 0x5dc

    :goto_1
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateState :: failed to send message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .line 543
    :cond_1
    :try_start_1
    const-string v3, "CONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 544
    const/4 v1, 0x1

    .line 545
    .restart local v1    # "connected":I
    const/4 v0, 0x0

    .restart local v0    # "configured":I
    goto :goto_0

    .line 546
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_2
    const-string v3, "CONFIGURED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    const/4 v1, 0x1

    .line 548
    .restart local v1    # "connected":I
    const/4 v0, 0x1

    .restart local v0    # "configured":I
    goto :goto_0

    .line 550
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_3
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 540
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 560
    .restart local v0    # "configured":I
    .restart local v1    # "connected":I
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method public updateUsbNotificationRefresh()V
    .locals 1

    .prologue
    .line 1381
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1382
    return-void
.end method
