.class public Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
.super Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;
    }
.end annotation


# static fields
.field private static final ACTION_KEYGUARD_REFRESH:Ljava/lang/String; = "com.sec.android.keyguard.REFRESH"

.field private static final ACTION_KNOX_CUSTOM_OPERATOR_NAME:Ljava/lang/String; = "com.sec.action.knoxcustom.OPERATOR_NAME"

.field private static final ACTION_MULTIWINDOW_SEALED_MODE:Ljava/lang/String; = "com.sec.android.multiwindow.SEALED_MODE"

.field private static final ACTION_QUICKSETTING_REFRESH:Ljava/lang/String; = "com.sec.android.quicksetting.REFRESH"

.field public static final DB_UID:I = 0x3e8

.field private static final ETH_STATE_DISABLED:I = 0x1

.field private static final ETH_STATE_ENABLED:I = 0x2

.field private static final ETH_STATE_ENABLING:I = 0x3

.field private static final HEX_CHARS:[C

.field private static final HIDE_SEALED:I = 0x4

.field private static final INVALID_STATUS_BAR_VALUE:I = -0x1

.field private static final KNOX_CUSTOM_FORCE_OTG_CHARGING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/knox_custom_force_otg_charging"

.field private static final KNOX_CUSTOM_FORCE_USB_CHARGING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/knox_custom_force_usb_charging"

.field private static final KNOX_CUSTOM_STATUS_BAR_DISABLE_NOTIFICATIONS:I = 0x1030000

.field private static final SEALED_STATUS_BAR_CLOCK_STATE:Ljava/lang/String; = "sealedStatusBarClockState"

.field private static final SEALED_STATUS_BAR_ICONS_STATE:Ljava/lang/String; = "sealedStatusBarIconsState"

.field private static final SEALED_STATUS_BAR_STATE:Ljava/lang/String; = "sealedStatusBarMode"

.field private static final TAG:Ljava/lang/String; = "KnoxCustomManagerService"

.field static final edgePackages:[Ljava/lang/String;

.field private static mBootReceiver:Landroid/content/BroadcastReceiver;

.field private static mForceLcdBacklightOffEnabled:Z

.field private static mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

.field private static mLockScreenOverrideMode:I

.field private static mWifiConfigure:Z

.field private static mWifiEap:Z

.field private static mWifiPassword:Ljava/lang/String;

.field private static mWifiSSID:Ljava/lang/String;

.field private static mWifiUsername:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private final customBootDirectory:Ljava/lang/String;

.field private final efsPropertyPath:Ljava/lang/String;

.field private final isNotSupported:Z

.field private mAmericanoUI:Z

.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsTablet:Z

.field private mKnoxCustomCurtainModeIsRunning:Z

.field private mTempContext:Landroid/content/Context;

.field private final maxDelay:I

.field private final salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sput-boolean v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    sput-boolean v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    sput v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    sput-boolean v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.appsedge"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.app.taskedge"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.android.service.peoplestripe"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;-><init>()V

    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->DEBUG:Z

    iput-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v2, "/data/b2b"

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->customBootDirectory:Ljava/lang/String;

    const-string v2, "/efs/knoxcustom"

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->efsPropertyPath:Ljava/lang/String;

    const v2, 0x7fffffff

    iput v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->maxDelay:I

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->salesCode:Ljava/lang/String;

    const-string v2, "ATT/VZW/TMB/TMK"

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    iput-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mIsTablet:Z

    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "KnoxCustomManagerService"

    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mIsTablet:Z

    const-string v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "scafe":Ljava/lang/String;
    const-string v2, "americano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    :cond_1
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerBootReceiver()V

    return-void

    .end local v0    # "deviceType":Ljava/lang/String;
    .end local v1    # "scafe":Ljava/lang/String;
    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method private Executer(Ljava/lang/String;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Z
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "output":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    .end local v2    # "p":Ljava/lang/Process;
    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executer() failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->refreshStatusbar()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    return-object v0
.end method

.method private asHex([B)Ljava/lang/String;
    .locals 5
    .param p1, "buf"    # [B

    .prologue
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private checkDotString(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "animPath"    # Ljava/lang/String;
    .param p2, "loopPath"    # Ljava/lang/String;
    .param p3, "soundPath"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x80

    const/16 v8, -0x28

    const/4 v5, 0x0

    .local v5, "result":I
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    if-eqz v9, :cond_1

    const/4 v5, -0x6

    .end local v5    # "result":I
    :cond_0
    :goto_0
    return v5

    .restart local v5    # "result":I
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    move v5, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_5

    :cond_4
    const/16 v5, -0x33

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "animFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "loopFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, "soundFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    move v5, v8

    goto :goto_0

    :cond_7
    :try_start_0
    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "animExt":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "loopExt":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {p3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, "soundExt":Ljava/lang/String;
    const-string v9, ".qmg"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, ".mp4"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown animation: file must be a QMG or MP4"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    goto/16 :goto_0

    :cond_8
    const-string v9, ".qmg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, ".mp4"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown animation: file must be a QMG or MP4"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    goto/16 :goto_0

    :cond_9
    const-string v9, ".ogg"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown sound: file must be a OGG"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v8

    goto/16 :goto_0

    .end local v0    # "animExt":Ljava/lang/String;
    .end local v3    # "loopExt":Ljava/lang/String;
    .end local v6    # "soundExt":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "IndexOutOfBoundException occured as substring method"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    goto/16 :goto_0
.end method

.method private checkIpAddressString(Ljava/lang/String;)Z
    .locals 10
    .param p1, "ipAddressString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "tokens":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .local v5, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "i":I
    if-ltz v2, :cond_0

    const/16 v8, 0xff

    if-gt v2, v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private closeSettingsApp()V
    .locals 7

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const-string v4, "com.android.settings"

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.quicksetting.REFRESH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const-string v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v5, 0x0

    .local v5, "lastPriority":I
    const/4 v0, 0x1

    .local v0, "NeedNewConfig":Z
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v5, v8, :cond_1

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_1
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v0, :cond_5

    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_1
    add-int/lit8 v8, v5, 0x1

    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v7, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    .local v6, "networkId":I
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    invoke-virtual {v7, v6, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "networkId":I
    :cond_3
    return-void

    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "c":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_2
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    const-string v10, "wifi"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .local v9, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v7, 0x0

    .local v7, "lastPriority":I
    const/4 v1, 0x1

    .local v1, "NeedNewEntConfig":Z
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget v10, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v7, v10, :cond_1

    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_1
    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v1, :cond_4

    new-instance v5, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v5}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .local v5, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    iput-object p2, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    add-int/lit8 v10, v7, 0x1

    iput v10, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v9, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .local v8, "networkId":I
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v8    # "networkId":I
    :cond_3
    return-void

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .local v2, "c":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v10, v7, 0x1

    iput v10, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v9, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_1
.end method

.method private deleteExistingFile(Ljava/io/File;)V
    .locals 6
    .param p1, "InfoFilePath"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_3

    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "line":Ljava/lang/String;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_5
    throw v5

    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_5
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private deserializeKnoxCustomStatusbarIconItem([B)Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .locals 7
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .local v3, "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, "p":Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, p1

    invoke-virtual {v2, p1, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v5, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    move-object v3, v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .end local v2    # "p":Landroid/os/Parcel;
    .end local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .local v4, "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :goto_0
    return-object v4

    .end local v4    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .restart local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "deserializeKnoxCustomStatusbarIconItem"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .end local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .restart local v4    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    goto :goto_0
.end method

.method private deserializeObject([B)Ljava/util/ArrayList;
    .locals 8
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, "p":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, p1

    invoke-virtual {v3, p1, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v6, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .local v5, "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    aget-object v2, v5, v1

    .local v2, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    .end local v3    # "p":Landroid/os/Parcel;
    .end local v5    # "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "deserializeObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method private enableStatusBarNotificationsLocal(Z)I
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/high16 v8, 0x1030000

    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .local v3, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .local v1, "flags":I
    if-eqz p1, :cond_0

    or-int v6, v1, v8

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V

    const v6, -0x1030001

    and-int/2addr v6, v1

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    .end local v1    # "flags":I
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "token":J
    :goto_1
    return v2

    .restart local v1    # "flags":I
    .restart local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v4    # "token":J
    :cond_0
    or-int v6, v1, v8

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "flags":I
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "token":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method private enforceProKioskOrSystemPermission()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0x3e8

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceProKioskPermission()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0x3e8

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceRubensFeaturesPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_RUBENS_FEATURES"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSettingPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SETTING"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSystemPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method private fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .locals 13
    .param p1, "sourceFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .local v8, "result":Z
    const/4 v2, 0x0

    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .local v4, "fout":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .local v6, "originFD":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "targetFile":Ljava/io/File;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    if-nez v6, :cond_0

    :try_start_2
    const-string v11, "KnoxCustomManagerService"

    const-string v12, "originFD is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    return v10

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v3, :cond_2

    const/4 v7, 0x0

    .local v7, "read":I
    const/16 v10, 0x400

    :try_start_4
    new-array v0, v10, [B

    .local v0, "buf":[B
    :goto_2
    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    move v10, v8

    goto :goto_1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "read":I
    .restart local v9    # "targetFile":Ljava/io/File;
    :cond_1
    const/4 v8, 0x1

    :try_start_7
    invoke-direct {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_9
    const-string v10, "KnoxCustomManagerService"

    const-string v11, "fail to open inputstream from FileDescriptor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v10

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :goto_7
    throw v10

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v9    # "targetFile":Ljava/io/File;
    :catch_3
    move-exception v1

    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    goto :goto_6

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catchall_2
    move-exception v10

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v9    # "targetFile":Ljava/io/File;
    :catch_5
    move-exception v1

    goto :goto_3

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x400

    const/4 v7, 0x0

    .local v7, "result":Z
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "sourceFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "targetFile":Ljava/io/File;
    new-array v0, v10, [B

    .local v0, "buf":[B
    const/4 v2, 0x0

    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x400

    new-array v0, v10, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .local v6, "read":I
    :goto_0
    const/4 v10, 0x0

    :try_start_2
    array-length v11, v0

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_3
    return v7

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :cond_2
    :try_start_6
    invoke-direct {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v7, 0x1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :cond_3
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_4
    if-eqz v4, :cond_1

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .local v1, "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_5
    :goto_6
    if-eqz v4, :cond_1

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v2, :cond_6

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_7
    :goto_9
    throw v10

    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :catch_b
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v6    # "read":I
    :catch_c
    move-exception v1

    goto :goto_1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_d
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private filePathSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-string v3, ""

    .local v3, "result":Ljava/lang/String;
    const-string v5, "\\/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .local v4, "splited":Ljava/lang/String;
    move-object v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "splited":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ""

    .local v0, "defaultActivity":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getQuickPanelItemId(Ljava/lang/String;)I
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "itemId":I
    const-string v1, "Wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "Location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "SilentMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v1, "RotationLock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "AutoRotate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const-string v1, "Bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const-string v1, "MobileData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    const-string v1, "PowerSaving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    const-string v1, "AirplaneMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    const-string v1, "DormantMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    const-string v1, "Flashlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "TorchLight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/16 v0, 0xa

    goto :goto_0

    :cond_c
    const-string v1, "UltraPowerSaving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v0, 0xb

    goto :goto_0

    :cond_d
    const-string v1, "WiFiHotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "WifiHotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_f
    const-string v1, "SmartStay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_10
    const-string v1, "PersonalMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_11
    const-string v1, "AllShareCast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_12
    const-string v1, "Nfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_13
    const-string v1, "Sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0x11

    goto/16 :goto_0

    :cond_14
    const-string v1, "MultiWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0x12

    goto/16 :goto_0

    :cond_15
    const-string v1, "SFinder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0
.end method

.method private getQuickPanelItemString(I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I

    .prologue
    const-string v0, ""

    .local v0, "itemString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Wifi"

    goto :goto_0

    :pswitch_1
    const-string v0, "Location"

    goto :goto_0

    :pswitch_2
    const-string v0, "SilentMode"

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_0

    const-string v0, "AutoRotate"

    goto :goto_0

    :cond_0
    const-string v0, "RotationLock"

    goto :goto_0

    :pswitch_4
    const-string v0, "Bluetooth"

    goto :goto_0

    :pswitch_5
    const-string v0, "MobileData"

    goto :goto_0

    :pswitch_6
    const-string v0, "PowerSaving"

    goto :goto_0

    :pswitch_7
    const-string v0, "AirplaneMode"

    goto :goto_0

    :pswitch_8
    const-string v0, "DormantMode"

    goto :goto_0

    :pswitch_9
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_1

    const-string v0, "TorchLight"

    goto :goto_0

    :cond_1
    const-string v0, "Flashlight"

    goto :goto_0

    :pswitch_a
    const-string v0, "UltraPowerSaving"

    goto :goto_0

    :pswitch_b
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_2

    const-string v0, "WiFiHotspot"

    goto :goto_0

    :cond_2
    const-string v0, "WifiHotspot"

    goto :goto_0

    :pswitch_c
    const-string v0, "SmartStay"

    goto :goto_0

    :pswitch_d
    const-string v0, "PersonalMode"

    goto :goto_0

    :pswitch_e
    const-string v0, "AllShareCast"

    goto :goto_0

    :pswitch_f
    const-string v0, "Nfc"

    goto :goto_0

    :pswitch_10
    const-string v0, "Sync"

    goto :goto_0

    :pswitch_11
    const-string v0, "MultiWindow"

    goto :goto_0

    :pswitch_12
    const-string v0, "SFinder"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getSealedState()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v0

    return v0
.end method

.method private refreshStatusbar()V
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .local v1, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v0

    .local v0, "flags":I
    const/high16 v4, 0x2000000

    or-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    const v4, -0x2000001

    and-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private registerBootReceiver()V
    .locals 5

    .prologue
    :try_start_0
    sget-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private registerKnoxCustomReceiver()V
    .locals 5

    .prologue
    :try_start_0
    sget-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private serializeKnoxCustomStatusbarIconItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)[B
    .locals 5
    .param p1, "input"    # Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    .prologue
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, "b":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "b":[B
    .end local v2    # "p":Landroid/os/Parcel;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "serializeKnoxCustomStatusbarIconItem"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private serializeObject(Ljava/util/ArrayList;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, "inputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, "b":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "b":[B
    .end local v2    # "p":Landroid/os/Parcel;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "serializeObject"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setKnoxSysFsIntValue(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "sysFsFilePath"    # Ljava/lang/String;
    .param p2, "sysFsIntValue"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setKnoxSysFsIntValue Path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IntValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setLockscreenWeatherHiddenForLegacy(Z)Z
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "uri":Landroid/net/Uri;
    const-string v1, "LOCKSCREEN_AND_S_VIEW_COVER"

    .local v1, "optionName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "result":I
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "values":Landroid/content/ContentValues;
    const-string v8, "LOCKSCREEN_AND_S_VIEW_COVER"

    if-eqz p1, :cond_1

    move v7, v6

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    if-lez v2, :cond_2

    :goto_2
    return v5

    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    move v7, v5

    goto :goto_0

    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    move v5, v6

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private setPermission(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method

.method private setPermissionWorldExecutable(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method

.method private setPermissionWorldReadable(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method

.method private setPowerDialogCustomItemsLocal(Ljava/util/List;I)I
    .locals 7
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    const/4 v2, -0x1

    const/4 v0, 0x0

    .local v0, "dbBytes":[B
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeObject(Ljava/util/ArrayList;)[B

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "powerCustomItems"

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    return v2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    const/16 v2, -0x33

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeObject(Ljava/util/ArrayList;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setPowerDialogCustomItemsStateLocal(ZI)I
    .locals 8
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "powerCustomItemsState"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setScreenCurtainDirect()V
    .locals 13

    .prologue
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    iput-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v10, "mDNIe"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/mdnie/MdnieManager;

    .local v6, "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    :goto_1
    return-void

    .end local v6    # "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    .restart local v6    # "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    :cond_1
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "high_contrast"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v7, 0x1

    .local v7, "mNegativeColorCheck":Z
    :goto_2
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "color_blind"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v2, 0x1

    .local v2, "mColorBlindCheck":Z
    :goto_3
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "greyscale_mode"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v4, 0x1

    .local v4, "mGreyscaleModeCheck":Z
    :goto_4
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "powersaving_switch"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v8, 0x1

    .local v8, "mPowerSavingModeCheck":Z
    :goto_5
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "blackgrey_powersaving_mode"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v5, 0x1

    .local v5, "mGreyscalePowerSavingModeCheck":Z
    :goto_6
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v3

    .local v3, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeEmergencyMode(Z)Z

    goto :goto_1

    .end local v2    # "mColorBlindCheck":Z
    .end local v3    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v4    # "mGreyscaleModeCheck":Z
    .end local v5    # "mGreyscalePowerSavingModeCheck":Z
    .end local v7    # "mNegativeColorCheck":Z
    .end local v8    # "mPowerSavingModeCheck":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .restart local v7    # "mNegativeColorCheck":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .restart local v2    # "mColorBlindCheck":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .restart local v4    # "mGreyscaleModeCheck":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    .restart local v8    # "mPowerSavingModeCheck":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .restart local v3    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v5    # "mGreyscalePowerSavingModeCheck":Z
    :cond_7
    if-eqz v7, :cond_8

    if-eqz v4, :cond_8

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    :cond_8
    if-eqz v4, :cond_9

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    :cond_9
    if-eqz v5, :cond_a

    if-eqz v8, :cond_a

    const/4 v9, 0x1

    :try_start_0
    sget-object v10, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    if-eqz v7, :cond_b

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1

    :cond_b
    if-eqz v2, :cond_c

    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.colorblind.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "i":Landroid/content/Intent;
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .end local v1    # "i":Landroid/content/Intent;
    :cond_c
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    goto/16 :goto_1

    :cond_d
    if-eqz v7, :cond_e

    if-eqz v4, :cond_e

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    :cond_e
    if-eqz v5, :cond_f

    if-eqz v8, :cond_f

    const/4 v9, 0x1

    :try_start_1
    sget-object v10, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    if-eqz v4, :cond_10

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    :cond_10
    if-eqz v7, :cond_11

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1

    :cond_11
    if-eqz v2, :cond_12

    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.colorblind.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .end local v1    # "i":Landroid/content/Intent;
    :cond_12
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    goto/16 :goto_1
.end method

.method private setStatusBarClockModeLocal(II)I
    .locals 11
    .param p1, "mode"    # I
    .param p2, "callingUid"    # I

    .prologue
    const/high16 v10, 0x800000

    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "statusBarClockState"

    invoke-virtual {v5, p2, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .local v4, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .local v1, "flags":I
    const/4 v3, 0x1

    .local v3, "status":Z
    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    if-eqz v3, :cond_2

    or-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    const v5, -0x800001

    and-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :goto_1
    return v2

    .restart local v1    # "flags":I
    .restart local v3    # "status":Z
    .restart local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v6    # "token":J
    :cond_2
    or-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setStatusBarClockState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method private setStatusBarIconsModeLocal(II)I
    .locals 12
    .param p1, "mode"    # I
    .param p2, "callingUid"    # I

    .prologue
    const/high16 v11, 0x100000

    const v10, -0x100001

    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "statusBarIconsState"

    invoke-virtual {v5, p2, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .local v4, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .local v1, "flags":I
    const/4 v3, 0x1

    .local v3, "status":Z
    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    if-eqz v3, :cond_2

    and-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    or-int v5, v1, v11

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    and-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :goto_1
    return v2

    .restart local v1    # "flags":I
    .restart local v3    # "status":Z
    .restart local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v6    # "token":J
    :cond_2
    or-int v5, v1, v11

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method private setStatusBarModeLocal(II)I
    .locals 9
    .param p1, "mode"    # I
    .param p2, "callingUid"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v1

    .local v1, "isRestricted":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_0

    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setStatusBarMode() - eSDK status bar already hidden"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x7

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x6

    .local v3, "result":I
    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "statusBarMode"

    invoke-virtual {v6, p2, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, -0x2b

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStatusBarMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method private setUsbMassStorageStateLocal(ZI)I
    .locals 9
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .local v1, "isRestricted":Z
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setUsbMassStorageState() - eSDK USB media player disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x7

    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x6

    .local v3, "result":I
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "usbMassStorageStateIndependentSealed"

    invoke-virtual {v6, p2, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method private setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    const/4 v1, -0x6

    .local v1, "result":I
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, -0x24

    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KNOX_CUSTOM"

    const-string v4, "usbNetSource"

    invoke-virtual {v2, p3, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KNOX_CUSTOM"

    const-string v4, "usbNetDest"

    invoke-virtual {v2, p3, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUsbNetAddresses() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_1
.end method

.method private setUsbNetStateLocal(ZI)I
    .locals 8
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x6

    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    const/16 v4, 0x14b

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14c

    invoke-virtual {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    const-string v4, "KnoxCustomManagerService"

    const-string v5, "setUsbNetState() failed - invalid IP addresses "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, -0x24

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    if-eqz p1, :cond_2

    const-string v4, "KnoxCustomManagerService"

    const-string v5, "setUsbNetState() failed - USB debugging mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x2b

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "usbNetState"

    invoke-virtual {v4, p2, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUsbNetState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private startProKioskMode()V
    .locals 18

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "token":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v15, "statusbar"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/StatusBarManager;

    .local v11, "statusBarManager":Landroid/app/StatusBarManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v15, 0x3e8

    const-string v16, "KNOX_CUSTOM"

    const-string v17, "statusBarIconsState"

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_0

    invoke-virtual {v11}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v4

    .local v4, "disableFlags":I
    const v14, -0x100001

    and-int/2addr v14, v4

    invoke-virtual {v11, v14}, Landroid/app/StatusBarManager;->disable(I)V

    const/high16 v14, 0x100000

    or-int/2addr v14, v4

    invoke-virtual {v11, v14}, Landroid/app/StatusBarManager;->disable(I)V

    .end local v4    # "disableFlags":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v15, 0x3e8

    const-string v16, "KNOX_CUSTOM"

    const-string v17, "statusBarClockState"

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1

    invoke-virtual {v11}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v4

    .restart local v4    # "disableFlags":I
    const v14, -0x800001

    and-int/2addr v14, v4

    invoke-virtual {v11, v14}, Landroid/app/StatusBarManager;->disable(I)V

    const/high16 v14, 0x800000

    or-int/2addr v14, v4

    invoke-virtual {v11, v14}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "disableFlags":I
    :cond_1
    :goto_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enableStatusBarNotificationsLocal(Z)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    new-instance v9, Landroid/content/Intent;

    const-string v14, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "multiwindowIntent":Landroid/content/Intent;
    const-string v14, "closeTray"

    const/4 v15, 0x1

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    const/16 v16, -0x2

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v14, v9, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v3, v2, v7

    .local v3, "cb":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/app/enterprise/ApplicationPolicy;->setDisableApplication(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cb":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "multiwindowIntent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    const-string v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Warning: could not hide HIDE_SEALED elements: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "cb":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "multiwindowIntent":Landroid/content/Intent;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/SecurityException;
    const-string v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Warning: could not disable "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "cb":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "people_stripe"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "task_edge"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v14, 0x1b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getMultiWindowFixedState(I)I

    move-result v6

    .local v6, "fixed":I
    const/4 v14, 0x1

    if-ne v6, v14, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V

    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    .local v10, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/app/enterprise/RestrictionPolicy;->allowSafeMode(Z)Z

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private startStopUsbNet(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopProKioskMode()V
    .locals 21

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v18, "statusbar"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/StatusBarManager;

    .local v14, "statusBarManager":Landroid/app/StatusBarManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v18, 0x3e8

    const-string v19, "KNOX_CUSTOM"

    const-string v20, "statusBarIconsState"

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_2

    invoke-virtual {v14}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v6

    .local v6, "disableFlags":I
    const v15, -0x100001

    and-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    const/high16 v15, 0x100000

    or-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    const v15, -0x100001

    and-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v18, 0x3e8

    const-string v19, "KNOX_CUSTOM"

    const-string v20, "statusBarClockState"

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_0

    invoke-virtual {v14}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v6

    const/high16 v15, 0x800000

    or-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    const v15, -0x800001

    and-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "disableFlags":I
    :cond_0
    :goto_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enableStatusBarNotificationsLocal(Z)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, "multiwindowIntent":Landroid/content/Intent;
    const-string v15, "closeTray"

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v18, Landroid/os/UserHandle;

    const/16 v19, -0x2

    invoke-direct/range {v18 .. v19}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v4, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v11, :cond_3

    aget-object v5, v4, v9

    .local v5, "cb":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/app/enterprise/ApplicationPolicy;->setEnableApplication(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "cb":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "multiwindowIntent":Landroid/content/Intent;
    :cond_2
    :try_start_2
    invoke-virtual {v14}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v6

    .restart local v6    # "disableFlags":I
    const v15, -0x100001

    and-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    const/high16 v15, 0x100000

    or-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-virtual {v14, v6}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v6    # "disableFlags":I
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    const-string v15, "KnoxCustomManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Warning: could not show HIDE_SEALED elements: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "cb":Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "multiwindowIntent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    .local v7, "e":Ljava/lang/SecurityException;
    const-string v15, "KnoxCustomManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Warning: could not enable "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v5    # "cb":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/SecurityException;
    :cond_3
    :try_start_3
    new-instance v10, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v10, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, "intent":Landroid/content/Intent;
    const-string v15, "com.samsung.android.app.cocktailbarservice"

    const-string v18, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    move-object/from16 v0, v18

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v10    # "intent":Landroid/content/Intent;
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v18, "people_stripe"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v18, "task_edge"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v15, 0x1b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getMultiWindowFixedState(I)I

    move-result v8

    .local v8, "fixed":I
    const/4 v15, 0x1

    if-ne v8, v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V

    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v13

    .local v13, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/app/enterprise/RestrictionPolicy;->allowSafeMode(Z)Z

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v8    # "fixed":I
    .end local v13    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :catch_2
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    const-string v15, "KnoxCustomManagerService"

    const-string v18, "Warning: could not start cocktail bar"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private updateMultiWindowCenterBar()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "multiwindowUpdateIntent":Landroid/content/Intent;
    const-string v1, "updateCenterBar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private updateQuickPanelItems(Ljava/lang/String;)I
    .locals 20
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .local v11, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    :try_start_0
    new-instance v7, Ljava/util/LinkedList;

    const-string v17, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .local v7, "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "notification_panel_active_app_list_for_reset"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "qsList":Ljava/lang/String;
    if-eqz v10, :cond_3

    new-instance v9, Ljava/util/LinkedList;

    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .local v9, "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "activeItems":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v8, "newList":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "itemString":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e1":Ljava/lang/Exception;
    const/16 v17, -0x32

    .end local v2    # "activeItems":I
    .end local v4    # "e1":Ljava/lang/Exception;
    .end local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "newList":Ljava/lang/StringBuilder;
    .end local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "qsList":Ljava/lang/String;
    :goto_1
    return v17

    .restart local v2    # "activeItems":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "newList":Ljava/lang/StringBuilder;
    .restart local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "qsList":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemsUnsupported()Ljava/lang/String;

    move-result-object v16

    .local v16, "unsupportingitems":Ljava/lang/String;
    new-instance v13, Ljava/util/LinkedList;

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .local v13, "unsupportingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "itemString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v6    # "itemString":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "notification_panel_active_app_list"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "notification_panel_active_number_of_apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v2    # "activeItems":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "newList":Ljava/lang/StringBuilder;
    .end local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "unsupportingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "unsupportingitems":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v11, 0x0

    .end local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "qsList":Ljava/lang/String;
    :goto_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v17, v11

    goto :goto_1

    .restart local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "sysui_qs_tiles"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "qsList":Ljava/lang/String;
    if-eqz v10, :cond_3

    const/4 v2, 0x0

    .restart local v2    # "activeItems":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v8    # "newList":Ljava/lang/StringBuilder;
    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "itemString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemString":Ljava/lang/String;
    :catch_1
    move-exception v4

    .restart local v4    # "e1":Ljava/lang/Exception;
    const/16 v17, -0x32

    goto/16 :goto_1

    .end local v4    # "e1":Ljava/lang/Exception;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemsUnsupported()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "unsupportingitems":Ljava/lang/String;
    new-instance v13, Ljava/util/LinkedList;

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .restart local v13    # "unsupportingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "itemString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v6    # "itemString":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "sysui_qs_tiles"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "sysui_qs_active_tiles"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v12, Landroid/content/Intent;

    const-string v17, "samsung.intent.action.knoxcustom.SET_QUICK_PANEL_ITEMS"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, "systemIntent":Landroid/content/Intent;
    const-string v17, "items"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "active"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/UserHandle;

    const/16 v19, -0x2

    invoke-direct/range {v18 .. v19}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    .end local v2    # "activeItems":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "newList":Ljava/lang/StringBuilder;
    .end local v10    # "qsList":Ljava/lang/String;
    .end local v12    # "systemIntent":Landroid/content/Intent;
    .end local v13    # "unsupportingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "unsupportingitems":Ljava/lang/String;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v17, "KnoxCustomManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setQuickPanelItems() failed - persistence problem "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x1

    goto/16 :goto_4
.end method

.method private updateStatusBarLocal()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "policyVal":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarMode()I

    move-result v0

    .local v0, "mode":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v1, "immersive.full=apps,*"

    :cond_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "policy_control"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    return-void
.end method

.method private writePathToFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "result":Z
    const/4 v0, 0x0

    .local v0, "bwShutdown":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .local v3, "fwShutdown":Ljava/io/FileWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .local v1, "bwShutdown":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .end local v3    # "fwShutdown":Ljava/io/FileWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return v4

    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "KnoxCustomManagerService"

    const-string v6, "InfoFile write failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v5

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    :cond_2
    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method public addPackagesToUltraPowerSaving(Ljava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v7

    .local v7, "callingUid":I
    const/4 v14, -0x1

    .local v14, "result":I
    :try_start_0
    const-string v1, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .local v11, "em":Ljava/lang/Class;
    const-string v3, "supportUltraPowerSavingMode"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v11, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .local v15, "supported":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v15, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x6

    .end local v11    # "em":Ljava/lang/Class;
    .end local v15    # "supported":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    const/4 v1, -0x6

    goto :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "em":Ljava/lang/Class;
    .restart local v15    # "supported":Ljava/lang/reflect/Method;
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, -0x28

    goto :goto_0

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, -0x32

    goto :goto_0

    .end local v13    # "packageName":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v1, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "emergencyUri":Landroid/net/Uri;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .restart local v13    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "className":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(*)"

    aput-object v5, v3, v4

    const-string v4, "package=? and class=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const/4 v6, 0x1

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_6

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .local v16, "values":Landroid/content/ContentValues;
    const-string v1, "package"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "class"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "permission"

    const-string v3, "0000"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mode"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .end local v2    # "emergencyUri":Landroid/net/Uri;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackagesToUltraPowerSaving() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    move v1, v14

    goto/16 :goto_0

    .restart local v2    # "emergencyUri":Landroid/net/Uri;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v14, 0x0

    goto :goto_2
.end method

.method public checkEnterprisePermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAnimation(I)I
    .locals 13
    .param p1, "mode"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v7, -0x1

    .local v7, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/b2b"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v12, "/efs/knoxcustom"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "dirEFS":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    if-nez p1, :cond_6

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v12, "/data/b2b/BootFileInfo.txt"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "fileInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v12, "/data/b2b/SoundFileInfo.txt"

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "soundInfo":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v12, "/data/b2b/DelayInfo.txt"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "delayInfo":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v12, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "efsFileInfo":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-direct {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-direct {p0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_0

    :cond_5
    const/4 v7, 0x0

    .end local v1    # "delayInfo":Ljava/io/File;
    .end local v5    # "efsFileInfo":Ljava/io/File;
    .end local v6    # "fileInfo":Ljava/io/File;
    .end local v8    # "soundInfo":Ljava/io/File;
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v9, v7

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v12, 0x1

    if-ne p1, v12, :cond_8

    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v12, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v6    # "fileInfo":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .end local v6    # "fileInfo":Ljava/io/File;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v7, -0x32

    goto :goto_1
.end method

.method public copyAdbLog(I)I
    .locals 13
    .param p1, "logType"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    const/4 v7, -0x6

    .local v7, "result":I
    packed-switch p1, :pswitch_data_0

    const-string v10, "KnoxCustomManagerService"

    const-string v11, "copyAdbLog() failed - invalid logType "

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0x32

    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_0
    :try_start_0
    const-string v2, "/data/log/customLogcat.log"

    .local v2, "customLog":Ljava/lang/String;
    const-string v1, "logcat -d -v time -f /data/log/customLogcat.log"

    .local v1, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "logcat -d -v time -f /data/log/customLogcat.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .local v6, "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod  644 /data/log/customLogcat.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x0

    goto :goto_0

    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "customLog":Ljava/lang/String;
    .end local v6    # "proc":Ljava/lang/Process;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    goto :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    goto :goto_0

    .end local v3    # "e":Ljava/lang/InterruptedException;
    :pswitch_1
    :try_start_1
    const-string v2, "/data/log/customKernel.log"

    .restart local v2    # "customLog":Ljava/lang/String;
    const-string v5, "/proc/last_kmsg"

    .local v5, "kernelLog":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cp "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/data/log/customKernel.log"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .restart local v6    # "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod  644 /data/log/customKernel.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v7, 0x0

    goto/16 :goto_0

    .end local v6    # "proc":Ljava/lang/Process;
    :cond_0
    const/4 v7, -0x1

    goto/16 :goto_0

    .end local v2    # "customLog":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "kernelLog":Ljava/lang/String;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    goto/16 :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deleteMessagesByIds(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "IdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v4, -0x1

    .local v4, "result":I
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, -0x6

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v6

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/16 v6, -0x32

    goto :goto_0

    :cond_2
    const-string v5, ""

    .local v5, "toDB":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v7, 0x3e8

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "smsIDsToDelete"

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_2
    move v6, v4

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public deleteMessagesByNumber(Ljava/lang/String;)I
    .locals 12
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v7

    .local v7, "callingUid":I
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .local v8, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v8, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x6

    .end local v8    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v11, "[0-9+]+"

    .local v11, "regex":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v2, -0x32

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "inboxURI":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "idRowToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "address"

    aput-object v4, v2, v3

    const-string v3, "address=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_5
    invoke-virtual {p0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteMessagesByIds(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "inboxURI":Landroid/net/Uri;
    .end local v10    # "idRowToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "KnoxCustomManagerService"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 v2, -0x1

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method public dialEmergencyNumber(Ljava/lang/String;)I
    .locals 9
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v3, -0x6

    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const/16 v3, -0x28

    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v3, -0x31

    goto :goto_0

    :cond_4
    const/4 v3, -0x2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialEmergencyNumber() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getAccessibilitySettingsItems()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anykey_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_incomming_calls"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incall_power_button_behavior"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_interaction"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x10

    :cond_3
    iget-boolean v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_reminder"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    :cond_4
    :goto_0
    return v1

    :cond_5
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_reminder_selectable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccessibilitySettingsItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAirGestureOptionState(I)Z
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    .local v1, "result":Z
    packed-switch p1, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_button_onoff"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirGestureOptionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirGestureOptionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAppBlockDownloadNamespaces()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "blockNamespaces":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v9, 0x3e8

    const-string v10, "KNOX_CUSTOM"

    const-string v11, "blockDownloadNamespaces"

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "nsTokens":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "nsTokens":[Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAppBlockDownloadNamespaces() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public getAppBlockDownloadState()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, "downloadStateResult":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "blockDownloadState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppBlockDownloadState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBatteryLevelColourItem()Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "batteryLevelColourItems"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "blob":[B
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deserializeKnoxCustomStatusbarIconItem([B)Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "blob":[B
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    const-string v4, "getPermissions() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCallScreenDisabledItems()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "callScreenItems"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallScreenDisabledItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getChargerConnectionSoundEnabledState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "chargerConnectionSoundEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargerConnectionSoundEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCheckCoverPopupState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCustomOperatorName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "customOperatorName"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustomOperatorName() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceSpeakerEnabledState()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isForceSpeakerOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceSpeakerEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDisplayMirroringState()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .local v4, "state":Z
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getWifiDisplayStatus"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "status":Ljava/lang/Object;
    check-cast v5, Landroid/hardware/display/WifiDisplayStatus;

    .end local v5    # "status":Ljava/lang/Object;
    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v4, 0x1

    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v1    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .restart local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v1    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move v4, v6

    goto :goto_0

    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v1    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDisplayMirroringState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEthernetConfigurationType()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "ethernetConnectionType"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEthernetConfigurationType() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEthernetState()Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    .local v7, "result":Z
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v9, 0x3e8

    const-string v10, "KNOX_CUSTOM"

    const-string v11, "ethernetState"

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "ethernet"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getEthState"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, "m":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "ethernetState":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    const/4 v7, 0x1

    .end local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v2    # "ethernetState":Ljava/lang/Integer;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v7

    .restart local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v2    # "ethernetState":Ljava/lang/Integer;
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    .end local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v2    # "ethernetState":Ljava/lang/Integer;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .local v5, "nsme":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    goto :goto_0

    .end local v5    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .local v3, "ite":Ljava/lang/reflect/InvocationTargetException;
    const/4 v7, 0x0

    goto :goto_0

    .end local v3    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v6

    .local v6, "re":Ljava/lang/RuntimeException;
    const/4 v7, 0x0

    goto :goto_0

    .end local v6    # "re":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEthernetState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExcludedMessagesNotifications()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "excludedSMSNumbers"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "fromDB":Ljava/lang/String;
    if-nez v2, :cond_1

    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v5

    .restart local v2    # "fromDB":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .local v6, "token":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "token":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getExcludedMessagesNotifications() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getExitUI(I)Ljava/lang/String;
    .locals 6
    .param p1, "stringType"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getExitUI() called with invalid stringType"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedExitUiPackage"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedExitUiClass"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xdd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getExtendedCallInfoState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "extendedCallInfoState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getForceAutoStartUpState()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    move-result-object v1

    .local v1, "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    invoke-virtual {v1}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v1    # "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getForceAutoStartUp() failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getForceAutoStartUpStateFromDB()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "AutoStartUpState"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getForceAutoStartupStateFromDB() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGearNotificationState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "gearNotificationState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGearNotificationState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHardKeyIntentState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedHardKeyIntentState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHardKeyIntentState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHideNotificationMessages()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "notificationMessagesMask"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHomeActivity()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedHomeActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHomeActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInfraredState()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    .local v2, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v6, "consumer_ir"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ConsumerIrManager;

    .local v0, "cim":Landroid/hardware/ConsumerIrManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .restart local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v6, 0x3e8

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "infraredState"

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .end local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInfraredState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInputMethodRestrictionState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "inputRestrictionState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getKeyboardMode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "mode":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "keyboardMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyboardMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLTESettingState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "LTESettingState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTESettingState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLcdBacklightState()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    .local v0, "result":Z
    return v0
.end method

.method public getLockScreenHiddenItems()I
    .locals 13

    .prologue
    const/4 v5, 0x0

    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v10, 0x3e8

    const-string v11, "KNOX_CUSTOM"

    const-string v12, "lockScreenItems"

    invoke-virtual {v7, v10, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "lock_screen_show_clock"

    const/4 v11, -0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_7

    const/4 v3, 0x1

    .local v3, "isNewKeyguard":Z
    :goto_0
    iget-boolean v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v7, :cond_1

    if-nez v3, :cond_1

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "lock_screen_show_clock"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    or-int/lit8 v5, v5, 0x1

    :cond_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "lock_screen_date_and_year"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1

    or-int/lit8 v5, v5, 0x10

    :cond_1
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v4, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .local v0, "UserID":I
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLockScreenHideOwnerInfo()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_2

    or-int/lit8 v5, v5, 0x20

    :cond_2
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "lock_application_shortcut"

    invoke-static {v7, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "appShortcut_Info":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v7, :cond_8

    if-nez v1, :cond_3

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "set_shortcuts_mode"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_3

    or-int/lit8 v5, v5, 0x40

    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "lock_additional_info"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4

    or-int/lit16 v5, v5, 0x80

    :cond_4
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "unlock_text"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_5

    or-int/lit16 v5, v5, 0x100

    :cond_5
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "lock_screen_show_notifications"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_6

    or-int/lit16 v5, v5, 0x200

    :cond_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v5

    .end local v0    # "UserID":I
    .end local v1    # "appShortcut_Info":Ljava/lang/String;
    .end local v3    # "isNewKeyguard":Z
    .end local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :goto_2
    return v7

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .restart local v0    # "UserID":I
    .restart local v1    # "appShortcut_Info":Ljava/lang/String;
    .restart local v3    # "isNewKeyguard":Z
    .restart local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_8
    :try_start_1
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "shortcutInfo":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    or-int/lit8 v5, v5, 0x40

    goto :goto_1

    .end local v6    # "shortcutInfo":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v7, 0x0

    goto :goto_2

    .end local v0    # "UserID":I
    .end local v1    # "appShortcut_Info":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "isNewKeyguard":Z
    .end local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getLockScreenHideOwnerInfo()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "ownerInfoHide"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLockScreenHideOwnerInfo() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLockScreenOverrideMode()I
    .locals 1

    .prologue
    sget v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    return v0
.end method

.method public getMessageIdsMarkedToDelete()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "smsIDsToDelete"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "fromDB":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .local v6, "token":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "token":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMessageIdsMarkedToDelete() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v5
.end method

.method public getMobileNetworkType()I
    .locals 7

    .prologue
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.telephony"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, -0x6

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result v1

    .local v1, "ret":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public getMultiWindowFixedState(I)I
    .locals 6
    .param p1, "paramType"    # I

    .prologue
    const/4 v1, -0x1

    .local v1, "result":I
    packed-switch p1, :pswitch_data_0

    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getMultiWindowFixedState() failed - invalid parameter type "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "multiWindowFixed"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMultiWindowFixedState(MULTI_WINDOW_FIXED_STATE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "multiWindowPercentageSplit"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMultiWindowFixedState(MULTI_WINDOW_PERCENTAGE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPowerDialogCustomItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "powerCustomItems"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "blob":[B
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deserializeObject([B)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "blob":[B
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    const-string v4, "getPowerDialogCustomItems() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "powerCustomItemsState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v1, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method public getPowerDialogItems()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedPowerDialogItems"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerDialogItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerDialogOptionMode()I
    .locals 6

    .prologue
    const/4 v1, 0x2

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerMenuLockedState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "powerMenuLockedState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerMenuLockedState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProKioskState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "state":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProKioskState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProKioskString(I)Ljava/lang/String;
    .locals 6
    .param p1, "stringType"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getProKioskString() failed - unrecognized type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOn"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_ON_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOff"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_OFF_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOption"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_OPTION_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getQuickPanelButtons()I
    .locals 8

    .prologue
    const/4 v2, 0x7

    const/4 v7, 0x1

    const/4 v0, 0x0

    .local v0, "buttons":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "quickPanelQuickConnect"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "quickPanelSFinder"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "quickPanelBrightness"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v7, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    move v2, v0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getQuickPanelButtons() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current buttons is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return will be : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getQuickPanelEditMode()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "mode":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "quickPanelEditMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQuickPanelEditMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getQuickPanelItems()Ljava/lang/String;
    .locals 13

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "items":Ljava/lang/StringBuilder;
    :try_start_0
    iget-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "notification_panel_active_app_list"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "qsList":Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "qsItems":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "item":I
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_5

    aget-object v7, v0, v2

    .local v7, "qsItem":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemId(Ljava/lang/String;)I

    move-result v3

    .local v3, "id":I
    if-eqz v3, :cond_1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "id":I
    .end local v4    # "item":I
    .end local v6    # "len$":I
    .end local v7    # "qsItem":Ljava/lang/String;
    .end local v8    # "qsItems":[Ljava/lang/String;
    .end local v9    # "qsList":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sysui_qs_tiles"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "qsList":Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "qsItems":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "item":I
    move-object v0, v8

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_5

    aget-object v7, v0, v2

    .restart local v7    # "qsItem":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemId(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "id":I
    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_3

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "id":I
    .end local v4    # "item":I
    .end local v6    # "len$":I
    .end local v7    # "qsItem":Ljava/lang/String;
    .end local v8    # "qsItems":[Ljava/lang/String;
    .end local v9    # "qsList":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getQuickPanelItems() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public getQuickPanelItemsUnsupported()Ljava/lang/String;
    .locals 11

    .prologue
    iget-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v8, :cond_1

    const-string v5, "Wifi;Location;SilentMode;AutoRotate;Bluetooth;MobileData;PowerSaving;AirplaneMode;DormantMode;TorchLight;UltraPowerSaving;WiFiHotspot;SmartStay;PersonalMode;AllShareCast;Nfc;Sync;MultiWindow;SFinder;"

    .local v5, "supportingItems":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "notification_panel_active_app_list"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "qsList":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .local v7, "unsupportingList":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "supporting items are : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    iget-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v8, :cond_2

    new-instance v3, Ljava/util/LinkedList;

    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .local v3, "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/LinkedList;

    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .local v6, "supportingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "itemString":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v8, :cond_3

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "itemString":Ljava/lang/String;
    .end local v3    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "supportingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getQuickPanelItems() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v8

    .end local v4    # "qsList":Ljava/lang/String;
    .end local v5    # "supportingItems":Ljava/lang/String;
    .end local v7    # "unsupportingList":Ljava/lang/StringBuilder;
    :cond_1
    const-string v5, "Wifi,Location,SilentMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,DormantMode,Flashlight,UltraPowerSaving,WifiHotspot,SmartStay,PersonalMode,AllShareCast,Nfc,Sync,MultiWindow,SFinder,"

    .restart local v5    # "supportingItems":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sysui_qs_tiles"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "qsList":Ljava/lang/String;
    goto/16 :goto_0

    .restart local v7    # "unsupportingList":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/LinkedList;

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .restart local v3    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/LinkedList;

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .restart local v6    # "supportingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "itemString":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "itemString":Ljava/lang/String;
    .end local v3    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "supportingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method

.method public getRecentLongPressActivity()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "recentLongPressActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRecentLongPressMode()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "recentLongPressMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getScreenOffOnHomeLongPressState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "screenOffOnHomeLongPressState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenOffOnHomeLongPressState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getScreenOffOnStatusBarDoubleTapState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "screenOffOnStatusBarDoubleTapState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenOffOnStatusBarDoubleTapState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getScreenWakeupOnPowerState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "screenWakeupOnPowerState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenWakeupOnPowerState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSealedNotificationMessagesState()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "mask":I
    const/16 v3, 0x1f

    if-ne v1, v3, :cond_0

    const/4 v2, 0x0

    .end local v1    # "mask":I
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSealedPowerDialogCustomItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSealedPowerDialogCustomItemsState()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getPowerDialogCustomItemsState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarClockState()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarClockState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarIconsState()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarIconsState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarMode()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarMode()I

    move-result v0

    return v0
.end method

.method public getSealedUsbMassStorageState()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v0

    return v0
.end method

.method public getSealedUsbNetAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "addressType"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSealedUsbNetState()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v0

    return v0
.end method

.method public getSensorDisabled()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sensorDisabled"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSensorDisabled() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSettingsEnabledItems()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeSettingsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSettingsEnabledItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSettingsHiddenState()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "settingsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarClockState()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "statusBarClockState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "mode":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .end local v1    # "mode":I
    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStatusBarClockState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarIconsState()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "statusBarIconsState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "mode":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .end local v1    # "mode":I
    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarMode()I
    .locals 6

    .prologue
    const/4 v1, 0x2

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStatusBarMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarNotificationsState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarNotificationsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarText"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStatusBarText() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarTextScrollWidth()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarTextScroll"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStatusBarTextScrollWidth() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarTextSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarTextSize"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStatusBarTextSize() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarTextStyle()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarTextStyle"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStatusBarTextStyle() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSystemSoundsEnabledState()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_effects_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_sounds_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sip_key_feedback_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x10

    :cond_4
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_detachment_notification"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "penStatus":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_5

    or-int/lit8 v2, v2, 0x20

    .end local v1    # "penStatus":Ljava/lang/String;
    :cond_5
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSystemSoundsEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastEnabledState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "toastEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToastEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravity()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "toastGravity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToastGravity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravityEnabledState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "toastGravityEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToastGravityEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravityXOffset()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "toastGravityXOffset"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToastGravityXOffset() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravityYOffset()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "toastGravityYOffset"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToastGravityYOffset() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastShowPackageNameState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "toastShowPackageNameState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToastShowPackageNameState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUltraPowerSavingPackages()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .local v8, "em":Ljava/lang/Class;
    const-string v3, "supportUltraPowerSavingMode"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v8, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .local v10, "supported":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .end local v8    # "em":Ljava/lang/Class;
    .end local v10    # "supported":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move-object v0, v2

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "em":Ljava/lang/Class;
    .restart local v10    # "supported":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v0, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "emergencyUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "class"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1    # "emergencyUri":Landroid/net/Uri;
    :cond_3
    :goto_1
    move-object v0, v9

    goto :goto_0

    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "KnoxCustomManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUltraPowerSavingPackages() failed - persistence problem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getUnlockSimOnBootState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "state":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "simUnlockOnBoot"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUnlockSimOnBootState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "pin":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "simUnlockPin"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUnlockSimPin() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsbMassStorageState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "usbMassStorageStateIndependentSealed"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getUsbNetAddress(I)Ljava/lang/String;
    .locals 6
    .param p1, "addressType"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getUsbNetAddress() failed - invalid address type "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "usbNetSource"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsbNetAddress(sourceAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "usbNetDest"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsbNetAddress(destinationAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x14b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUsbNetState()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "usbNetState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v6, :cond_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsbNetState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUserInactivityTimeout()I
    .locals 5

    .prologue
    const/4 v1, -0x6

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_activity_timeout"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    div-int/lit16 v1, v1, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserInactivityTimeout() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVibrationIntensity(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    packed-switch p1, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    goto :goto_0

    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVolumeButtonRotationState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "volumeButtonRotationState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeButtonRotationState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVolumeControlStream()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "volumeControlStream"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeControlStream() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVolumeKeyAppState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "volumeKeyAppState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeKeyAppState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVolumeKeyAppsList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "volumeKeyAppsList"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "listStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .local v6, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v6, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :catch_0
    move-exception v0

    move-object v3, v4

    .end local v2    # "listStr":Ljava/lang/String;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVolumeKeyAppsList() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v3

    :catch_1
    move-exception v0

    goto :goto_1

    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listStr":Ljava/lang/String;
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    move-object v3, v4

    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public getVolumePanelEnabledState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "volumePanelEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumePanelEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiAutoSwitchDelay()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "wifiAutoSwitchDelay"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiAutoSwitchDelay() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiAutoSwitchState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "state":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "wifiAutoSwitchState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiAutoSwitchState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiAutoSwitchThreshold()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "wifiAutoSwitchThreshold"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiAutoSwitchThreshold() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiConnectedMessageState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "wifiConnectedMessageState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiConnectedMessageState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiFrequencyBand()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "band":I
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .end local v0    # "band":I
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .restart local v0    # "band":I
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .end local v0    # "band":I
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getWifiFrequencyBand() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiHotspotEnabledState()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .local v5, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, "wifiApState":I
    const/16 v6, 0xc

    if-eq v4, v6, :cond_0

    const/16 v6, 0xd

    if-ne v4, v6, :cond_1

    :cond_0
    const/4 v1, 0x1

    .end local v4    # "wifiApState":I
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getWifiHotspotEnabledState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiState()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "WifiState"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBASturnoffFlag() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->asHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
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

.method public removeLockScreen()I
    .locals 12

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v3, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .local v0, "UserID":I
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_pattern_autolock"

    const-wide/16 v10, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lockscreen.disabled"

    const-wide/16 v10, 0x1

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lockscreen.password_type"

    const-wide/32 v10, 0x10000

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lockscreen.password_type_alternate"

    const-wide/16 v10, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    .end local v0    # "UserID":I
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .local v4, "result":I
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public removePackagesFromUltraPowerSaving(Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v8, -0x1

    .local v8, "result":I
    :try_start_0
    const-string v10, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "em":Ljava/lang/Class;
    const-string v11, "supportUltraPowerSavingMode"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .local v9, "supported":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x6

    .end local v3    # "em":Ljava/lang/Class;
    .end local v9    # "supported":Ljava/lang/reflect/Method;
    :goto_0
    return v10

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const/4 v10, -0x6

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "em":Ljava/lang/Class;
    .restart local v9    # "supported":Ljava/lang/reflect/Method;
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    const/16 v10, -0x28

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const/16 v10, -0x32

    goto :goto_0

    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4
    const-string v10, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, "emergencyUri":Landroid/net/Uri;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "className":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "package=? and class=?"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    invoke-virtual {v10, v4, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .local v7, "resolverResult":I
    if-gtz v7, :cond_5

    const/16 v10, -0x32

    goto :goto_0

    .end local v1    # "className":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "resolverResult":I
    :cond_6
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x0

    .end local v4    # "emergencyUri":Landroid/net/Uri;
    .end local v5    # "it":Ljava/util/Iterator;
    :goto_1
    move v10, v8

    goto :goto_0

    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removePackagesFromUltraPowerSaving() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto :goto_1
.end method

.method public sendDtmfTone(CI)I
    .locals 9
    .param p1, "tone"    # C
    .param p2, "duration"    # I

    .prologue
    const/16 v6, -0x32

    const/4 v2, -0x6

    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/16 v7, 0x30

    if-lt p1, v7, :cond_0

    const/16 v7, 0x39

    if-le p1, v7, :cond_2

    :cond_0
    const/16 v7, 0x2a

    if-eq p1, v7, :cond_2

    const/16 v7, 0x23

    if-eq p1, v7, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/16 v7, 0x64

    if-lt p2, v7, :cond_1

    const/16 v7, 0x1388

    if-gt p2, v7, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    new-instance v3, Landroid/content/Intent;

    const-string v6, "samsung.intent.action.knoxcustom.SEND_DTMF"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "systemIntent":Landroid/content/Intent;
    const-string v6, "tone"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    const-string v6, "duration"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v4    # "token":J
    :goto_1
    move v6, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendDtmfTone() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setAccessibilitySettingsItems(II)I
    .locals 11
    .param p1, "state"    # I
    .param p2, "elements"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_0

    const/16 v2, -0x2b

    :goto_0
    return v2

    :cond_0
    if-ltz p2, :cond_1

    const/16 v8, 0x1f

    if-le p2, v8, :cond_2

    :cond_1
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAccessibilitySettingsItems() failed - Invalid Settings type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x32

    goto :goto_0

    :cond_2
    const/4 v2, -0x6

    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    and-int/lit8 v8, p2, 0x1

    if-ne v8, v3, :cond_3

    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "anykey_mode"

    if-ne p1, v3, :cond_8

    move v8, v3

    :goto_1
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    and-int/lit8 v8, p2, 0x2

    if-ne v8, v7, :cond_4

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "voice_input_control_incomming_calls"

    if-ne p1, v3, :cond_9

    move v8, v3

    :goto_2
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    and-int/lit8 v8, p2, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "incall_power_button_behavior"

    if-ne p1, v3, :cond_a

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    and-int/lit8 v7, p2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "notification_reminder"

    if-ne p1, v3, :cond_b

    move v7, v3

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_5
    and-int/lit8 v7, p2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "easy_interaction"

    if-ne p1, v3, :cond_e

    :goto_6
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_8
    move v8, v6

    goto :goto_1

    :cond_9
    move v8, v6

    goto :goto_2

    :cond_a
    move v7, v3

    goto :goto_3

    :cond_b
    move v7, v6

    goto :goto_4

    :cond_c
    :try_start_1
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "notification_reminder_selectable"

    if-ne p1, v3, :cond_d

    move v7, v3

    :goto_8
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAccessibilitySettingsItems() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_7

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d
    move v7, v6

    goto :goto_8

    :cond_e
    move v3, v6

    goto :goto_6
.end method

.method public setAdbState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    move v1, v3

    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string v3, "KnoxCustomManagerService"

    const-string v6, "setAdbState() - eSDK USB debugging disabled"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x7

    :goto_1
    return v6

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v6

    goto :goto_0

    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "persist.sys.auto_confirm"

    const-string v8, "1"

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_2
.end method

.method public setAirGestureOptionState(IZ)I
    .locals 10
    .param p1, "mode"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, -0x6

    .local v3, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v8

    if-nez v8, :cond_0

    move v1, v6

    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setAirGestureOptionState() - eSDK Air Command not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x7

    :goto_1
    return v6

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v7

    goto :goto_0

    .restart local v1    # "isRestricted":Z
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v6, :cond_3

    :cond_2
    const/16 v6, -0x32

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    packed-switch p1, :pswitch_data_0

    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    :cond_4
    move v6, v3

    goto :goto_1

    :pswitch_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_button_onoff"

    if-eqz p2, :cond_5

    :goto_3
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_3

    :pswitch_1
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering"

    if-eqz p2, :cond_6

    :goto_4
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v6, v7

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAppBlockDownloadNamespaces(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "namespaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, -0x32

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v3, ""

    .local v3, "namespacesSeparated":Ljava/lang/String;
    const-string v6, "*"

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v3, "*"

    :cond_2
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v4, -0x6

    .local v4, "result":I
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "blockDownloadNamespaces"

    invoke-virtual {v6, v0, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_0

    .end local v0    # "callingUid":I
    .end local v4    # "result":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "tmp":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "k":I
    .end local v5    # "tmp":Ljava/lang/String;
    .restart local v0    # "callingUid":I
    .restart local v4    # "result":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAppBlockDownloadNamespaces () failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public setAppBlockDownloadState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v1, -0x6

    .local v1, "downloadStateResult":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "blockDownloadState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAppBlockDownloadState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAudioVolume(II)I
    .locals 10
    .param p1, "stream"    # I
    .param p2, "volume"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    .local v2, "callingUid":I
    const/4 v5, -0x6

    .local v5, "result":I
    if-ltz p1, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .local v1, "am":Landroid/media/AudioManager;
    if-eqz v1, :cond_2

    const/4 v8, 0x5

    if-gt p1, v8, :cond_3

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .local v4, "maxVolume":I
    move v0, p2

    .local v0, "actualVolume":I
    if-le v0, v4, :cond_0

    move v0, v4

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v1, p1, v0, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    .end local v0    # "actualVolume":I
    .end local v4    # "maxVolume":I
    :cond_2
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v6    # "token":J
    :goto_1
    return v5

    .restart local v1    # "am":Landroid/media/AudioManager;
    .restart local v6    # "token":J
    :cond_3
    const/16 v5, -0x26

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const/16 v5, -0x26

    goto :goto_0

    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "token":J
    :cond_4
    const/16 v5, -0x26

    goto :goto_1
.end method

.method public setAutoRotationState(ZI)I
    .locals 9
    .param p1, "status"    # Z
    .param p2, "rotation"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz p1, :cond_0

    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .end local v3    # "wm":Landroid/view/IWindowManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .restart local v3    # "wm":Landroid/view/IWindowManager;
    :cond_0
    const/4 v6, 0x3

    if-gt p2, v6, :cond_1

    const/4 v6, -0x1

    if-ge p2, v6, :cond_2

    :cond_1
    :try_start_1
    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setAutoRotationState() failed - Invalid Rotation"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x27

    goto :goto_0

    :cond_2
    invoke-interface {v3, p2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    .end local v3    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAutoRotationState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setBackupRestoreState(IZ)I
    .locals 13
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .local v4, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v4, v9}, Landroid/app/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v10

    if-nez v10, :cond_1

    move v3, v8

    .local v3, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_2

    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setBackupRestoreState() - eSDK backup is disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x7

    :cond_0
    :goto_1
    return v5

    .end local v3    # "isRestricted":Z
    :cond_1
    move v3, v9

    goto :goto_0

    .restart local v3    # "isRestricted":Z
    :cond_2
    if-lt p1, v8, :cond_3

    const/4 v10, 0x3

    if-le p1, v10, :cond_4

    :cond_3
    const/16 v5, -0x32

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .local v5, "ret":I
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    if-nez v0, :cond_7

    const-string v10, "KnoxCustomManagerService"

    const-string v11, "Failed to get BackupManager"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v5, :cond_0

    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_5
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "backup_auto_restore"

    if-eqz p2, :cond_8

    :goto_3
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    move v5, v9

    goto :goto_1

    .restart local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_7
    :try_start_0
    invoke-interface {v0, p2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setBackupEnabled exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_2

    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    move v8, v9

    goto :goto_3
.end method

.method public setBatteryLevelColourItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)I
    .locals 14
    .param p1, "batteryIconItem"    # Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    .local v2, "callingUid":I
    const/4 v9, -0x6

    .local v9, "result":I
    const/4 v3, 0x0

    .local v3, "dbBytes":[B
    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->getIcon()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    const/16 v10, -0x32

    :goto_0
    return v10

    :cond_0
    invoke-virtual {p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->getAttributeColourArray()[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    move-result-object v1

    .local v1, "batteryColoursArray":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    if-eqz v1, :cond_6

    array-length v10, v1

    if-lez v10, :cond_6

    array-length v10, v1

    const/4 v11, 0x5

    if-le v10, v11, :cond_1

    const/16 v10, -0x33

    goto :goto_0

    :cond_1
    const/4 v8, -0x1

    .local v8, "previousBatteryLevel":I
    move-object v0, v1

    .local v0, "arr$":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v6, v0, v5

    .local v6, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    if-nez v6, :cond_2

    const/4 v10, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    if-ltz v10, :cond_3

    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    const/16 v11, 0x64

    if-gt v10, v11, :cond_3

    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    if-gt v10, v8, :cond_4

    :cond_3
    const/16 v10, -0x32

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v6    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeKnoxCustomStatusbarIconItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)[B

    move-result-object v3

    .end local v0    # "arr$":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    .end local v1    # "batteryColoursArray":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "previousBatteryLevel":I
    :cond_6
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v11, 0x3e8

    const-string v12, "KNOX_CUSTOM"

    const-string v13, "batteryLevelColourItems"

    invoke-virtual {v10, v11, v12, v13, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, -0x1

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    :goto_2
    move v10, v9

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    goto :goto_2
.end method

.method public setBluetoothState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .local v2, "isRestricted":Z
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    const-string v5, "KnoxCustomManagerService"

    const-string v8, "setBluetoothState() - eSDK bluetooth disabled"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x7

    :goto_0
    return v4

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_2
    :goto_1
    const/4 v4, 0x0

    .local v4, "result":I
    goto :goto_0

    .end local v4    # "result":I
    :cond_3
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public setBluetoothVisibilityTimeout(I)I
    .locals 9
    .param p1, "timeout"    # I

    .prologue
    const/16 v6, -0x2d

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x1

    .local v2, "result":I
    const v7, 0x20c49b

    if-lt p1, v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_discoverable_timeout"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBluetoothVisibilityTimeout() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setBootAnimation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 21
    .param p1, "animationFilePath"    # Ljava/lang/String;
    .param p2, "loopFilePath"    # Ljava/lang/String;
    .param p3, "soundFilePath"    # Ljava/lang/String;
    .param p4, "delay"    # I

    .prologue
    const/4 v14, 0x0

    .local v14, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v6

    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .local v18, "token":J
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    :cond_2
    const/4 v12, 0x1

    .local v12, "isDelete":Z
    :goto_0
    if-nez v12, :cond_6

    invoke-direct/range {p0 .. p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_4

    move/from16 v17, v14

    :goto_1
    return v17

    .end local v12    # "isDelete":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .restart local v12    # "isDelete":Z
    :cond_4
    const v17, 0x7fffffff

    move/from16 v0, p4

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    if-gez p4, :cond_6

    :cond_5
    const/16 v17, -0x32

    goto :goto_1

    :cond_6
    new-instance v9, Ljava/io/File;

    const-string v17, "/data/b2b"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "dir":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "created":Z
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_8

    if-eqz v7, :cond_14

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    new-instance v11, Ljava/io/File;

    const-string v17, "/data/b2b/BootFileInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, "fileInfo":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    const-string v17, "/data/b2b/SoundFileInfo.txt"

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v16, "soundInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v17, "/data/b2b/DelayInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "delayInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_a
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_b
    if-eqz v12, :cond_c

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v17, 0x0

    goto :goto_1

    :cond_c
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "animationFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "loopFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "soundFileName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "bootAnimTargetPath":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "bootLoopTargetpath":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "bootSoundTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    const/16 v17, -0x1

    goto/16 :goto_1

    .end local v2    # "animationFileName":Ljava/lang/String;
    .end local v3    # "bootAnimTargetPath":Ljava/lang/String;
    .end local v4    # "bootLoopTargetpath":Ljava/lang/String;
    .end local v5    # "bootSoundTargetPath":Ljava/lang/String;
    .end local v13    # "loopFileName":Ljava/lang/String;
    .end local v15    # "soundFileName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    const/16 v14, -0x32

    goto :goto_2

    .end local v10    # "e":Ljava/io/IOException;
    .restart local v2    # "animationFileName":Ljava/lang/String;
    .restart local v3    # "bootAnimTargetPath":Ljava/lang/String;
    .restart local v4    # "bootLoopTargetpath":Ljava/lang/String;
    .restart local v5    # "bootSoundTargetPath":Ljava/lang/String;
    .restart local v13    # "loopFileName":Ljava/lang/String;
    .restart local v15    # "soundFileName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_e

    const/16 v17, -0x1

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    const/16 v17, -0x1

    goto/16 :goto_1

    :cond_f
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_10

    const/16 v17, -0x1

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_11

    const/16 v17, -0x1

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_12

    const/16 v17, -0x1

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    const/16 v17, -0x1

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_14

    const/4 v14, -0x1

    move/from16 v17, v14

    goto/16 :goto_1

    .end local v2    # "animationFileName":Ljava/lang/String;
    .end local v3    # "bootAnimTargetPath":Ljava/lang/String;
    .end local v4    # "bootLoopTargetpath":Ljava/lang/String;
    .end local v5    # "bootSoundTargetPath":Ljava/lang/String;
    .end local v8    # "delayInfo":Ljava/io/File;
    .end local v11    # "fileInfo":Ljava/io/File;
    .end local v13    # "loopFileName":Ljava/lang/String;
    .end local v15    # "soundFileName":Ljava/lang/String;
    .end local v16    # "soundInfo":Ljava/io/File;
    :cond_14
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v17, v14

    goto/16 :goto_1
.end method

.method public setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I
    .locals 21
    .param p1, "animFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "loopFD"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "soundFD"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "delay"    # I

    .prologue
    const/4 v14, 0x0

    .local v14, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v6

    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    const/16 v18, -0x6

    :goto_0
    return v18

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const v18, 0x7fffffff

    move/from16 v0, p4

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    if-gez p4, :cond_2

    :cond_1
    const-string v18, "KnoxCustomManagerService"

    const-string v19, "FileDescriptor is null or Delay is invalid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x32

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/io/File;

    const-string v18, "/data/b2b"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "dir":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "created":Z
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v18, "KnoxCustomManagerService"

    const-string v19, "/data/b2b directory creating fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5

    if-eqz v7, :cond_10

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    new-instance v13, Ljava/io/File;

    const-string v18, "/data/b2b/BootFileInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v13, "fileInfo":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    const-string v18, "/data/b2b/SoundFileInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v15, "soundInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v18, "/data/b2b/DelayInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "delayInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_6
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_7
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_8
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "/data/b2b/bootanimation.qmg"

    .local v2, "AnimTargetPath":Ljava/lang/String;
    const-string v3, "/data/b2b/bootloop.qmg"

    .local v3, "LoopTargetpath":Ljava/lang/String;
    const-string v4, "/data/b2b/bootsound.ogg"

    .local v4, "SoundTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    const/16 v18, -0x1

    goto/16 :goto_0

    .end local v2    # "AnimTargetPath":Ljava/lang/String;
    .end local v3    # "LoopTargetpath":Ljava/lang/String;
    .end local v4    # "SoundTargetPath":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    const-string v18, "KnoxCustomManagerService"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    goto :goto_1

    .end local v11    # "e":Ljava/io/IOException;
    .restart local v2    # "AnimTargetPath":Ljava/lang/String;
    .restart local v3    # "LoopTargetpath":Ljava/lang/String;
    .restart local v4    # "SoundTargetPath":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    const/16 v18, -0x1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    const/16 v18, -0x1

    goto/16 :goto_0

    :cond_b
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c

    const/16 v18, -0x1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_d

    const-string v18, "KnoxCustomManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AnimTargetPath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_e

    const-string v18, "KnoxCustomManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LoopTargetpath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x1

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f

    const-string v18, "KnoxCustomManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SoundTargetPath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .end local v2    # "AnimTargetPath":Ljava/lang/String;
    .end local v3    # "LoopTargetpath":Ljava/lang/String;
    .end local v4    # "SoundTargetPath":Ljava/lang/String;
    .end local v8    # "delayInfo":Ljava/io/File;
    .end local v13    # "fileInfo":Ljava/io/File;
    .end local v15    # "soundInfo":Ljava/io/File;
    :cond_10
    if-nez v14, :cond_14

    new-instance v5, Ljava/io/File;

    const-string v18, "/data/b2b/bootanimation.qmg"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "animationFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_14

    new-instance v10, Ljava/io/File;

    const-string v18, "/efs/knoxcustom"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v10, "dirEFS":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_11

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    :cond_11
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    new-instance v12, Ljava/io/File;

    const-string v18, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v12, "efsFileInfo":Ljava/io/File;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_12
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v18, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_13

    const/16 v18, -0x1

    goto/16 :goto_0

    :catch_1
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    const-string v18, "KnoxCustomManagerService"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    goto :goto_2

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .end local v5    # "animationFile":Ljava/io/File;
    .end local v10    # "dirEFS":Ljava/io/File;
    .end local v12    # "efsFileInfo":Ljava/io/File;
    :cond_14
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v14

    goto/16 :goto_0
.end method

.method public setBrowserHomepage(Ljava/lang/String;)I
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setBrowserHomepage() failed - blank URL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x28

    :goto_0
    return v2

    :cond_1
    sget-object v6, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setBrowserHomepage() failed - invalid URL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x32

    goto :goto_0

    :cond_2
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "systemIntent":Landroid/content/Intent;
    const-string v6, "homepage"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v4    # "token":J
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBrowserHomepage() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCallScreenDisabledItems(ZI)I
    .locals 11
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.telephony"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v5, -0x6

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v5

    :cond_0
    if-ltz p2, :cond_1

    const/16 v8, 0xff

    if-le p2, v8, :cond_2

    :cond_1
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCallScreenDisabledItems() failed - Invalid Settings type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x32

    goto :goto_0

    :cond_2
    const/4 v5, -0x6

    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "callScreenItems"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, "currentElements":I
    if-eqz p1, :cond_4

    or-int v4, v2, p2

    .local v4, "newElements":I
    :goto_1
    if-eq v4, v2, :cond_3

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "callScreenItems"

    invoke-virtual {v8, v0, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v5, 0x0

    .end local v2    # "currentElements":I
    .end local v4    # "newElements":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .restart local v2    # "currentElements":I
    :cond_4
    xor-int/lit8 v8, p2, -0x1

    and-int v4, v2, v8

    .restart local v4    # "newElements":I
    goto :goto_1

    .end local v2    # "currentElements":I
    .end local v4    # "newElements":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCallScreenDisabledItems() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_2
.end method

.method public setChargerConnectionSoundEnabledState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "chargerConnectionSoundEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setChargerConnectionSoundEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setChargingLEDState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "led_indicator_charing"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "led_indicator_charing"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setChargingLEDState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setCheckCoverPopupState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCpuPowerSavingState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_cpu_clock"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "powersaving_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_display"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "screenSetting":I
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public setCustomOperatorName(Ljava/lang/String;)I
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v3, -0x6

    .local v3, "result":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x5a

    if-le v6, v7, :cond_1

    :cond_0
    const/16 v6, -0x32

    :goto_0
    return v6

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "customOperatorName"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.action.knoxcustom.OPERATOR_NAME"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "i":Landroid/content/Intent;
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v2    # "i":Landroid/content/Intent;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCustomOperatorName() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setDeveloperOptionsHidden()I
    .locals 10

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.android.settings/shared_prefs/development.xml"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const-string v5, "com.android.settings"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "f":Ljava/io/File;
    .local v4, "result":I
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .end local v4    # "result":I
    .restart local v3    # "f":Ljava/io/File;
    :cond_1
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_0

    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDeveloperOptionsHidden() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public setDeviceSpeakerEnabledState(Z)I
    .locals 10
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    .local v1, "callingUid":I
    const/4 v3, -0x1

    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V

    :goto_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v7, 0x3e8

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "deviceSpeakerEnabledState"

    invoke-virtual {v6, v7, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0    # "am":Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeviceSpeakerEnabledState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setDisplayMirroringState(Z)I
    .locals 10
    .param p1, "state"    # Z

    .prologue
    const/4 v6, -0x6

    .local v6, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .local v2, "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    const-string v7, "scanWifiDisplays"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    const-string v7, "show_dialog_once"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "tag_write_if_success"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v7, 0x14800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return v6

    .restart local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string v7, "disconnectWifiDisplay"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .restart local v5    # "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "disableWifiDisplay"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDisplayMirroringState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_1
.end method

.method public setEthernetConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 29
    .param p1, "connectionType"    # I
    .param p2, "staticIpAddress"    # Ljava/lang/String;
    .param p3, "staticNetmask"    # Ljava/lang/String;
    .param p4, "staticDnsAddress"    # Ljava/lang/String;
    .param p5, "staticDefaultRouter"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v5

    .local v5, "callingUid":I
    const/16 v21, -0x1

    .local v21, "result":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "ethernet"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .local v13, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v13, :cond_4

    const-string v24, "android.net.ethernet.EthernetDevInfo"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .local v4, "c":Ljava/lang/Class;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .local v8, "constructor":Ljava/lang/reflect/Constructor;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .local v12, "ethernetDevInfoObject":Ljava/lang/Object;
    const-string v14, "eth0"

    .local v14, "interfaceName":Ljava/lang/String;
    const-string v7, "dhcp"

    .local v7, "connType":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "ipAddr":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "netMask":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "dnsAddr":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "dfltRouter":Ljava/lang/String;
    if-nez p1, :cond_0

    const/16 v21, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string v26, "ethernetConnectionType"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, p1

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string v26, "ethernetInterfaceName"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string v26, "ethernetStaticIpAddr"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string v26, "ethernetStaticNetMask"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string v26, "ethernetStaticDnsAddr"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string v26, "ethernetStaticDfltRouter"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .local v22, "token":J
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "setIfName"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .local v17, "m":Ljava/lang/reflect/Method;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "setConnectMode"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v7, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "setIpAddress"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "setNetMask"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v18, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "setDnsAddr"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v10, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "setRouteAddr"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v9, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "UpdateEthDevInfo"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v4, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v4, v12}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4    # "c":Ljava/lang/Class;
    .end local v7    # "connType":Ljava/lang/String;
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v9    # "dfltRouter":Ljava/lang/String;
    .end local v10    # "dnsAddr":Ljava/lang/String;
    .end local v12    # "ethernetDevInfoObject":Ljava/lang/Object;
    .end local v13    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v14    # "interfaceName":Ljava/lang/String;
    .end local v15    # "ipAddr":Ljava/lang/String;
    .end local v17    # "m":Ljava/lang/reflect/Method;
    .end local v18    # "netMask":Ljava/lang/String;
    .end local v22    # "token":J
    :goto_1
    move/from16 v24, v21

    :goto_2
    return v24

    .restart local v4    # "c":Ljava/lang/Class;
    .restart local v7    # "connType":Ljava/lang/String;
    .restart local v8    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v9    # "dfltRouter":Ljava/lang/String;
    .restart local v10    # "dnsAddr":Ljava/lang/String;
    .restart local v12    # "ethernetDevInfoObject":Ljava/lang/Object;
    .restart local v13    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v14    # "interfaceName":Ljava/lang/String;
    .restart local v15    # "ipAddr":Ljava/lang/String;
    .restart local v18    # "netMask":Ljava/lang/String;
    :cond_0
    const/16 v24, 0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    if-nez p5, :cond_2

    :cond_1
    const/16 v24, -0x32

    goto :goto_2

    :cond_2
    const-string v7, "manual"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v15, p2

    move-object/from16 v18, p3

    move-object/from16 v10, p4

    move-object/from16 v9, p5

    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v24, -0x2b

    goto :goto_2

    .end local v4    # "c":Ljava/lang/Class;
    .end local v7    # "connType":Ljava/lang/String;
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v9    # "dfltRouter":Ljava/lang/String;
    .end local v10    # "dnsAddr":Ljava/lang/String;
    .end local v12    # "ethernetDevInfoObject":Ljava/lang/Object;
    .end local v14    # "interfaceName":Ljava/lang/String;
    .end local v15    # "ipAddr":Ljava/lang/String;
    .end local v18    # "netMask":Ljava/lang/String;
    :cond_4
    const/16 v21, -0x6

    goto :goto_1

    .end local v13    # "ethernetManagerObject":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .local v6, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, -0x6

    goto :goto_1

    .end local v6    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v19

    .local v19, "nsme":Ljava/lang/NoSuchMethodException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, -0x6

    goto :goto_1

    .end local v19    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v16

    .local v16, "ite":Ljava/lang/reflect/InvocationTargetException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, -0x6

    goto/16 :goto_1

    .end local v16    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v20

    .local v20, "re":Ljava/lang/RuntimeException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, -0x6

    goto/16 :goto_1

    .end local v20    # "re":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setEthernetConfiguration() failed - persistence problem "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, -0x1

    goto/16 :goto_1
.end method

.method public setEthernetState(Z)I
    .locals 19
    .param p1, "state"    # Z

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v2

    .local v2, "callingUid":I
    const/4 v11, -0x1

    .local v11, "result":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v15, "ethernet"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/EthernetManager;

    .local v8, "mEthernetManager":Landroid/net/EthernetManager;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, -0x6

    :goto_0
    return v14

    :cond_0
    const/4 v14, -0x6

    goto :goto_0

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v15, "ethernet"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getEthState"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .local v7, "m":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .local v5, "ethernetState":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "KNOX_CUSTOM"

    const-string v16, "ethernetState"

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v14, v2, v15, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "token":J
    if-eqz p1, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    const/4 v11, 0x0

    :goto_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v11, 0x0

    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :goto_2
    move v14, v11

    goto :goto_0

    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v5    # "ethernetState":Ljava/lang/Integer;
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    .restart local v12    # "token":J
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "setEthernetState"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v7, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :catch_0
    move-exception v9

    .local v9, "nsme":Ljava/lang/NoSuchMethodException;
    const-string v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setEthernetState() Not Supported "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x6

    goto :goto_2

    .end local v9    # "nsme":Ljava/lang/NoSuchMethodException;
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v5    # "ethernetState":Ljava/lang/Integer;
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    .restart local v12    # "token":J
    :cond_3
    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v8, v14}, Landroid/net/EthernetManager;->setUserDisabled(Z)V

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/net/EthernetManager;->setEthEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :catch_1
    move-exception v6

    .local v6, "ite":Ljava/lang/reflect/InvocationTargetException;
    const-string v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setEthernetState() Not Supported "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x6

    goto :goto_2

    .end local v6    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    :cond_4
    const/4 v11, -0x6

    goto :goto_2

    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    :catch_2
    move-exception v10

    .local v10, "re":Ljava/lang/RuntimeException;
    const-string v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setEthernetState() Not Supported "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x6

    goto/16 :goto_2

    .end local v10    # "re":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setEthernetState() failed - persistence problem "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public setExcludedMessagesNotifications(ZLjava/util/List;)I
    .locals 14
    .param p1, "excluded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v6, -0x1

    .local v6, "result":I
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.telephony"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x6

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v10

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    const/16 v10, -0x32

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getExcludedMessagesNotifications()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .local v2, "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "toExcludeIterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "toExclude":Ljava/lang/String;
    const-string v5, "[0-9+]+"

    .local v5, "regex":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    const/16 v10, -0x32

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez p1, :cond_4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v5    # "regex":Ljava/lang/String;
    .end local v8    # "toExclude":Ljava/lang/String;
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0xc8

    if-le v10, v11, :cond_9

    const/16 v10, -0x32

    goto :goto_0

    :cond_9
    const-string v7, ""

    .local v7, "toDB":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_a
    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v11, 0x3e8

    const-string v12, "KNOX_CUSTOM"

    const-string v13, "excludedSMSNumbers"

    invoke-virtual {v10, v11, v12, v13, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :goto_3
    move v10, v6

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setExcludedMessagesNotifications() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_3
.end method

.method public setExitUI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "exitUIPackage"    # Ljava/lang/String;
    .param p2, "exitUIClass"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x6

    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/16 v3, -0x21

    :goto_0
    return v3

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedExitUiPackage"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedExitUiClass"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setExitUI() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setExtendedCallInfoState(Z)I
    .locals 7
    .param p1, "status"    # Z

    .prologue
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, -0x6

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    :cond_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v3, -0x6

    .local v3, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "extendedCallInfoState"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setFlightModeState(I)I
    .locals 13
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v5, 0x0

    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .local v4, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed()Z

    move-result v10

    if-nez v10, :cond_0

    move v3, v8

    .local v3, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_1

    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setFlightModeState() - eSDK flight mode disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x7

    :goto_1
    return v8

    .end local v3    # "isRestricted":Z
    :cond_0
    move v3, v9

    goto :goto_0

    .restart local v3    # "isRestricted":Z
    :cond_1
    if-eq p1, v8, :cond_2

    if-eqz p1, :cond_2

    const/16 v8, -0x2b

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    if-ne p1, v8, :cond_3

    move v10, v8

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v10, "state"

    if-ne p1, v8, :cond_4

    :goto_3
    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v5

    goto :goto_1

    :cond_3
    move v10, v9

    goto :goto_2

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    move v8, v9

    goto :goto_3

    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFlightModeState() failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_4
.end method

.method public setForceAutoStartUpState(I)I
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v3, -0x6

    .local v3, "result":I
    if-eq p1, v5, :cond_0

    if-eqz p1, :cond_0

    const/16 v5, -0x2b

    :goto_0
    return v5

    :cond_0
    const/4 v4, 0x0

    .local v4, "status":Z
    if-ne p1, v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    move-result-object v2

    .local v2, "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "AutoStartUpState"

    invoke-virtual {v5, v0, v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-virtual {v2, v4}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->setKnoxCustomAutoStartUp(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v2    # "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :goto_1
    move v5, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setForceAutoStartUpState() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setGearNotificationState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "gearNotificationState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setGearNotificationState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setGpsState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .local v2, "locationPolicy":Landroid/app/enterprise/LocationPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string v3, "KnoxCustomManagerService"

    const-string v6, "setGpsState() - eSDK GPS state change not allowed"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x7

    :goto_1
    return v3

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v3

    goto :goto_0

    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1
.end method

.method public setHardKeyIntentState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedHardKeyIntentState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHardKeyIntentState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setHideNotificationMessages(I)I
    .locals 7
    .param p1, "mask"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/16 v4, 0x1f

    if-gt p1, v4, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHideNotificationMessages() failed - Invalid Notifications type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x32

    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x6

    .local v3, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I

    move-result v1

    .local v1, "currentMask":I
    if-eq p1, v1, :cond_2

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "notificationMessagesMask"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .end local v1    # "currentMask":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setHomeActivity(Ljava/lang/String;)I
    .locals 6
    .param p1, "homePackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, -0x21

    :goto_0
    return v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedHomeActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHomeActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setInfraredState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v3, -0x6

    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "consumer_ir"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ConsumerIrManager;

    .local v1, "cim":Landroid/hardware/ConsumerIrManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v3, -0x6

    .end local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .restart local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "infraredState"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    .end local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setInfraredState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setInputMethod(Ljava/lang/String;Z)I
    .locals 11
    .param p1, "inputMethodClassName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v4, -0x30

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_input_methods"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "methodList":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "defaultInput":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v4, 0x0

    .end local v1    # "defaultInput":Ljava/lang/String;
    .end local v3    # "methodList":Ljava/lang/String;
    .local v4, "result":I
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v4    # "result":I
    .restart local v3    # "methodList":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_input_methods"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x0

    .restart local v4    # "result":I
    goto :goto_1

    .end local v4    # "result":I
    :cond_2
    const/16 v4, -0x30

    .restart local v4    # "result":I
    goto :goto_1

    .end local v3    # "methodList":Ljava/lang/String;
    .end local v4    # "result":I
    :cond_3
    const/16 v4, -0x30

    .restart local v4    # "result":I
    goto :goto_1

    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setInputMethod() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_1
.end method

.method public setInputMethodRestrictionState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "inputRestrictionState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "result":I
    :goto_0
    return v2

    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setKeyboardMode(I)I
    .locals 9
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    const/4 v3, -0x1

    .local v3, "result":I
    if-ltz p1, :cond_0

    const/4 v6, 0x2

    if-le p1, v6, :cond_1

    :cond_0
    const/16 v6, -0x2b

    :goto_0
    return v6

    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.app.enterprise.knoxcustom"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "mode"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "keyboardMode"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    move v6, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setKeyboardMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setLTESettingState(Z)I
    .locals 7
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v3, -0x6

    .local v3, "result":I
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x6

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "LTESettingState"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_1
    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLTESettingState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setLcdBacklightState(Z)I
    .locals 9
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v3, -0x1

    .local v3, "result":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    sget-boolean v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    .local v1, "currentState":Z
    if-eq p1, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setScreenCurtainDirect()V

    const/4 v3, 0x0

    sput-boolean p1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v1    # "currentState":Z
    .end local v4    # "token":J
    :goto_0
    return v3

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setLcdBacklightState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLockScreenHiddenItems(ZI)I
    .locals 28
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v8

    .local v8, "callingUid":I
    if-ltz p2, :cond_0

    const/16 v23, 0x3ff

    move/from16 v0, p2

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v19, -0x32

    :goto_0
    return v19

    :cond_1
    const/16 v19, -0x6

    .local v19, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .local v24, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string v27, "lockScreenItems"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .local v9, "currentElements":I
    and-int/lit8 v10, p2, 0xe

    .local v10, "customElements":I
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x3e0

    move/from16 v20, v0

    .local v20, "settingsElements":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v26, "lock_screen_show_clock"

    const/16 v27, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v26, -0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    const/4 v15, 0x1

    .local v15, "isNewKeyguard":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    if-eqz v15, :cond_2

    and-int/lit8 v23, p2, 0x11

    or-int v10, v10, v23

    :cond_2
    :goto_2
    if-eqz p1, :cond_f

    or-int v18, v9, v10

    .local v18, "newElements":I
    :goto_3
    move/from16 v0, v18

    if-eq v0, v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string v27, "lockScreenItems"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v18

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    if-nez v15, :cond_5

    and-int/lit8 v23, p2, 0x1

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "lock_screen_show_clock"

    if-eqz p1, :cond_10

    const/16 v23, 0x0

    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    and-int/lit8 v23, p2, 0x10

    const/16 v26, 0x10

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "lock_screen_date_and_year"

    if-eqz p1, :cond_11

    const/16 v23, 0x0

    :goto_5
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    and-int/lit8 v23, p2, 0x20

    const/16 v26, 0x20

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    new-instance v17, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v17, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v17, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .local v4, "UserID":I
    if-nez p1, :cond_12

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    const/16 v22, 0x0

    .local v22, "temp":I
    if-eqz p1, :cond_13

    const/16 v22, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string v27, "ownerInfoHide"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v22

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .end local v4    # "UserID":I
    .end local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "temp":I
    :cond_6
    and-int/lit8 v23, p2, 0x40

    const/16 v26, 0x40

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v26, "lock_application_shortcut"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "appShortcut_Info":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "set_shortcuts_mode"

    if-eqz p1, :cond_14

    const/16 v23, 0x0

    :goto_8
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v6    # "appShortcut_Info":Ljava/lang/String;
    :cond_7
    :goto_9
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    const/16 v26, 0x80

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "lock_additional_info"

    if-eqz p1, :cond_19

    const/16 v23, 0x0

    :goto_a
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "lock_additional_weather"

    if-eqz p1, :cond_1a

    const/16 v23, 0x0

    :goto_b
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setLockscreenWeatherHiddenForLegacy(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "lock_additional_steps"

    if-eqz p1, :cond_1b

    const/16 v23, 0x0

    :goto_c
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v23, v0

    const/16 v26, 0x100

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "unlock_text"

    if-eqz p1, :cond_1c

    const/16 v23, 0x0

    :goto_d
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v23, v0

    const/16 v26, 0x200

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "lock_screen_show_notifications"

    if-eqz p1, :cond_1d

    const/16 v23, 0x0

    :goto_e
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v26, "activity"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .local v5, "am":Landroid/app/ActivityManager;
    const-string v23, "com.android.settings"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .end local v5    # "am":Landroid/app/ActivityManager;
    :cond_b
    if-eqz v10, :cond_c

    new-instance v12, Landroid/content/Intent;

    const-string v23, "com.sec.android.keyguard.REFRESH"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v26, Landroid/os/UserHandle;

    const/16 v27, -0x2

    invoke-direct/range {v26 .. v27}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v12    # "i":Landroid/content/Intent;
    :cond_c
    const/16 v19, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v15    # "isNewKeyguard":Z
    .end local v18    # "newElements":I
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_1

    .restart local v15    # "isNewKeyguard":Z
    :cond_e
    if-nez v15, :cond_2

    and-int/lit8 v23, p2, 0x11

    or-int v20, v20, v23

    goto/16 :goto_2

    :cond_f
    xor-int/lit8 v23, v10, -0x1

    and-int v18, v9, v23

    .restart local v18    # "newElements":I
    goto/16 :goto_3

    :cond_10
    const/16 v23, 0x1

    goto/16 :goto_4

    :cond_11
    const/16 v23, 0x1

    goto/16 :goto_5

    .restart local v4    # "UserID":I
    .restart local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_6

    .restart local v22    # "temp":I
    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_7

    .end local v4    # "UserID":I
    .end local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "temp":I
    .restart local v6    # "appShortcut_Info":Ljava/lang/String;
    :cond_14
    const/16 v23, 0x1

    goto/16 :goto_8

    :cond_15
    :try_start_1
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .local v21, "shortcutInfo":[Ljava/lang/String;
    const/16 v26, 0x0

    if-eqz p1, :cond_16

    const-string v23, "0"

    :goto_f
    aput-object v23, v21, v26

    const/16 v26, 0x2

    if-eqz p1, :cond_17

    const-string v23, "0"

    :goto_10
    aput-object v23, v21, v26

    const-string v6, ""

    move-object/from16 v7, v21

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_11
    move/from16 v0, v16

    if-ge v13, v0, :cond_18

    aget-object v14, v7, v13

    .local v14, "info":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "info":Ljava/lang/String;
    .end local v16    # "len$":I
    :cond_16
    const-string v23, "1"

    goto :goto_f

    :cond_17
    const-string v23, "1"

    goto :goto_10

    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v26, "lock_application_shortcut"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "shortcutInfo":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v19, -0x1

    goto/16 :goto_0

    .end local v6    # "appShortcut_Info":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_19
    const/16 v23, 0x1

    goto/16 :goto_a

    :cond_1a
    const/16 v23, 0x1

    goto/16 :goto_b

    :cond_1b
    const/16 v23, 0x1

    goto/16 :goto_c

    :cond_1c
    const/16 v23, 0x1

    goto/16 :goto_d

    :cond_1d
    const/16 v23, 0x1

    goto/16 :goto_e

    .end local v9    # "currentElements":I
    .end local v10    # "customElements":I
    .end local v15    # "isNewKeyguard":Z
    .end local v18    # "newElements":I
    .end local v20    # "settingsElements":I
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, -0x1

    goto/16 :goto_0
.end method

.method public setLockScreenOverrideMode(I)I
    .locals 12
    .param p1, "mode"    # I

    .prologue
    const/4 v8, 0x2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v4, -0x1

    .local v4, "result":I
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    if-eq p1, v8, :cond_0

    const/16 v5, -0x2b

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    sput p1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    if-eq p1, v8, :cond_1

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v3, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    :try_start_2
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .local v2, "km":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    new-instance v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$4;

    invoke-direct {v8, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$4;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v5, v8, v10, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2    # "km":Landroid/app/KeyguardManager;
    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    goto :goto_0

    .restart local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "KnoxCustomManagerService"

    const-string v8, "Error while trying to lock device: "

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setLockScreenOverrideMode() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setLockscreenWallpaper(Ljava/lang/String;I)I
    .locals 10
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "SIM"    # I

    .prologue
    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v4, -0x6

    .local v4, "result":I
    if-eq p2, v9, :cond_0

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    const-string v5, "KnoxCustomManagerService"

    const-string v8, "setLockscreenWallpaper: invalid SIM value"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x32

    :goto_0
    return v5

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "extension":Ljava/lang/String;
    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "KnoxCustomManagerService"

    const-string v8, "setLockscreenWallpaper: file must be a PNG"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, -0x28

    goto :goto_0

    .end local v3    # "extension":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v5, -0x1

    goto :goto_0

    .end local v2    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_1
    if-ne p2, v9, :cond_2

    const-string v1, "lockscreen_wallpaper_path"

    .local v1, "destSettings":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    if-nez p1, :cond_3

    :try_start_1
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, ""

    invoke-static {v5, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v4, 0x0

    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    goto :goto_0

    .end local v1    # "destSettings":Ljava/lang/String;
    .end local v6    # "token":J
    :cond_2
    const-string v1, "lockscreen_wallpaper_path_2"

    goto :goto_1

    .restart local v1    # "destSettings":Ljava/lang/String;
    .restart local v6    # "token":J
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setLockscreenWallpaper() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_3
.end method

.method public setMobileDataRoamingState(Z)I
    .locals 11
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.telephony"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v3, -0x6

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    :cond_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .local v4, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    if-ne v9, v5, :cond_1

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    const/16 v3, -0x38

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "data_roaming"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .local v3, "result":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3    # "result":I
    :cond_2
    move v5, v8

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMobileDataRoamingState() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    .restart local v3    # "result":I
    goto :goto_2
.end method

.method public setMobileDataState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, -0x6

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    :cond_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public setMobileNetworkType(I)I
    .locals 13
    .param p1, "type"    # I

    .prologue
    const/16 v9, -0x32

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.telephony"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v8, -0x6

    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v3, -0x1

    .local v3, "phoneType":I
    sparse-switch p1, :sswitch_data_0

    move v8, v9

    goto :goto_0

    :sswitch_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    invoke-virtual {v5, v9, v3}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v4

    .local v4, "ret":Z
    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v4, :cond_0

    const/4 v8, -0x1

    goto :goto_0

    .end local v4    # "ret":Z
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    .end local v6    # "token":J
    :sswitch_1
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const/16 v3, 0x9

    goto :goto_1

    :sswitch_4
    const/4 v1, 0x0

    .local v1, "canUseLteOnly":Z
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLTESettingState()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_4

    const/16 v3, 0xb

    goto :goto_1

    :cond_3
    const-string v10, "LTEONLY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_4
    move v8, v9

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x9 -> :sswitch_3
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method public setMotionControlState(IZ)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-lt p1, v3, :cond_0

    const/4 v7, 0x3

    if-le p1, v7, :cond_1

    :cond_0
    const/16 v2, -0x32

    :goto_0
    return v2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_pick_up"

    if-eqz p2, :cond_4

    move v7, v3

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_pick_up_to_call_out"

    if-eqz p2, :cond_5

    move v7, v3

    :goto_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_engine"

    if-eqz p2, :cond_6

    move v7, v3

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "master_motion"

    if-eqz p2, :cond_7

    move v7, v3

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_pan_to_browse_image"

    if-eqz p2, :cond_8

    move v7, v3

    :goto_5
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_zooming"

    if-eqz p2, :cond_9

    move v7, v3

    :goto_6
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_merged_mute_pause"

    if-eqz p2, :cond_a

    move v7, v3

    :goto_7
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "surface_palm_swipe"

    if-eqz p2, :cond_b

    move v7, v3

    :goto_8
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "surface_palm_touch"

    if-eqz p2, :cond_c

    move v7, v3

    :goto_9
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "surface_motion_engine"

    if-eqz p2, :cond_d

    :goto_a
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v2, 0x0

    .local v2, "result":I
    :goto_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "result":I
    :cond_4
    move v7, v6

    goto/16 :goto_1

    :cond_5
    move v7, v6

    goto/16 :goto_2

    :cond_6
    move v7, v6

    goto :goto_3

    :cond_7
    move v7, v6

    goto :goto_4

    :cond_8
    move v7, v6

    goto :goto_5

    :cond_9
    move v7, v6

    goto :goto_6

    :cond_a
    move v7, v6

    goto :goto_7

    :cond_b
    move v7, v6

    goto :goto_8

    :cond_c
    move v7, v6

    goto :goto_9

    :cond_d
    move v3, v6

    goto :goto_a

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMotionControlState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_b
.end method

.method public setMultiWindowFixedState(II)I
    .locals 12
    .param p1, "fixed"    # I
    .param p2, "percentageSplit"    # I

    .prologue
    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v9

    if-nez v9, :cond_1

    move v2, v8

    .local v2, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_2

    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setMultiWindowFixedState() - eSDK multi window mode not allowed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x7

    :cond_0
    :goto_1
    return v4

    .end local v2    # "isRestricted":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "isRestricted":Z
    :cond_2
    const/4 v4, -0x6

    .local v4, "result":I
    if-eq p1, v8, :cond_3

    if-eqz p1, :cond_3

    const/16 v4, -0x2b

    goto :goto_1

    :cond_3
    const/16 v9, 0xa

    if-lt p2, v9, :cond_4

    const/16 v9, 0x5a

    if-le p2, v9, :cond_5

    :cond_4
    const/16 v4, -0x2a

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-ne p1, v8, :cond_6

    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v8, :cond_6

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setMultiWindowState(Z)I

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "multiWindowFixed"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "multiWindowPercentageSplit"

    invoke-virtual {v8, v0, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    const-string v8, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .local v5, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    .end local v5    # "uri":Landroid/net/Uri;
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMultiWindowFixedState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setMultiWindowState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v8

    if-nez v8, :cond_0

    move v1, v6

    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setMultiWindowState() - eSDK multi window mode not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x7

    :goto_1
    return v3

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v7

    goto :goto_0

    .restart local v1    # "isRestricted":Z
    :cond_1
    const/4 v3, -0x6

    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "multi_window_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "multi_window_enabled"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public setPackageVerifierState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "package_verifier_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPackageVerifierState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public setPassCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "currentPassCode"    # Ljava/lang/String;
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, -0x6

    .local v4, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "sealedState"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .local v1, "currentStatus":Z
    if-eqz v1, :cond_4

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "prokioskPinCode"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "storedPassCode":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v3, v6

    .local v3, "passCodeOk":Z
    :goto_0
    if-nez v3, :cond_0

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "sealedPinCode"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    :cond_0
    :goto_1
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "prokioskPinCode"

    invoke-virtual {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "sealedPinCode"

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v4, 0x0

    .end local v1    # "currentStatus":Z
    .end local v3    # "passCodeOk":Z
    .end local v5    # "storedPassCode":Ljava/lang/String;
    :goto_2
    return v4

    .restart local v1    # "currentStatus":Z
    .restart local v5    # "storedPassCode":Ljava/lang/String;
    :cond_1
    move v3, v7

    goto :goto_0

    .restart local v3    # "passCodeOk":Z
    :cond_2
    move v3, v7

    goto :goto_1

    :cond_3
    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setPassCode() - Invalid passcode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x20

    goto :goto_2

    .end local v3    # "passCodeOk":Z
    .end local v5    # "storedPassCode":Ljava/lang/String;
    :cond_4
    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setPassCode() - Not in ProKiosk Mode "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x2

    goto :goto_2

    .end local v1    # "currentStatus":Z
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPassCode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setPowerDialogCustomItems(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsLocal(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public setPowerDialogCustomItemsState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setPowerDialogItems(I)I
    .locals 7
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x1

    .local v2, "result":I
    if-ltz p1, :cond_0

    const/16 v3, 0x3ff

    if-le p1, v3, :cond_1

    :cond_0
    const/16 v2, -0x32

    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "sealedPowerDialogItems"

    invoke-virtual {v3, v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPowerDialogItems() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerDialogOptionMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/16 v2, -0x2b

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerMenuLockedState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "powerMenuLockedState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPowerMenuLockedState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerSavingMode(I)I
    .locals 14
    .param p1, "mode"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v6, -0x6

    .local v6, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    if-nez p1, :cond_1

    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "powersaving_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "low_power"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_1
    if-ne p1, v5, :cond_2

    :try_start_1
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "powersaving_switch"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "low_power"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v11, 0x2

    if-ne p1, v11, :cond_3

    :try_start_2
    const-string v10, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "em":Ljava/lang/Class;
    const-string v10, "supportUltraPowerSavingMode"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .local v7, "supported":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "enabled"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "flag"

    const/16 v11, 0x200

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "skipdialog"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v6, 0x0

    goto :goto_0

    .end local v3    # "em":Ljava/lang/Class;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "supported":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .local v2, "e1":Ljava/lang/Exception;
    :try_start_3
    const-string v10, "KnoxCustomManagerService"

    const-string v11, "setPowerSavingMode() failed - ultra power mode not supported"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPowerSavingMode() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v11, 0x3

    if-ne p1, v11, :cond_6

    :try_start_4
    iget-object v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "ultra_powersaving_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_4

    .local v5, "isUltraPowerSavingEnabled":Z
    :goto_1
    if-eqz v5, :cond_5

    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v10, "enabled"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "flag"

    const/16 v11, 0x200

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "skipdialog"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v6, 0x0

    goto/16 :goto_0

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "isUltraPowerSavingEnabled":Z
    :cond_4
    move v5, v10

    goto :goto_1

    .restart local v5    # "isUltraPowerSavingEnabled":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .end local v5    # "isUltraPowerSavingEnabled":Z
    :cond_6
    const/16 v6, -0x32

    goto/16 :goto_0

    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method

.method public setProKioskState(ZLjava/lang/String;)I
    .locals 17
    .param p1, "status"    # Z
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v2

    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v6

    .local v6, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v5

    .local v5, "isRestricted":Z
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v5, :cond_0

    const-string v13, "KnoxCustomManagerService"

    const-string v14, "setProKioskState() - eSDK kiosk mode already enabled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x7

    :goto_0
    return v8

    :cond_0
    const/4 v8, -0x1

    .local v8, "result":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string v15, "sealedState"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .local v3, "currentStatus":Z
    if-eqz p1, :cond_3

    if-eqz v3, :cond_1

    const-string v13, "KnoxCustomManagerService"

    const-string v14, "setProKioskState() - Already in ProKiosk mode - Passcode not changed"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x3

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string v15, "sealedState"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string v15, "prokioskPinCode"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string v15, "sealedPinCode"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V

    const-string v13, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .local v12, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "currentStatus":Z
    .end local v12    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setProKioskState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto/16 :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "currentStatus":Z
    :cond_2
    :try_start_1
    const-string v13, "KnoxCustomManagerService"

    const-string v14, "setProKioskState() - Invalid passcode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x20

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string v15, "prokioskPinCode"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "storedPassCode":Ljava/lang/String;
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v7, 0x1

    .local v7, "passCodeOk":Z
    :goto_1
    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string v15, "sealedPinCode"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v7, 0x1

    :cond_4
    :goto_2
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string v15, "sealedState"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->stopProKioskMode()V

    const/4 v8, 0x0

    const-string v13, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .restart local v12    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .end local v7    # "passCodeOk":Z
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "passCodeOk":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    const-string v13, "KnoxCustomManagerService"

    const-string v14, "setProKioskState() - Invalid passcode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x20

    goto/16 :goto_0

    .end local v7    # "passCodeOk":Z
    .end local v9    # "storedPassCode":Ljava/lang/String;
    :cond_8
    const-string v13, "KnoxCustomManagerService"

    const-string v14, "setProKioskState() - Not in ProKiosk Mode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v8, -0x2

    goto/16 :goto_0
.end method

.method public setProKioskString(ILjava/lang/String;)I
    .locals 6
    .param p1, "stringType"    # I
    .param p2, "stringValue"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    packed-switch p1, :pswitch_data_0

    const-string v3, "KnoxCustomManagerService"

    const-string v4, "setProKioskString() failed - unrecognized type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x29

    :goto_0
    return v2

    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOn"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_ON_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOff"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_OFF_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOption"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    goto :goto_0

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_OPTION_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setQuickPanelButtons(I)I
    .locals 11
    .param p1, "buttons"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    if-ltz p1, :cond_0

    const/4 v7, 0x7

    if-le p1, v7, :cond_1

    :cond_0
    const/16 v3, -0x32

    :goto_0
    return v3

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "quickPanelQuickConnect"

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_2

    move v7, v3

    :goto_1
    invoke-virtual {v8, v0, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "quickPanelSFinder"

    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_3

    move v7, v3

    :goto_2
    invoke-virtual {v8, v0, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "quickPanelBrightness"

    and-int/lit8 v10, p1, 0x4

    if-eqz v10, :cond_4

    :goto_3
    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .end local v4    # "token":J
    :goto_4
    move v3, v2

    goto :goto_0

    .restart local v4    # "token":J
    :cond_2
    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v6

    goto :goto_2

    :cond_4
    move v3, v6

    goto :goto_3

    .end local v4    # "token":J
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setQuickPanelButtons() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_4
.end method

.method public setQuickPanelEditMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_0

    const/16 v3, -0x2b

    :goto_0
    return v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "quickPanelEditMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setQuickPanelEditMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setQuickPanelItems(Ljava/lang/String;)I
    .locals 10
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v7, -0x6

    .local v7, "result":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .local v3, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v3, Ljava/util/LinkedList;

    .end local v3    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .restart local v3    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .local v5, "newItems":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "qpItem":I
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "itemString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, -0x32

    .end local v2    # "item":Ljava/lang/String;
    .end local v4    # "itemString":Ljava/lang/String;
    .end local v6    # "qpItem":I
    :goto_1
    return v8

    .restart local v2    # "item":Ljava/lang/String;
    .restart local v4    # "itemString":Ljava/lang/String;
    .restart local v6    # "qpItem":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v2    # "item":Ljava/lang/String;
    .end local v4    # "itemString":Ljava/lang/String;
    .end local v6    # "qpItem":I
    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateQuickPanelItems(Ljava/lang/String;)I

    move-result v8

    goto :goto_1
.end method

.method public setRecentLongPressActivity(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x6

    .local v2, "result":I
    const/4 v0, 0x0

    .local v0, "callingUid":I
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceRubensFeaturesPermission()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, -0x21

    :goto_1
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "recentLongPressActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :goto_2
    move v3, v2

    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_2
.end method

.method public setRecentLongPressMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v2, -0x6

    .local v2, "result":I
    const/4 v0, 0x0

    .local v0, "callingUid":I
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceRubensFeaturesPermission()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    :cond_0
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRecentLongPressMode() failed - Invalid Mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x2b

    :goto_1
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "recentLongPressMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :goto_2
    move v3, v2

    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_2
.end method

.method public setScreenOffOnHomeLongPressState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "screenOffOnHomeLongPressState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScreenOffOnHomeLongPressState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "screenOffOnStatusBarDoubleTapState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScreenOffOnStatusBarDoubleTapState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenPowerSavingState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_display"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "powersaving_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_cpu_clock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "screenSetting":I
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public setScreenTimeout(I)I
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    const/16 v2, -0x2d

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const v5, 0x20c49b

    if-lt p1, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v5, 0x5

    if-lt p1, v5, :cond_0

    mul-int/lit16 v4, p1, 0x3e8

    .local v4, "timeout_val":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "screen_off_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "result":I
    goto :goto_0

    .end local v2    # "result":I
    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setScreenTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setScreenWakeupOnPowerState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "screenWakeupOnPowerState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScreenWakeupOnPowerState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSealedNotificationMessagesState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setHideNotificationMessages(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/16 v3, 0x1f

    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setHideNotificationMessages(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSealedPowerDialogCustomItems(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsLocal(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public setSealedPowerDialogCustomItemsState(Z)I
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setSealedStatusBarClockState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v1, 0x4

    .local v1, "mode":I
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarClockModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedStatusBarIconsState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v1, 0x4

    .local v1, "mode":I
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarIconsModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedStatusBarMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    move v1, p1

    .local v1, "sealedMode":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedUsbMassStorageState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setSealedUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setSealedUsbNetState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setSensorDisabled(ZI)I
    .locals 8
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/16 v5, 0x3f

    if-le p2, v5, :cond_1

    :cond_0
    const/16 v4, -0x32

    :goto_0
    return v4

    :cond_1
    const/4 v4, -0x6

    .local v4, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "sensorDisabled"

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "currentElements":I
    if-eqz p1, :cond_3

    or-int v3, v1, p2

    .local v3, "newElements":I
    :goto_1
    if-eq v3, v1, :cond_2

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "sensorDisabled"

    invoke-virtual {v5, v0, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .end local v3    # "newElements":I
    :cond_3
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_1

    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSensorDisabled() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public setSettingsEnabledItems(ZI)I
    .locals 10
    .param p1, "state"    # Z
    .param p2, "elements"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/4 v5, 0x7

    if-le p2, v5, :cond_1

    :cond_0
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSettingsEnabledItems() failed - Invalid Settings type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x32

    :goto_0
    return v4

    :cond_1
    const/4 v4, -0x6

    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "sealedModeSettingsState"

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "currentElements":I
    if-eqz p1, :cond_3

    or-int v3, v1, p2

    .local v3, "newElements":I
    :goto_1
    if-eq v3, v1, :cond_2

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "sealedModeSettingsState"

    invoke-virtual {v5, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v4, 0x0

    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .restart local v1    # "currentElements":I
    :cond_3
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_1

    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSettingsEnabledItems() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setSettingsHiddenState(ZI)I
    .locals 10
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/16 v5, 0x7ff

    if-le p2, v5, :cond_1

    :cond_0
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSettingsHiddenState() failed - Invalid Settings type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x32

    :goto_0
    return v4

    :cond_1
    const/4 v4, -0x6

    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "settingsState"

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "currentElements":I
    if-eqz p1, :cond_3

    or-int v3, v1, p2

    .local v3, "newElements":I
    :goto_1
    if-eq v3, v1, :cond_2

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "settingsState"

    invoke-virtual {v5, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v4, 0x0

    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .restart local v1    # "currentElements":I
    :cond_3
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_1

    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setShutdownAnimation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .param p1, "shutdownAnimationFilePath"    # Ljava/lang/String;
    .param p2, "shutdownSoundFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .local v11, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v5

    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    :cond_1
    const/4 v10, 0x1

    .local v10, "isDelete":Z
    :goto_0
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    move v15, v11

    :goto_1
    return v15

    .end local v10    # "isDelete":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .restart local v10    # "isDelete":Z
    :cond_3
    new-instance v7, Ljava/io/File;

    const-string v15, "/data/b2b"

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, "dir":Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "created":Z
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_5

    if-eqz v6, :cond_c

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    new-instance v9, Ljava/io/File;

    const-string v15, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "fileInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_6
    if-eqz v10, :cond_7

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v15, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "animationFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "soundFileName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/b2b/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, "shutdownSoundTargetPath":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/b2b/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "shutdownAnimTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, -0x1

    goto/16 :goto_1

    .end local v4    # "animationFileName":Ljava/lang/String;
    .end local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .end local v14    # "soundFileName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    const/16 v15, -0x32

    goto/16 :goto_1

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "animationFileName":Ljava/lang/String;
    .restart local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .restart local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .restart local v14    # "soundFileName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v15, -0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    const/4 v15, -0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, -0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v11, -0x1

    move v15, v11

    goto/16 :goto_1

    .end local v4    # "animationFileName":Ljava/lang/String;
    .end local v9    # "fileInfo":Ljava/io/File;
    .end local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .end local v14    # "soundFileName":Ljava/lang/String;
    :cond_c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v11

    goto/16 :goto_1
.end method

.method public setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "animFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "soundFD"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x0

    .local v5, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    iget-boolean v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    if-eqz v11, :cond_0

    const/4 v5, -0x6

    .end local v5    # "result":I
    :goto_0
    return v5

    .restart local v5    # "result":I
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const/16 v5, -0x32

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v11, "/data/b2b"

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "dir":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "created":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v11, "KnoxCustomManagerService"

    const-string v12, "/data/b2b directory creating fail"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v10

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz v1, :cond_b

    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    new-instance v4, Ljava/io/File;

    const-string v11, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "fileInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "/data/b2b/shutdownanimation.qmg"

    .local v6, "shutdownAnimTargetPath":Ljava/lang/String;
    const-string v7, "/data/b2b/shutdownsound.ogg"

    .local v7, "shutdownSoundTargetPath":Ljava/lang/String;
    invoke-direct {p0, v4, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    move v5, v10

    goto :goto_0

    .end local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v10

    goto :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .restart local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v4, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    move v5, v10

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    move v5, v10

    goto :goto_0

    :cond_9
    invoke-direct {p0, p2, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    move v5, v10

    goto :goto_0

    :cond_a
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .end local v4    # "fileInfo":Ljava/io/File;
    .end local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :cond_b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public setStatusBarClockState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v1, 0x3

    .local v1, "mode":I
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarClockModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setStatusBarIconsState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v1, 0x3

    .local v1, "mode":I
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarIconsModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setStatusBarMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarModeLocal(II)I

    move-result v1

    return v1
.end method

.method public setStatusBarNotificationsState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarNotificationsState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enableStatusBarNotificationsLocal(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setStatusBarText(Ljava/lang/String;II)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x1

    .local v2, "result":I
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const/16 v3, -0x29

    :goto_0
    return v3

    :cond_0
    if-eqz p3, :cond_2

    const/4 v3, 0x4

    if-lt p3, v3, :cond_1

    const/16 v3, 0x20

    if-le p3, v3, :cond_2

    :cond_1
    const/16 v3, -0x32

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarText"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarTextStyle"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarTextSize"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->refreshStatusbar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStatusBarText() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setStatusBarTextScrollWidth(Ljava/lang/String;III)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "scrollwidth"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x1

    .local v2, "result":I
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const/16 v3, -0x29

    :goto_0
    return v3

    :cond_0
    if-eqz p3, :cond_2

    const/4 v3, 0x4

    if-lt p3, v3, :cond_1

    const/16 v3, 0x20

    if-le p3, v3, :cond_2

    :cond_1
    const/16 v3, -0x32

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_4

    const/16 v3, 0xa

    if-lt p4, v3, :cond_3

    const/16 v3, 0x140

    if-le p4, v3, :cond_4

    :cond_3
    const/16 v3, -0x33

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarText"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarTextStyle"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarTextSize"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "statusBarTextScroll"

    invoke-virtual {v3, v0, v4, v5, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->refreshStatusbar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStatusBarTextScrollWidth() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setStayAwakeState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "stay_on_while_plugged_in"

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setStayAwakeState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "localeLanguage"    # Ljava/lang/String;
    .param p2, "localeCountry"    # Ljava/lang/String;

    .prologue
    const/16 v7, -0x2c

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    const/4 v5, 0x0

    .local v5, "locale":Ljava/util/Locale;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    if-nez p2, :cond_1

    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v5    # "locale":Ljava/util/Locale;
    :goto_0
    if-nez v5, :cond_2

    .end local v8    # "token":J
    :cond_0
    :goto_1
    return v7

    .restart local v8    # "token":J
    :cond_1
    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "locale":Ljava/util/Locale;
    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .local v10, "valid":Z
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v6

    .local v6, "locales":[Ljava/util/Locale;
    move-object v0, v6

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .local v3, "l":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3    # "l":Ljava/util/Locale;
    :cond_4
    if-eqz v10, :cond_0

    invoke-static {v5}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v7, 0x0

    .local v7, "result":I
    goto :goto_1

    .end local v0    # "arr$":[Ljava/util/Locale;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "locales":[Ljava/util/Locale;
    .end local v7    # "result":I
    .end local v8    # "token":J
    .end local v10    # "valid":Z
    :cond_5
    const/16 v7, -0x2c

    .restart local v7    # "result":I
    goto :goto_1
.end method

.method public setSystemRingtone(ILjava/lang/String;)I
    .locals 12
    .param p1, "ringtoneType"    # I
    .param p2, "ringtoneName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    new-instance v6, Landroid/media/RingtoneManager;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .local v6, "rm":Landroid/media/RingtoneManager;
    const/4 v10, 0x1

    if-eq p1, v10, :cond_0

    const/4 v10, 0x2

    if-eq p1, v10, :cond_0

    const/4 v10, 0x4

    if-eq p1, v10, :cond_0

    const/16 v2, -0x22

    .local v2, "result":I
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "result":I
    :goto_1
    return v2

    :cond_0
    if-nez p2, :cond_1

    const/16 v2, -0x23

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .local v1, "found":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, p1, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .restart local v2    # "result":I
    goto :goto_0

    .end local v2    # "result":I
    :cond_3
    invoke-virtual {v6, p1}, Landroid/media/RingtoneManager;->setType(I)V

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .local v5, "ringtones":I
    const/4 v7, 0x0

    .local v7, "tone":I
    :goto_2
    if-ge v7, v5, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {v6, v7}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v3

    .local v3, "ringtone":Landroid/media/Ringtone;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v6, v7}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v4

    .local v4, "ringtoneUri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    const/4 v1, 0x1

    .end local v4    # "ringtoneUri":Landroid/net/Uri;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v3    # "ringtone":Landroid/media/Ringtone;
    .end local v5    # "ringtones":I
    .end local v7    # "tone":I
    :cond_5
    const/16 v2, -0x23

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setSystemSoundsEnabledState(II)I
    .locals 10
    .param p1, "state"    # I
    .param p2, "elements"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-eq p1, v6, :cond_0

    if-eqz p1, :cond_0

    const/16 v2, -0x2b

    :goto_0
    return v2

    :cond_0
    if-ltz p2, :cond_1

    const/16 v7, 0x3f

    if-le p2, v7, :cond_2

    :cond_1
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSystemSoundsEnabledState() failed - Invalid System Sounds type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x32

    goto :goto_0

    :cond_2
    const/4 v2, -0x6

    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    and-int/lit8 v7, p2, 0x1

    if-ne v7, v6, :cond_3

    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dtmf_tone"

    if-ne p1, v6, :cond_a

    move v7, v6

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    and-int/lit8 v7, p2, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sound_effects_enabled"

    if-ne p1, v6, :cond_b

    move v7, v6

    :goto_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    and-int/lit8 v7, p2, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lockscreen_sounds_enabled"

    if-ne p1, v6, :cond_c

    move v7, v6

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    and-int/lit8 v7, p2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "haptic_feedback_enabled"

    if-ne p1, v6, :cond_d

    move v7, v6

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    and-int/lit8 v7, p2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sip_key_feedback_sound"

    if-ne p1, v6, :cond_7

    move v3, v6

    :cond_7
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    and-int/lit8 v3, p2, 0x20

    const/16 v7, 0x20

    if-ne v3, v7, :cond_9

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detachment_notification"

    if-ne p1, v6, :cond_e

    const-string v3, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_5
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    const/4 v2, 0x0

    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_a
    move v7, v3

    goto :goto_1

    :cond_b
    move v7, v3

    goto :goto_2

    :cond_c
    move v7, v3

    goto :goto_3

    :cond_d
    move v7, v3

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSystemSoundsEnabledState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_6
.end method

.method public setSystemSoundsSilent()I
    .locals 8

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dtmf_tone"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "sound_effects_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lockscreen_sounds_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "haptic_feedback_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "sip_key_feedback_sound"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "pen_detachment_notification"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "result":I
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSystemSoundsSilent() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setToastEnabledState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "toastEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setToastEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastGravity(III)I
    .locals 7
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const v3, 0x118000ff

    .local v3, "validGravity":I
    const v4, -0x11800100

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    const/16 v2, -0x32

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "toastGravity"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "toastGravityXOffset"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "toastGravityYOffset"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setToastGravity() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastGravityEnabledState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "toastGravityEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setToastGravityEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastShowPackageNameState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "toastShowPackageNameState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setToastShowPackageNameState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setTorchOnVolumeButtonsState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "torchlight_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTorchOnVolumeButtonsState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public setUnknownSourcesState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v4

    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string v4, "KnoxCustomManagerService"

    const-string v5, "setUnknownSourcesState() - eSDK non market app not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x7

    :goto_1
    return v5

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v5

    goto :goto_0

    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "install_non_market_apps"

    if-eqz p1, :cond_2

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public setUnlockSimOnBootState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    const/4 v2, -0x6

    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "simUnlockOnBoot"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUnlockSimOnBootState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setUnlockSimPin(Ljava/lang/String;)I
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x6

    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    const/16 v2, -0x32

    :cond_0
    :goto_0
    move v3, v2

    :goto_1
    return v3

    :cond_1
    const-string v3, "[0-9]+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, -0x32

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "simUnlockPin"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUnlockSimOnBoot() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I
    .locals 10
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "applicationPackage"    # Ljava/lang/String;
    .param p3, "applicationUid"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    const/4 v3, -0x6

    .local v3, "result":I
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, -0x21

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    if-eqz p1, :cond_2

    if-lez p3, :cond_1

    :try_start_0
    const-string v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, p1, p2, v5}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    invoke-interface {v4, p1, p3}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v3

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v5, "KnoxCustomManagerService"

    const-string v8, "setUsbDeviceDefaultPackage() failed - Application UID not specified "

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x2e

    goto :goto_1

    :cond_2
    const-string v5, "KnoxCustomManagerService"

    const-string v8, "setUsbDeviceDefaultPackage() failed - USB device not specified "

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v3, -0x2f

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUsbDeviceDefaultPackage() failed - permission problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setUsbMassStorageState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setUsbNetState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setUserInactivityTimeout(I)I
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    const/16 v5, -0x2d

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    const v8, 0x20c49b

    if-lt p1, v8, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-ltz p1, :cond_0

    mul-int/lit16 v4, p1, 0x3e8

    .local v4, "timeout_val":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "user_activity_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :goto_1
    move v5, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUserInactivityTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setVibrationIntensity(II)I
    .locals 6
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, -0x6

    .local v1, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/4 v4, 0x5

    if-le p2, v4, :cond_1

    :cond_0
    const/16 v4, -0x32

    :goto_0
    return v4

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    packed-switch p1, :pswitch_data_0

    const/16 v1, -0x2b

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVolumeButtonRotationState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "volumeButtonRotationState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVolumeButtonRotationState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setVolumeControlStream(I)I
    .locals 7
    .param p1, "streamType"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    .local v1, "callingUid":I
    const/4 v3, -0x6

    .local v3, "result":I
    if-ltz p1, :cond_1

    const/4 v4, 0x4

    if-gt p1, v4, :cond_1

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "volumeControlStream"

    invoke-virtual {v4, v1, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return v3

    .restart local v0    # "am":Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0

    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v3, -0x32

    goto :goto_0
.end method

.method public setVolumeKeyAppState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "volumeKeyAppState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVolumeKeyAppState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setVolumeKeyAppsList(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v7, -0x32

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v2

    .local v2, "callingUid":I
    const/4 v6, -0x6

    .local v6, "result":I
    const/4 v1, 0x0

    .local v1, "appsStr":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const-string v5, "(?i)^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[a-z0-9_]$"

    .local v5, "regex":Ljava/lang/String;
    const-string v1, ""

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    if-lez v4, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "appName":Ljava/lang/String;
    const-string v8, "(?i)^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[a-z0-9_]$"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "regex":Ljava/lang/String;
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "volumeKeyAppsList"

    invoke-virtual {v7, v2, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :goto_2
    move v7, v6

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setVolumeKeyAppsList() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_2
.end method

.method public setVolumePanelEnabledState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "volumePanelEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVolumePanelEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchDelay(I)I
    .locals 6
    .param p1, "delay"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    if-lez p1, :cond_0

    const/16 v3, 0x258

    if-gt p1, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "wifiAutoSwitchDelay"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/16 v2, -0x32

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiAutoSwitchDelay() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    const/4 v2, -0x6

    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "wifiAutoSwitchState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiAutoSwitchState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchThreshold(I)I
    .locals 6
    .param p1, "threshold"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    if-gez p1, :cond_0

    const/16 v3, -0xc8

    if-lt p1, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "wifiAutoSwitchThreshold"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/16 v2, -0x32

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiAutoSwitchThreshold() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiConnectedMessageState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "wifiConnectedMessageState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiConnectedMessageState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiConnectionMonitorState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_watchdog_poor_network_test_enabled"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiConnectionMonitorState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public setWifiFrequencyBand(I)I
    .locals 10
    .param p1, "band"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez p1, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    if-ne p1, v8, :cond_1

    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v9, :cond_2

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, -0x32

    goto :goto_0

    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPowerSavingMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiHotspotEnabledState(I)I
    .locals 18
    .param p1, "state"    # I

    .prologue
    const/4 v6, -0x6

    .local v6, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    .local v2, "callingUid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.telephony"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v16, "connectivity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .local v3, "cm":Landroid/net/ConnectivityManager;
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, -0x6

    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .local v7, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    const/16 v15, -0x38

    goto :goto_0

    :cond_1
    const/4 v15, 0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_2

    if-eqz p1, :cond_2

    const/16 v15, -0x2b

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v16, "wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .local v14, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .local v11, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v10

    .local v10, "wifiApState":I
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_7

    const/16 v15, 0xc

    if-eq v10, v15, :cond_3

    const/16 v15, 0xd

    if-ne v10, v15, :cond_5

    :cond_3
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .local v5, "msg":Landroid/os/Message;
    const/16 v15, 0xc5

    iput v15, v5, Landroid/os/Message;->what:I

    iput-object v11, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v14, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "msg":Landroid/os/Message;
    :cond_4
    :goto_1
    const/4 v6, 0x0

    .end local v10    # "wifiApState":I
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "wm":Landroid/net/wifi/WifiManager;
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v6

    goto :goto_0

    .restart local v10    # "wifiApState":I
    .restart local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "wm":Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v15, 0x1

    :try_start_1
    invoke-virtual {v14, v11, v15}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v13

    .local v13, "wifiState":I
    const/4 v15, 0x2

    if-eq v13, v15, :cond_6

    const/4 v15, 0x3

    if-ne v13, v15, :cond_4

    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "wifi_saved_state"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v10    # "wifiApState":I
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "wifiState":I
    .end local v14    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v15, "KnoxCustomManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setWifiHotspotEnabledState() failed - persistence problem "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_2

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v10    # "wifiApState":I
    .restart local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "wm":Landroid/net/wifi/WifiManager;
    :cond_7
    const/16 v15, 0xc

    if-eq v10, v15, :cond_8

    const/16 v15, 0xd

    if-ne v10, v15, :cond_4

    :cond_8
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_2
    invoke-virtual/range {v14 .. v16}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v12, 0x0

    .local v12, "wifiSavedState":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "wifi_saved_state"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v12

    :goto_3
    const/4 v15, 0x1

    if-ne v12, v15, :cond_4

    const/4 v15, 0x1

    :try_start_4
    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "wifi_saved_state"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_1
    move-exception v15

    goto :goto_3
.end method

.method public setWifiNetworkNotificationState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_networks_available_notification_on"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiNetworkNotificationState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public setWifiState(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "status"    # Z
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v8}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_0

    .local v2, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setWifiState() - eSDK wifi disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x7

    :goto_1
    return v4

    .end local v2    # "isRestricted":Z
    :cond_0
    move v2, v8

    goto :goto_0

    .restart local v2    # "isRestricted":Z
    :cond_1
    const/4 v4, -0x6

    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    if-eqz v5, :cond_6

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setWifiState() - ssid == null && password != null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x28

    :goto_2
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "WifiState"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, p2, p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/4 v8, 0x1

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    sput-object p2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    const/4 v8, 0x0

    sput-object v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    sput-object p3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWifiState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/4 v4, -0x1

    goto :goto_3
.end method

.method public setWifiStateEap(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1, "status"    # Z
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v4

    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .local v8, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v6, 0x1

    .local v6, "isRestricted":Z
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v6, :cond_1

    const-string v13, "KnoxCustomManagerService"

    const-string v14, "setWifiState() - eSDK wifi disabled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x7

    :goto_1
    return v9

    .end local v6    # "isRestricted":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .restart local v6    # "isRestricted":Z
    :cond_1
    const/4 v9, -0x6

    .local v9, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .local v12, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v13, 0x0

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v12, :cond_8

    if-eqz p1, :cond_7

    const/4 v7, 0x0

    .local v7, "ok":Z
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    const/4 v7, 0x1

    :cond_2
    :goto_2
    if-nez v7, :cond_4

    const/16 v9, -0x28

    .end local v7    # "ok":Z
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .restart local v7    # "ok":Z
    .restart local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    sput-object p2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    sput-object p3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    sput-object p4, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .end local v7    # "ok":Z
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setWifiState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    goto :goto_3

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_7
    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v9, 0x0

    goto :goto_3

    :cond_8
    const/4 v9, -0x1

    goto :goto_3
.end method

.method public systemReady()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V

    return-void
.end method
