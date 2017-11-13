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

    .line 213
    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    sput-boolean v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    .line 220
    sput-boolean v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    .line 221
    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    .line 222
    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    .line 223
    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    .line 233
    sput v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    .line 235
    sput-boolean v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    .line 652
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

    .line 788
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

    .line 254
    invoke-direct {p0}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;-><init>()V

    .line 185
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->DEBUG:Z

    .line 206
    iput-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 207
    iput-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 226
    const-string v2, "/data/b2b"

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->customBootDirectory:Ljava/lang/String;

    .line 227
    const-string v2, "/efs/knoxcustom"

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->efsPropertyPath:Ljava/lang/String;

    .line 228
    const v2, 0x7fffffff

    iput v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->maxDelay:I

    .line 229
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->salesCode:Ljava/lang/String;

    .line 230
    const-string v2, "ATT/VZW/TMB/TMK"

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    .line 240
    iput-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 241
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mIsTablet:Z

    .line 244
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    .line 247
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    .line 255
    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    .line 256
    iput-object p2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 257
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 259
    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "KnoxCustomManagerService"

    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 260
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 261
    new-instance v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    .line 263
    const-string/jumbo v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mIsTablet:Z

    .line 266
    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "scafe":Ljava/lang/String;
    const-string v2, "americano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iput-boolean v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerBootReceiver()V

    .line 273
    return-void

    .end local v0    # "deviceType":Ljava/lang/String;
    .end local v1    # "scafe":Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 230
    goto :goto_0
.end method

.method private Executer(Ljava/lang/String;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 6159
    const/4 v3, 0x0

    .line 6160
    .local v3, "result":Z
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6163
    .local v1, "output":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 6164
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6165
    const/4 v3, 0x1

    .line 6178
    .end local v2    # "p":Ljava/lang/Process;
    :goto_0
    return v3

    .line 6174
    :catch_0
    move-exception v0

    .line 6175
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

    .line 6176
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 180
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
    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->refreshStatusbar()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 180
    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 180
    sput-boolean p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 180
    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
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
    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    return-object v0
.end method

.method private asHex([B)Ljava/lang/String;
    .locals 5
    .param p1, "buf"    # [B

    .prologue
    .line 790
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .line 791
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 792
    mul-int/lit8 v2, v1, 0x2

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 793
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
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

    .line 843
    if-nez p1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return v0

    .line 846
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 852
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 855
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

    .line 8413
    const/4 v5, 0x0

    .line 8414
    .local v5, "result":I
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    if-eqz v9, :cond_1

    .line 8416
    const/4 v5, -0x6

    .line 8459
    .end local v5    # "result":I
    :cond_0
    :goto_0
    return v5

    .line 8419
    .restart local v5    # "result":I
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    move v5, v8

    .line 8421
    goto :goto_0

    .line 8424
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

    .line 8426
    :cond_4
    const/16 v5, -0x33

    goto :goto_0

    .line 8429
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8430
    .local v1, "animFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8431
    .local v4, "loopFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8433
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

    .line 8435
    goto :goto_0

    .line 8439
    :cond_7
    :try_start_0
    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8440
    .local v0, "animExt":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 8441
    .local v3, "loopExt":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {p3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 8443
    .local v6, "soundExt":Ljava/lang/String;
    const-string v9, ".qmg"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, ".mp4"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 8444
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown animation: file must be a QMG or MP4"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 8445
    goto/16 :goto_0

    .line 8447
    :cond_8
    const-string v9, ".qmg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, ".mp4"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 8448
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown animation: file must be a QMG or MP4"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 8449
    goto/16 :goto_0

    .line 8451
    :cond_9
    const-string v9, ".ogg"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 8452
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown sound: file must be a OGG"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v8

    .line 8453
    goto/16 :goto_0

    .line 8455
    .end local v0    # "animExt":Ljava/lang/String;
    .end local v3    # "loopExt":Ljava/lang/String;
    .end local v6    # "soundExt":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 8456
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "IndexOutOfBoundException occured as substring method"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 8457
    goto/16 :goto_0
.end method

.method private checkIpAddressString(Ljava/lang/String;)Z
    .locals 10
    .param p1, "ipAddressString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 863
    if-nez p1, :cond_1

    .line 886
    :cond_0
    :goto_0
    return v7

    .line 866
    :cond_1
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 867
    .local v6, "tokens":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 870
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 873
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 875
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_0

    .line 877
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 878
    .local v2, "i":I
    if-ltz v2, :cond_0

    const/16 v8, 0xff

    if-gt v2, v8, :cond_0

    .line 873
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 881
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 883
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 886
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private closeSettingsApp()V
    .locals 7

    .prologue
    .line 627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 628
    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 629
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v4, "com.android.settings"

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 630
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.quicksetting.REFRESH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 632
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    return-void
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 491
    const-string/jumbo v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 492
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v5, 0x0

    .line 493
    .local v5, "lastPriority":I
    const/4 v0, 0x1

    .line 494
    .local v0, "NeedNewConfig":Z
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 496
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_2

    .line 497
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

    .line 498
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v5, v8, :cond_1

    .line 499
    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 501
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

    .line 502
    const/4 v0, 0x0

    goto :goto_0

    .line 507
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v0, :cond_5

    .line 508
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 509
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

    .line 510
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 511
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

    .line 515
    :goto_1
    add-int/lit8 v8, v5, 0x1

    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 517
    invoke-virtual {v7, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    .line 518
    .local v6, "networkId":I
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 520
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 521
    invoke-virtual {v7, v6, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 522
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 535
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "networkId":I
    :cond_3
    return-void

    .line 513
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 525
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

    .line 526
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

    .line 527
    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 528
    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 529
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 530
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 531
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
    .line 541
    const-string/jumbo v10, "wifi"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 542
    .local v9, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v7, 0x0

    .line 543
    .local v7, "lastPriority":I
    const/4 v1, 0x1

    .line 544
    .local v1, "NeedNewEntConfig":Z
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 546
    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_2

    .line 547
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

    .line 548
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget v10, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v7, v10, :cond_1

    .line 549
    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 551
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

    .line 552
    const/4 v1, 0x0

    goto :goto_0

    .line 558
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v1, :cond_4

    .line 559
    new-instance v5, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v5}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 560
    .local v5, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 562
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 564
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 565
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    iput-object p2, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 566
    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    .line 567
    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    .line 568
    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 569
    add-int/lit8 v10, v7, 0x1

    iput v10, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 571
    invoke-virtual {v9, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .line 572
    .local v8, "networkId":I
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 574
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 575
    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 576
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 589
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v8    # "networkId":I
    :cond_3
    return-void

    .line 579
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

    .line 580
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

    .line 581
    add-int/lit8 v10, v7, 0x1

    iput v10, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 582
    invoke-virtual {v9, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 583
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 584
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 585
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_1
.end method

.method private deleteExistingFile(Ljava/io/File;)V
    .locals 6
    .param p1, "InfoFilePath"    # Ljava/io/File;

    .prologue
    .line 8223
    const/4 v2, 0x0

    .line 8225
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

    .line 8227
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

    .line 8228
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 8243
    if-eqz v3, :cond_5

    .line 8245
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 8251
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 8252
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 8254
    :cond_2
    return-void

    .line 8232
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8233
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8234
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 8238
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 8239
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8243
    if-eqz v2, :cond_1

    .line 8245
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 8246
    :catch_1
    move-exception v0

    .line 8247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 8246
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 8247
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 8248
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 8240
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "line":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 8241
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 8243
    if-eqz v2, :cond_1

    .line 8245
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 8246
    :catch_4
    move-exception v0

    .line 8247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 8243
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_4

    .line 8245
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 8248
    :cond_4
    :goto_5
    throw v5

    .line 8246
    :catch_5
    move-exception v0

    .line 8247
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 8243
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 8240
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 8238
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
    .line 5275
    const/4 v3, 0x0

    .line 5277
    .local v3, "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5278
    .local v2, "p":Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, p1

    invoke-virtual {v2, p1, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 5279
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5280
    const-class v5, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    move-object v3, v0

    .line 5281
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 5285
    .end local v2    # "p":Landroid/os/Parcel;
    .end local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .local v4, "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :goto_0
    return-object v4

    .line 5283
    .end local v4    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .restart local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :catch_0
    move-exception v1

    .line 5284
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "deserializeKnoxCustomStatusbarIconItem"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 5285
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
    .line 2630
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2632
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2633
    .local v3, "p":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, p1

    invoke-virtual {v3, p1, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2634
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2635
    sget-object v6, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .line 2636
    .local v5, "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 2637
    aget-object v2, v5, v1

    .line 2638
    .local v2, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2641
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    .end local v3    # "p":Landroid/os/Parcel;
    .end local v5    # "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :catch_0
    move-exception v0

    .line 2642
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "deserializeObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method private enableStatusBarNotificationsLocal(Z)I
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/high16 v8, 0x1030000

    .line 6692
    const/4 v2, -0x6

    .line 6694
    .local v2, "result":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6695
    .local v4, "token":J
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 6696
    .local v3, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .line 6697
    .local v1, "flags":I
    if-eqz p1, :cond_0

    .line 6698
    or-int v6, v1, v8

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6699
    const v6, -0x1030001

    and-int/2addr v6, v1

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6703
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6704
    const/4 v2, 0x0

    .line 6709
    .end local v1    # "flags":I
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "token":J
    :goto_1
    return v2

    .line 6701
    .restart local v1    # "flags":I
    .restart local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v4    # "token":J
    :cond_0
    or-int v6, v1, v8

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6705
    .end local v1    # "flags":I
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "token":J
    :catch_0
    move-exception v0

    .line 6706
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6707
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
    .line 322
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    const/16 v1, 0x3e8

    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
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
    .line 309
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    const/16 v1, 0x3e8

    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
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
    .line 352
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_RUBENS_FEATURES"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 353
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
    .line 334
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SETTING"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 335
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
    .line 343
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 344
    const/16 v0, 0x3e8

    return v0
.end method

.method private fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .locals 13
    .param p1, "sourceFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 8308
    const/4 v8, 0x0

    .line 8310
    .local v8, "result":Z
    const/4 v2, 0x0

    .line 8311
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 8312
    .local v4, "fout":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 8315
    .local v6, "originFD":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8316
    .local v9, "targetFile":Ljava/io/File;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 8317
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8318
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 8320
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    if-nez v6, :cond_0

    .line 8321
    :try_start_2
    const-string v11, "KnoxCustomManagerService"

    const-string/jumbo v12, "originFD is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8341
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 8342
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8347
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    return v10

    .line 8343
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 8344
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8325
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v3, :cond_2

    .line 8326
    const/4 v7, 0x0

    .line 8327
    .local v7, "read":I
    const/16 v10, 0x400

    :try_start_4
    new-array v0, v10, [B

    .line 8328
    .local v0, "buf":[B
    :goto_2
    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    .line 8329
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 8337
    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8338
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

    .line 8341
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 8342
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    move v10, v8

    .line 8347
    goto :goto_1

    .line 8331
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "read":I
    .restart local v9    # "targetFile":Ljava/io/File;
    :cond_1
    const/4 v8, 0x1

    .line 8332
    :try_start_7
    invoke-direct {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 8341
    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 8342
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8345
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .line 8334
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_9
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "fail to open inputstream from FileDescriptor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 8340
    :catchall_0
    move-exception v10

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8341
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 8342
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 8345
    :goto_7
    throw v10

    .line 8343
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 8344
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8346
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .line 8343
    .end local v9    # "targetFile":Ljava/io/File;
    :catch_3
    move-exception v1

    .line 8344
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 8343
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 8344
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 8340
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

    .line 8337
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

    .line 8257
    const/4 v7, 0x0

    .line 8258
    .local v7, "result":Z
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8259
    .local v8, "sourceFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8261
    .local v9, "targetFile":Ljava/io/File;
    new-array v0, v10, [B

    .line 8262
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 8263
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 8267
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 8269
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 8270
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8271
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8273
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 8274
    .local v6, "read":I
    :goto_0
    const/4 v10, 0x0

    :try_start_2
    array-length v11, v0

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_2

    .line 8275
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 8284
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8285
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8289
    if-eqz v2, :cond_0

    .line 8291
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 8296
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 8298
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 8304
    :cond_1
    :goto_3
    return v7

    .line 8278
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

    .line 8279
    const/4 v7, 0x1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8289
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :cond_3
    if-eqz v2, :cond_4

    .line 8291
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 8296
    :cond_4
    :goto_4
    if-eqz v4, :cond_1

    .line 8298
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 8299
    :catch_1
    move-exception v1

    .line 8300
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 8292
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 8293
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 8292
    .local v1, "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v1

    .line 8293
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 8299
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 8300
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 8286
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 8287
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 8289
    if-eqz v2, :cond_5

    .line 8291
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 8296
    :cond_5
    :goto_6
    if-eqz v4, :cond_1

    .line 8298
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 8299
    :catch_6
    move-exception v1

    .line 8300
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 8292
    :catch_7
    move-exception v1

    .line 8293
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 8289
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v2, :cond_6

    .line 8291
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 8296
    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    .line 8298
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 8301
    :cond_7
    :goto_9
    throw v10

    .line 8292
    :catch_8
    move-exception v1

    .line 8293
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 8299
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v1

    .line 8300
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 8289
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

    .line 8286
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

    .line 8284
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
    .line 8351
    const-string v3, ""

    .line 8352
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

    .line 8353
    .local v4, "splited":Ljava/lang/String;
    move-object v3, v4

    .line 8354
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8355
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8359
    .end local v4    # "splited":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6972
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6973
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6974
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6975
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6976
    const-string v0, ""

    .line 6978
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

    .line 6982
    :goto_0
    return-object v0

    .line 6979
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getQuickPanelItemId(Ljava/lang/String;)I
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 8802
    const/4 v0, 0x0

    .line 8803
    .local v0, "itemId":I
    const-string v1, "Wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8804
    const/4 v0, 0x1

    .line 8842
    :cond_0
    :goto_0
    return v0

    .line 8805
    :cond_1
    const-string v1, "Location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8806
    const/4 v0, 0x2

    goto :goto_0

    .line 8807
    :cond_2
    const-string v1, "SilentMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8808
    const/4 v0, 0x3

    goto :goto_0

    .line 8809
    :cond_3
    const-string v1, "RotationLock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "AutoRotate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8810
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 8811
    :cond_5
    const-string v1, "Bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8812
    const/4 v0, 0x5

    goto :goto_0

    .line 8813
    :cond_6
    const-string v1, "MobileData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8814
    const/4 v0, 0x6

    goto :goto_0

    .line 8815
    :cond_7
    const-string v1, "PowerSaving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8816
    const/4 v0, 0x7

    goto :goto_0

    .line 8817
    :cond_8
    const-string v1, "AirplaneMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8818
    const/16 v0, 0x8

    goto :goto_0

    .line 8819
    :cond_9
    const-string v1, "DormantMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8820
    const/16 v0, 0x9

    goto :goto_0

    .line 8821
    :cond_a
    const-string v1, "Flashlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "TorchLight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8822
    :cond_b
    const/16 v0, 0xa

    goto :goto_0

    .line 8823
    :cond_c
    const-string v1, "UltraPowerSaving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8824
    const/16 v0, 0xb

    goto :goto_0

    .line 8825
    :cond_d
    const-string v1, "WiFiHotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "WifiHotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8826
    :cond_e
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 8827
    :cond_f
    const-string v1, "SmartStay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8828
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 8829
    :cond_10
    const-string v1, "PersonalMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8830
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 8831
    :cond_11
    const-string v1, "AllShareCast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8832
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 8833
    :cond_12
    const-string v1, "Nfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 8834
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 8835
    :cond_13
    const-string v1, "Sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 8836
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 8837
    :cond_14
    const-string v1, "MultiWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 8838
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 8839
    :cond_15
    const-string v1, "SFinder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8840
    const/16 v0, 0x13

    goto/16 :goto_0
.end method

.method private getQuickPanelItemString(I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 8726
    const-string v0, ""

    .line 8727
    .local v0, "itemString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 8798
    :goto_0
    return-object v0

    .line 8729
    :pswitch_0
    const-string v0, "Wifi"

    .line 8730
    goto :goto_0

    .line 8732
    :pswitch_1
    const-string v0, "Location"

    .line 8733
    goto :goto_0

    .line 8735
    :pswitch_2
    const-string v0, "SilentMode"

    .line 8736
    goto :goto_0

    .line 8738
    :pswitch_3
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_0

    .line 8739
    const-string v0, "AutoRotate"

    goto :goto_0

    .line 8741
    :cond_0
    const-string v0, "RotationLock"

    .line 8743
    goto :goto_0

    .line 8745
    :pswitch_4
    const-string v0, "Bluetooth"

    .line 8746
    goto :goto_0

    .line 8748
    :pswitch_5
    const-string v0, "MobileData"

    .line 8749
    goto :goto_0

    .line 8751
    :pswitch_6
    const-string v0, "PowerSaving"

    .line 8752
    goto :goto_0

    .line 8754
    :pswitch_7
    const-string v0, "AirplaneMode"

    .line 8755
    goto :goto_0

    .line 8757
    :pswitch_8
    const-string v0, "DormantMode"

    .line 8758
    goto :goto_0

    .line 8760
    :pswitch_9
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_1

    .line 8761
    const-string v0, "TorchLight"

    goto :goto_0

    .line 8763
    :cond_1
    const-string v0, "Flashlight"

    .line 8765
    goto :goto_0

    .line 8767
    :pswitch_a
    const-string v0, "UltraPowerSaving"

    .line 8768
    goto :goto_0

    .line 8770
    :pswitch_b
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_2

    .line 8771
    const-string v0, "WiFiHotspot"

    goto :goto_0

    .line 8773
    :cond_2
    const-string v0, "WifiHotspot"

    .line 8775
    goto :goto_0

    .line 8777
    :pswitch_c
    const-string v0, "SmartStay"

    .line 8778
    goto :goto_0

    .line 8780
    :pswitch_d
    const-string v0, "PersonalMode"

    .line 8781
    goto :goto_0

    .line 8783
    :pswitch_e
    const-string v0, "AllShareCast"

    .line 8784
    goto :goto_0

    .line 8786
    :pswitch_f
    const-string v0, "Nfc"

    .line 8787
    goto :goto_0

    .line 8789
    :pswitch_10
    const-string v0, "Sync"

    .line 8790
    goto :goto_0

    .line 8792
    :pswitch_11
    const-string v0, "MultiWindow"

    .line 8793
    goto :goto_0

    .line 8795
    :pswitch_12
    const-string v0, "SFinder"

    goto :goto_0

    .line 8727
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
    .line 999
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v0

    return v0
.end method

.method private refreshStatusbar()V
    .locals 6

    .prologue
    .line 4138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4139
    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 4140
    .local v1, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v0

    .line 4141
    .local v0, "flags":I
    const/high16 v4, 0x2000000

    or-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4142
    const v4, -0x2000001

    and-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4143
    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4144
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4145
    return-void
.end method

.method private registerBootReceiver()V
    .locals 5

    .prologue
    .line 362
    :try_start_0
    sget-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private registerKnoxCustomReceiver()V
    .locals 5

    .prologue
    .line 450
    :try_start_0
    sget-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 451
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 478
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private serializeKnoxCustomStatusbarIconItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)[B
    .locals 5
    .param p1, "input"    # Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    .prologue
    .line 5255
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5256
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 5257
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 5258
    .local v0, "b":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5262
    .end local v0    # "b":[B
    .end local v2    # "p":Landroid/os/Parcel;
    :goto_0
    return-object v0

    .line 5260
    :catch_0
    move-exception v1

    .line 5261
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "serializeKnoxCustomStatusbarIconItem"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5262
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
    .line 2611
    .local p1, "inputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2612
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2613
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 2614
    .local v0, "b":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2618
    .end local v0    # "b":[B
    .end local v2    # "p":Landroid/os/Parcel;
    :goto_0
    return-object v0

    .line 2616
    :catch_0
    move-exception v1

    .line 2617
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "serializeObject"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setKnoxSysFsIntValue(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "sysFsFilePath"    # Ljava/lang/String;
    .param p2, "sysFsIntValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 813
    const/4 v2, 0x0

    .line 814
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKnoxSysFsIntValue Path "

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

    .line 818
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 824
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 825
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 835
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 826
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 827
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 829
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 830
    :catch_2
    move-exception v1

    .line 831
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 826
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

    .line 5142
    const-string/jumbo v7, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5143
    .local v3, "uri":Landroid/net/Uri;
    const-string v1, "LOCKSCREEN_AND_S_VIEW_COVER"

    .line 5144
    .local v1, "optionName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 5146
    .local v2, "result":I
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5147
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 5149
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 5150
    .local v4, "values":Landroid/content/ContentValues;
    const-string v8, "LOCKSCREEN_AND_S_VIEW_COVER"

    if-eqz p1, :cond_1

    move v7, v6

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5151
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 5157
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    if-lez v2, :cond_2

    :goto_2
    return v5

    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    move v7, v5

    .line 5150
    goto :goto_0

    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    move v5, v6

    .line 5157
    goto :goto_2

    .line 5152
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

    .line 8363
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8364
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8365
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8367
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8368
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8369
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8370
    return-void
.end method

.method private setPermissionWorldExecutable(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8373
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8374
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8375
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8377
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8378
    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8379
    return-void
.end method

.method private setPermissionWorldReadable(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8382
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8383
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8384
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8386
    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8387
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8388
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

    .line 6401
    const/4 v0, 0x0

    .line 6403
    .local v0, "dbBytes":[B
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 6404
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeObject(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 6411
    :goto_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "powerCustomItems"

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6421
    :goto_1
    return v2

    .line 6406
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    .line 6407
    const/16 v2, -0x33

    goto :goto_1

    .line 6409
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeObject(Ljava/util/ArrayList;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 6417
    :catch_0
    move-exception v1

    .line 6418
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6421
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

    .line 6351
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "powerCustomItemsState"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 6361
    :goto_1
    return v1

    :cond_0
    move v3, v2

    .line 6351
    goto :goto_0

    .line 6357
    :catch_0
    move-exception v0

    .line 6358
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPowerDialogCustomItemsState() failed - persistence problem"

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

    .line 6361
    goto :goto_1
.end method

.method private setScreenCurtainDirect()V
    .locals 13

    .prologue
    .line 6008
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    iput-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    .line 6009
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "mDNIe"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/mdnie/MdnieManager;

    .line 6013
    .local v6, "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    if-eqz v9, :cond_1

    .line 6014
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    .line 6074
    :goto_1
    return-void

    .line 6008
    .end local v6    # "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    .line 6016
    .restart local v6    # "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    :cond_1
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "high_contrast"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v7, 0x1

    .line 6018
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

    .line 6020
    .local v2, "mColorBlindCheck":Z
    :goto_3
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "greyscale_mode"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v4, 0x1

    .line 6022
    .local v4, "mGreyscaleModeCheck":Z
    :goto_4
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "powersaving_switch"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v8, 0x1

    .line 6024
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

    .line 6026
    .local v5, "mGreyscalePowerSavingModeCheck":Z
    :goto_6
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v3

    .line 6027
    .local v3, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v3, :cond_d

    .line 6028
    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 6029
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeEmergencyMode(Z)Z

    goto :goto_1

    .line 6016
    .end local v2    # "mColorBlindCheck":Z
    .end local v3    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v4    # "mGreyscaleModeCheck":Z
    .end local v5    # "mGreyscalePowerSavingModeCheck":Z
    .end local v7    # "mNegativeColorCheck":Z
    .end local v8    # "mPowerSavingModeCheck":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 6018
    .restart local v7    # "mNegativeColorCheck":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 6020
    .restart local v2    # "mColorBlindCheck":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 6022
    .restart local v4    # "mGreyscaleModeCheck":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    .line 6024
    .restart local v8    # "mPowerSavingModeCheck":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 6031
    .restart local v3    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v5    # "mGreyscalePowerSavingModeCheck":Z
    :cond_7
    if-eqz v7, :cond_8

    if-eqz v4, :cond_8

    .line 6032
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    .line 6033
    :cond_8
    if-eqz v4, :cond_9

    .line 6034
    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    .line 6035
    :cond_9
    if-eqz v5, :cond_a

    if-eqz v8, :cond_a

    .line 6037
    const/4 v9, 0x1

    :try_start_0
    sget-object v10, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 6038
    :catch_0
    move-exception v0

    .line 6039
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 6041
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    if-eqz v7, :cond_b

    .line 6042
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1

    .line 6043
    :cond_b
    if-eqz v2, :cond_c

    .line 6044
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.colorblind.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6045
    .local v1, "i":Landroid/content/Intent;
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 6047
    .end local v1    # "i":Landroid/content/Intent;
    :cond_c
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    goto/16 :goto_1

    .line 6050
    :cond_d
    if-eqz v7, :cond_e

    if-eqz v4, :cond_e

    .line 6051
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    .line 6052
    :cond_e
    if-eqz v5, :cond_f

    if-eqz v8, :cond_f

    .line 6054
    const/4 v9, 0x1

    :try_start_1
    sget-object v10, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 6055
    :catch_1
    move-exception v0

    .line 6056
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 6058
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    if-eqz v4, :cond_10

    .line 6059
    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    .line 6060
    :cond_10
    if-eqz v7, :cond_11

    .line 6061
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1

    .line 6062
    :cond_11
    if-eqz v2, :cond_12

    .line 6063
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.colorblind.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6064
    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 6066
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

    .line 6552
    const/4 v2, -0x6

    .line 6554
    .local v2, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "statusBarClockState"

    invoke-virtual {v5, p2, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6556
    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 6557
    .local v4, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .line 6558
    .local v1, "flags":I
    const/4 v3, 0x1

    .line 6559
    .local v3, "status":Z
    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6560
    :cond_0
    const/4 v3, 0x0

    .line 6562
    :cond_1
    if-eqz v3, :cond_2

    .line 6563
    or-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6564
    const v5, -0x800001

    and-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6568
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6569
    const/4 v2, 0x0

    .line 6575
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :goto_1
    return v2

    .line 6566
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

    .line 6570
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .line 6571
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setStatusBarClockState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6572
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

    .line 6619
    const/4 v2, -0x6

    .line 6621
    .local v2, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "statusBarIconsState"

    invoke-virtual {v5, p2, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6623
    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 6624
    .local v4, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .line 6625
    .local v1, "flags":I
    const/4 v3, 0x1

    .line 6626
    .local v3, "status":Z
    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6627
    :cond_0
    const/4 v3, 0x0

    .line 6629
    :cond_1
    if-eqz v3, :cond_2

    .line 6630
    and-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6631
    or-int v5, v1, v11

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6632
    and-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6636
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6637
    const/4 v2, 0x0

    .line 6643
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :goto_1
    return v2

    .line 6634
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

    .line 6638
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .line 6639
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6640
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private setStatusBarModeLocal(II)I
    .locals 9
    .param p1, "mode"    # I
    .param p2, "callingUid"    # I

    .prologue
    .line 6466
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6467
    .local v4, "token":J
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 6468
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v1

    .line 6469
    .local v1, "isRestricted":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6470
    if-eqz v1, :cond_0

    .line 6471
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setStatusBarMode() - eSDK status bar already hidden"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6472
    const/4 v3, -0x7

    .line 6491
    :goto_0
    return v3

    .line 6475
    :cond_0
    const/4 v3, -0x6

    .line 6478
    .local v3, "result":I
    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    .line 6479
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarMode"

    invoke-virtual {v6, p2, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6481
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    .line 6482
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6483
    const/4 v3, 0x0

    goto :goto_0

    .line 6485
    :cond_2
    const/16 v3, -0x2b

    goto :goto_0

    .line 6487
    :catch_0
    move-exception v0

    .line 6488
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStatusBarMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6489
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private setUsbMassStorageStateLocal(ZI)I
    .locals 9
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v1, 0x0

    .line 7002
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7003
    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 7004
    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 7005
    .local v1, "isRestricted":Z
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7006
    if-eqz v1, :cond_1

    .line 7007
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setUsbMassStorageState() - eSDK USB media player disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7008
    const/4 v3, -0x7

    .line 7020
    :goto_0
    return v3

    .line 7011
    :cond_1
    const/4 v3, -0x6

    .line 7014
    .local v3, "result":I
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "usbMassStorageStateIndependentSealed"

    invoke-virtual {v6, p2, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7015
    const/4 v3, 0x0

    goto :goto_0

    .line 7016
    :catch_0
    move-exception v0

    .line 7017
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7018
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 7133
    const/4 v1, -0x6

    .line 7135
    .local v1, "result":I
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7136
    :cond_0
    const/16 v2, -0x24

    .line 7146
    :goto_0
    return v2

    .line 7139
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetSource"

    invoke-virtual {v2, p3, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7140
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetDest"

    invoke-virtual {v2, p3, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7141
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    .line 7146
    goto :goto_0

    .line 7142
    :catch_0
    move-exception v0

    .line 7143
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbNetAddresses() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7144
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private setUsbNetStateLocal(ZI)I
    .locals 8
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v7, 0x1

    .line 7067
    const/4 v1, -0x6

    .line 7068
    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7070
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

    .line 7073
    const-string v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUsbNetState() failed - invalid IP addresses "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7074
    const/16 v1, -0x24

    .line 7089
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7090
    return v1

    .line 7076
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

    .line 7077
    const-string v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUsbNetState() failed - USB debugging mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7078
    const/16 v1, -0x2b

    goto :goto_0

    .line 7080
    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "usbNetState"

    invoke-virtual {v4, p2, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 7081
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7082
    const/4 v1, 0x0

    goto :goto_0

    .line 7085
    :catch_0
    move-exception v0

    .line 7086
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUsbNetState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7087
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private startProKioskMode()V
    .locals 18

    .prologue
    .line 658
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 659
    .local v12, "token":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "statusbar"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/StatusBarManager;

    .line 663
    .local v11, "statusBarManager":Landroid/app/StatusBarManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v15, 0x3e8

    const-string v16, "KNOX_CUSTOM"

    const-string/jumbo v17, "statusBarIconsState"

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_0

    .line 665
    invoke-virtual {v11}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v4

    .line 666
    .local v4, "disableFlags":I
    const v14, -0x100001

    and-int/2addr v14, v4

    invoke-virtual {v11, v14}, Landroid/app/StatusBarManager;->disable(I)V

    .line 667
    const/high16 v14, 0x100000

    or-int/2addr v14, v4

    invoke-virtual {v11, v14}, Landroid/app/StatusBarManager;->disable(I)V

    .line 669
    .end local v4    # "disableFlags":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v15, 0x3e8

    const-string v16, "KNOX_CUSTOM"

    const-string/jumbo v17, "statusBarClockState"

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1

    .line 671
    invoke-virtual {v11}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v4

    .line 672
    .restart local v4    # "disableFlags":I
    const v14, -0x800001

    and-int/2addr v14, v4

    invoke-virtual {v11, v14}, Landroid/app/StatusBarManager;->disable(I)V

    .line 673
    const/high16 v14, 0x800000

    or-int/2addr v14, v4

    invoke-virtual {v11, v14}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v4    # "disableFlags":I
    :cond_1
    :goto_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enableStatusBarNotificationsLocal(Z)I

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    .line 681
    new-instance v9, Landroid/content/Intent;

    const-string v14, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v9, "multiwindowIntent":Landroid/content/Intent;
    const-string v14, "closeTray"

    const/4 v15, 0x1

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    const/16 v16, -0x2

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v14, v9, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 686
    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v3, v2, v7

    .line 687
    .local v3, "cb":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 689
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/app/enterprise/ApplicationPolicy;->setDisableApplication(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 686
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 675
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cb":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "multiwindowIntent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 676
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

    .line 691
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "cb":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "multiwindowIntent":Landroid/content/Intent;
    :catch_1
    move-exception v5

    .line 692
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

    .line 698
    .end local v3    # "cb":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "people_stripe"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 699
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "task_edge"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    const/16 v14, 0x1b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getMultiWindowFixedState(I)I

    move-result v6

    .line 702
    .local v6, "fixed":I
    const/4 v14, 0x1

    if-ne v6, v14, :cond_4

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V

    .line 705
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    .line 707
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    .line 708
    .local v10, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/app/enterprise/RestrictionPolicy;->allowSafeMode(Z)Z

    .line 709
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    return-void
.end method

.method private startStopUsbNet(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    .line 596
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 613
    return-void
.end method

.method private stopProKioskMode()V
    .locals 21

    .prologue
    .line 716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 717
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v18, "statusbar"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/StatusBarManager;

    .line 721
    .local v14, "statusBarManager":Landroid/app/StatusBarManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v18, 0x3e8

    const-string v19, "KNOX_CUSTOM"

    const-string/jumbo v20, "statusBarIconsState"

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_2

    .line 723
    invoke-virtual {v14}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v6

    .line 724
    .local v6, "disableFlags":I
    const v15, -0x100001

    and-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    .line 725
    const/high16 v15, 0x100000

    or-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    .line 726
    const v15, -0x100001

    and-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    .line 734
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v18, 0x3e8

    const-string v19, "KNOX_CUSTOM"

    const-string/jumbo v20, "statusBarClockState"

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_0

    .line 736
    invoke-virtual {v14}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v6

    .line 737
    const/high16 v15, 0x800000

    or-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    .line 738
    const v15, -0x800001

    and-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .end local v6    # "disableFlags":I
    :cond_0
    :goto_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enableStatusBarNotificationsLocal(Z)I

    .line 745
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    .line 746
    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 747
    .local v12, "multiwindowIntent":Landroid/content/Intent;
    const-string v15, "closeTray"

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v18, Landroid/os/UserHandle;

    const/16 v19, -0x2

    invoke-direct/range {v18 .. v19}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 751
    sget-object v4, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v11, :cond_3

    aget-object v5, v4, v9

    .line 752
    .local v5, "cb":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 754
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/app/enterprise/ApplicationPolicy;->setEnableApplication(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 751
    :cond_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 729
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "cb":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "multiwindowIntent":Landroid/content/Intent;
    :cond_2
    :try_start_2
    invoke-virtual {v14}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v6

    .line 730
    .restart local v6    # "disableFlags":I
    const v15, -0x100001

    and-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    .line 731
    const/high16 v15, 0x100000

    or-int/2addr v15, v6

    invoke-virtual {v14, v15}, Landroid/app/StatusBarManager;->disable(I)V

    .line 732
    invoke-virtual {v14, v6}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 740
    .end local v6    # "disableFlags":I
    :catch_0
    move-exception v7

    .line 741
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

    .line 756
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "cb":Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "multiwindowIntent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    .line 757
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

    .line 763
    .end local v5    # "cb":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/SecurityException;
    :cond_3
    :try_start_3
    new-instance v10, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v10, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v10, "intent":Landroid/content/Intent;
    const-string v15, "com.samsung.android.app.cocktailbarservice"

    const-string v18, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    move-object/from16 v0, v18

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 771
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v18, "people_stripe"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 772
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v18, "task_edge"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 774
    const/16 v15, 0x1b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getMultiWindowFixedState(I)I

    move-result v8

    .line 775
    .local v8, "fixed":I
    const/4 v15, 0x1

    if-ne v8, v15, :cond_4

    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V

    .line 778
    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    .line 780
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v13

    .line 781
    .local v13, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/app/enterprise/RestrictionPolicy;->allowSafeMode(Z)Z

    .line 782
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 783
    return-void

    .line 767
    .end local v8    # "fixed":I
    .end local v13    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :catch_2
    move-exception v7

    .line 768
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
    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, "multiwindowUpdateIntent":Landroid/content/Intent;
    const-string/jumbo v1, "updateCenterBar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 621
    return-void
.end method

.method private updateQuickPanelItems(Ljava/lang/String;)I
    .locals 20
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    .line 8567
    const/4 v11, 0x0

    .line 8568
    .local v11, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 8570
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

    .line 8573
    .local v7, "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 8574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "notification_panel_active_app_list_for_reset"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8575
    .local v10, "qsList":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 8576
    new-instance v9, Ljava/util/LinkedList;

    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8577
    .local v9, "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 8578
    .local v2, "activeItems":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 8580
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

    .line 8581
    .local v6, "itemString":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 8583
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 8584
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8587
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 8589
    .local v4, "e1":Ljava/lang/Exception;
    const/16 v17, -0x32

    .line 8639
    .end local v2    # "activeItems":I
    .end local v4    # "e1":Ljava/lang/Exception;
    .end local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "newList":Ljava/lang/StringBuilder;
    .end local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "qsList":Ljava/lang/String;
    :goto_1
    return v17

    .line 8592
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

    .line 8593
    .local v16, "unsupportingitems":Ljava/lang/String;
    new-instance v13, Ljava/util/LinkedList;

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8594
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

    .line 8595
    .restart local v6    # "itemString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8596
    add-int/lit8 v2, v2, 0x1

    .line 8597
    goto :goto_2

    .line 8599
    .end local v6    # "itemString":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "notification_panel_active_app_list"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "notification_panel_active_number_of_apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8632
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

    .line 8633
    const/4 v11, 0x0

    .line 8638
    .end local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "qsList":Ljava/lang/String;
    :goto_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v17, v11

    .line 8639
    goto :goto_1

    .line 8603
    .restart local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "sysui_qs_tiles"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8604
    .restart local v10    # "qsList":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 8605
    const/4 v2, 0x0

    .line 8606
    .restart local v2    # "activeItems":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 8608
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

    .line 8610
    .restart local v6    # "itemString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 8611
    add-int/lit8 v2, v2, 0x1

    .line 8612
    goto :goto_5

    .line 8613
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemString":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 8614
    .restart local v4    # "e1":Ljava/lang/Exception;
    const/16 v17, -0x32

    goto/16 :goto_1

    .line 8617
    .end local v4    # "e1":Ljava/lang/Exception;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemsUnsupported()Ljava/lang/String;

    move-result-object v16

    .line 8618
    .restart local v16    # "unsupportingitems":Ljava/lang/String;
    new-instance v13, Ljava/util/LinkedList;

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8619
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

    .line 8620
    .restart local v6    # "itemString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8621
    add-int/lit8 v2, v2, 0x1

    .line 8622
    goto :goto_6

    .line 8624
    .end local v6    # "itemString":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "sysui_qs_tiles"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "sysui_qs_active_tiles"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8626
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v17, "samsung.intent.action.knoxcustom.SET_QUICK_PANEL_ITEMS"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8627
    .local v12, "systemIntent":Landroid/content/Intent;
    const-string/jumbo v17, "items"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8628
    const-string v17, "active"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8629
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

    .line 8634
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

    .line 8635
    .local v3, "e":Ljava/lang/Exception;
    const-string v17, "KnoxCustomManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setQuickPanelItems() failed - persistence problem "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8636
    const/4 v11, -0x1

    goto/16 :goto_4
.end method

.method private updateStatusBarLocal()V
    .locals 5

    .prologue
    .line 6496
    const/4 v1, 0x0

    .line 6497
    .local v1, "policyVal":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarMode()I

    move-result v0

    .line 6498
    .local v0, "mode":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 6499
    const-string/jumbo v1, "immersive.full=apps,*"

    .line 6501
    :cond_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "policy_control"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6505
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    .line 6506
    return-void
.end method

.method private writePathToFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 8391
    const/4 v4, 0x0

    .line 8392
    .local v4, "result":Z
    const/4 v0, 0x0

    .line 8394
    .local v0, "bwShutdown":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 8395
    .local v3, "fwShutdown":Ljava/io/FileWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8396
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

    .line 8397
    const/4 v4, 0x1

    .line 8401
    if-eqz v1, :cond_2

    .line 8403
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 8409
    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .end local v3    # "fwShutdown":Ljava/io/FileWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return v4

    .line 8404
    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 8405
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 8406
    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 8398
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    .line 8399
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "KnoxCustomManagerService"

    const-string v6, "InfoFile write failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8401
    if-eqz v0, :cond_0

    .line 8403
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 8404
    :catch_2
    move-exception v2

    .line 8405
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 8401
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v0, :cond_1

    .line 8403
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 8406
    :cond_1
    :goto_3
    throw v5

    .line 8404
    :catch_3
    move-exception v2

    .line 8405
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 8401
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

    .line 8398
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
    .line 6809
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v7

    .line 6810
    .local v7, "callingUid":I
    const/4 v14, -0x1

    .line 6814
    .local v14, "result":I
    :try_start_0
    const-string v1, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 6815
    .local v11, "em":Ljava/lang/Class;
    const-string/jumbo v3, "supportUltraPowerSavingMode"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v11, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 6816
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

    .line 6817
    const/4 v1, -0x6

    .line 6864
    .end local v11    # "em":Ljava/lang/Class;
    .end local v15    # "supported":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    .line 6819
    :catch_0
    move-exception v10

    .line 6820
    .local v10, "e":Ljava/lang/Exception;
    const/4 v1, -0x6

    goto :goto_0

    .line 6823
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "em":Ljava/lang/Class;
    .restart local v15    # "supported":Ljava/lang/reflect/Method;
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6825
    :cond_1
    const/16 v1, -0x28

    goto :goto_0

    .line 6829
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6830
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 6831
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6832
    const/16 v1, -0x32

    goto :goto_0

    .line 6838
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v1, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6839
    .local v2, "emergencyUri":Landroid/net/Uri;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6840
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 6841
    .restart local v13    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6842
    .local v8, "className":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 6843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "count(*)"

    aput-object v5, v3, v4

    const-string/jumbo v4, "package=? and class=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const/4 v6, 0x1

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6844
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 6845
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6846
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_6

    .line 6847
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 6848
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "package"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6849
    const-string v1, "class"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6850
    const-string/jumbo v1, "permission"

    const-string v3, "0000"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6851
    const-string/jumbo v1, "mode"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 6854
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 6860
    .end local v2    # "emergencyUri":Landroid/net/Uri;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 6861
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

    .line 6862
    const/4 v14, -0x1

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    move v1, v14

    .line 6864
    goto/16 :goto_0

    .line 6858
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

    .line 6859
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public checkEnterprisePermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1540
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAnimation(I)I
    .locals 13
    .param p1, "mode"    # I

    .prologue
    const/4 v9, -0x1

    .line 7918
    const/4 v7, -0x1

    .line 7919
    .local v7, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7920
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 7921
    .local v10, "token":J
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/b2b"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7922
    .local v2, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v12, "/efs/knoxcustom"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7923
    .local v3, "dirEFS":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 7924
    const/4 v9, 0x0

    .line 7974
    :cond_0
    :goto_0
    return v9

    .line 7927
    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7929
    if-nez p1, :cond_6

    .line 7931
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v12, "/data/b2b/BootFileInfo.txt"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7932
    .local v6, "fileInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v12, "/data/b2b/SoundFileInfo.txt"

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7933
    .local v8, "soundInfo":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v12, "/data/b2b/DelayInfo.txt"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7934
    .local v1, "delayInfo":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v12, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7936
    .local v5, "efsFileInfo":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 7937
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7939
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 7940
    invoke-direct {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7942
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 7943
    invoke-direct {p0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7945
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 7946
    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7947
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 7948
    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7949
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_0

    .line 7954
    :cond_5
    const/4 v7, 0x0

    .line 7973
    .end local v1    # "delayInfo":Ljava/io/File;
    .end local v5    # "efsFileInfo":Ljava/io/File;
    .end local v6    # "fileInfo":Ljava/io/File;
    .end local v8    # "soundInfo":Ljava/io/File;
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v9, v7

    .line 7974
    goto :goto_0

    .line 7955
    :catch_0
    move-exception v4

    .line 7956
    .local v4, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 7958
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v12, 0x1

    if-ne p1, v12, :cond_8

    .line 7960
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v12, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7962
    .restart local v6    # "fileInfo":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 7963
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7966
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 7967
    .end local v6    # "fileInfo":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 7968
    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 7971
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v7, -0x32

    goto :goto_1
.end method

.method public copyAdbLog(I)I
    .locals 13
    .param p1, "logType"    # I

    .prologue
    .line 4930
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4931
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4932
    .local v8, "token":J
    const/4 v7, -0x6

    .line 4934
    .local v7, "result":I
    packed-switch p1, :pswitch_data_0

    .line 4979
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "copyAdbLog() failed - invalid logType "

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    const/16 v7, -0x32

    .line 4983
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4984
    return v7

    .line 4937
    :pswitch_0
    :try_start_0
    const-string v2, "/data/log/customLogcat.log"

    .line 4938
    .local v2, "customLog":Ljava/lang/String;
    const-string/jumbo v1, "logcat -d -v time -f /data/log/customLogcat.log"

    .line 4939
    .local v1, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string/jumbo v11, "logcat -d -v time -f /data/log/customLogcat.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4940
    .local v6, "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 4942
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod  644 /data/log/customLogcat.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4943
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4944
    const/4 v7, 0x0

    goto :goto_0

    .line 4945
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "customLog":Ljava/lang/String;
    .end local v6    # "proc":Ljava/lang/Process;
    :catch_0
    move-exception v3

    .line 4946
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4947
    const/4 v7, -0x1

    .line 4951
    goto :goto_0

    .line 4948
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 4949
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4950
    const/4 v7, -0x1

    .line 4952
    goto :goto_0

    .line 4955
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :pswitch_1
    :try_start_1
    const-string v2, "/data/log/customKernel.log"

    .line 4956
    .restart local v2    # "customLog":Ljava/lang/String;
    const-string v5, "/proc/last_kmsg"

    .line 4957
    .local v5, "kernelLog":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4958
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4959
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cp "

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

    .line 4960
    .restart local v6    # "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 4961
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod  644 /data/log/customKernel.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4962
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4963
    const/4 v7, 0x0

    .line 4964
    goto/16 :goto_0

    .line 4966
    .end local v6    # "proc":Ljava/lang/Process;
    :cond_0
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 4969
    .end local v2    # "customLog":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "kernelLog":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 4970
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4971
    const/4 v7, -0x1

    .line 4976
    goto/16 :goto_0

    .line 4973
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 4974
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4975
    const/4 v7, -0x1

    .line 4977
    goto/16 :goto_0

    .line 4934
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
    .line 3641
    .local p1, "IdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3643
    .local v0, "callingUid":I
    const/4 v4, -0x1

    .line 3646
    .local v4, "result":I
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3647
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3648
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3649
    const/4 v6, -0x6

    .line 3670
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v6

    .line 3653
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3654
    :cond_1
    const/16 v6, -0x32

    goto :goto_0

    .line 3657
    :cond_2
    const-string v5, ""

    .line 3658
    .local v5, "toDB":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3659
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

    .line 3663
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v7, 0x3e8

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "smsIDsToDelete"

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3664
    const/4 v4, 0x0

    :goto_2
    move v6, v4

    .line 3670
    goto :goto_0

    .line 3665
    :catch_0
    move-exception v2

    .line 3667
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public deleteMessagesByNumber(Ljava/lang/String;)I
    .locals 12
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3593
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v7

    .line 3596
    .local v7, "callingUid":I
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3597
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 3598
    .local v8, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v8, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3599
    const/4 v2, -0x6

    .line 3629
    .end local v8    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v2

    .line 3603
    :cond_1
    const-string v11, "[0-9+]+"

    .line 3604
    .local v11, "regex":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3605
    :cond_2
    const/16 v2, -0x32

    goto :goto_0

    .line 3607
    :cond_3
    const/4 v6, 0x0

    .line 3609
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3610
    .local v1, "inboxURI":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3611
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3612
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

    .line 3614
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 3615
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3617
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

    .line 3618
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3620
    :cond_5
    invoke-virtual {p0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteMessagesByIds(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3625
    if-eqz v6, :cond_0

    .line 3626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3621
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "inboxURI":Landroid/net/Uri;
    .end local v10    # "idRowToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 3622
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "KnoxCustomManagerService"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3625
    if-eqz v6, :cond_6

    .line 3626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3629
    :cond_6
    const/4 v2, -0x1

    goto :goto_0

    .line 3625
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_7

    .line 3626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method public dialEmergencyNumber(Ljava/lang/String;)I
    .locals 9
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2767
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2768
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 2769
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2772
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2773
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2774
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 2775
    :cond_0
    const/16 v3, -0x28

    .line 2794
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2795
    return v3

    .line 2777
    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2778
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2779
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2780
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2781
    const/4 v3, 0x0

    .line 2782
    goto :goto_0

    .line 2783
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v3, -0x31

    goto :goto_0

    .line 2787
    :cond_4
    const/4 v3, -0x2

    goto :goto_0

    .line 2790
    :catch_0
    move-exception v1

    .line 2791
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dialEmergencyNumber() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getAccessibilitySettingsItems()I
    .locals 5

    .prologue
    .line 9049
    const/4 v1, 0x0

    .line 9052
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

    .line 9053
    or-int/lit8 v1, v1, 0x1

    .line 9055
    :cond_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control_incomming_calls"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 9056
    or-int/lit8 v1, v1, 0x2

    .line 9058
    :cond_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "incall_power_button_behavior"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 9060
    or-int/lit8 v1, v1, 0x4

    .line 9062
    :cond_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 9063
    or-int/lit8 v1, v1, 0x10

    .line 9065
    :cond_3
    iget-boolean v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v2, :cond_5

    .line 9066
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_reminder"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 9067
    or-int/lit8 v1, v1, 0x8

    .line 9078
    :cond_4
    :goto_0
    return v1

    .line 9070
    :cond_5
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_reminder_selectable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    .line 9071
    or-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 9074
    :catch_0
    move-exception v0

    .line 9075
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccessibilitySettingsItems() failed - persistence problem "

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

    .line 7378
    const/4 v1, 0x1

    .line 7379
    .local v1, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 7399
    :goto_0
    return v1

    .line 7382
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

    .line 7383
    :catch_0
    move-exception v0

    .line 7384
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAirGestureOptionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7389
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pen_hovering"

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

    .line 7390
    :catch_1
    move-exception v0

    .line 7391
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAirGestureOptionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7379
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
    .line 5579
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5581
    .local v6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 5583
    .local v1, "blockNamespaces":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v9, 0x3e8

    const-string v10, "KNOX_CUSTOM"

    const-string v11, "blockDownloadNamespaces"

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5584
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 5585
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5586
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

    .line 5587
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5586
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5590
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "nsTokens":[Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5591
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getAppBlockDownloadNamespaces() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5594
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public getAppBlockDownloadState()Z
    .locals 6

    .prologue
    .line 5519
    const/4 v0, 0x0

    .line 5521
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

    .line 5526
    :goto_0
    return v0

    .line 5522
    :catch_0
    move-exception v1

    .line 5523
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAppBlockDownloadState() failed - persistence problem "

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
    .line 5351
    const/4 v2, 0x0

    .line 5354
    .local v2, "result":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "batteryLevelColourItems"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 5357
    .local v0, "blob":[B
    if-eqz v0, :cond_0

    .line 5358
    invoke-direct {p0, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deserializeKnoxCustomStatusbarIconItem([B)Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5363
    .end local v0    # "blob":[B
    :cond_0
    :goto_0
    return-object v2

    .line 5360
    :catch_0
    move-exception v1

    .line 5361
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "getPermissions() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCallScreenDisabledItems()I
    .locals 6

    .prologue
    .line 3487
    const/4 v1, 0x0

    .line 3489
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

    .line 3494
    :goto_0
    return v1

    .line 3490
    :catch_0
    move-exception v0

    .line 3491
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCallScreenDisabledItems() failed - persistence problem "

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
    .line 5918
    const/4 v1, 0x1

    .line 5920
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

    .line 5925
    :goto_0
    return v1

    .line 5921
    :catch_0
    move-exception v0

    .line 5922
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getChargerConnectionSoundEnabledState() failed - persistence problem "

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
    .line 3253
    const/4 v1, 0x1

    .line 3255
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

    .line 3260
    :goto_0
    return v1

    .line 3256
    :catch_0
    move-exception v0

    .line 3257
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCheckCoverPopupState() failed - persistence problem "

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
    .line 4003
    const/4 v1, 0x0

    .line 4005
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "customOperatorName"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4010
    :goto_0
    return-object v1

    .line 4006
    :catch_0
    move-exception v0

    .line 4007
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCustomOperatorName() failed - persistence problem "

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
    .line 5839
    const/4 v2, 0x0

    .line 5841
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5842
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isForceSpeakerOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 5847
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_0
    return v2

    .line 5843
    :catch_0
    move-exception v1

    .line 5844
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceSpeakerEnabledState() failed - persistence problem "

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

    .line 7309
    const/4 v4, 0x0

    .line 7313
    .local v4, "state":Z
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 7314
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 7315
    .local v1, "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "getWifiDisplayStatus"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 7316
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 7317
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

    .line 7322
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

    .line 7317
    goto :goto_0

    .line 7318
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v1    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 7319
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDisplayMirroringState() failed - persistence problem "

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
    .line 5794
    const/4 v1, 0x0

    .line 5796
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "ethernetConnectionType"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5801
    :goto_0
    return v1

    .line 5797
    :catch_0
    move-exception v0

    .line 5798
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEthernetConfigurationType() failed - persistence problem "

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
    .line 5669
    const/4 v7, 0x0

    .line 5671
    .local v7, "result":Z
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v9, 0x3e8

    const-string v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "ethernetState"

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 5672
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "ethernet"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 5673
    .local v1, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 5674
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "getEthState"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 5675
    .local v4, "m":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 5676
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5677
    .local v2, "ethernetState":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 5678
    const/4 v7, 0x1

    .line 5694
    .end local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v2    # "ethernetState":Ljava/lang/Integer;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v7

    .line 5679
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

    .line 5680
    const/4 v7, 0x0

    goto :goto_0

    .line 5684
    .end local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v2    # "ethernetState":Ljava/lang/Integer;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 5685
    .local v5, "nsme":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    .line 5692
    goto :goto_0

    .line 5686
    .end local v5    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 5687
    .local v3, "ite":Ljava/lang/reflect/InvocationTargetException;
    const/4 v7, 0x0

    .line 5692
    goto :goto_0

    .line 5688
    .end local v3    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v6

    .line 5689
    .local v6, "re":Ljava/lang/RuntimeException;
    const/4 v7, 0x0

    .line 5692
    goto :goto_0

    .line 5690
    .end local v6    # "re":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 5691
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getEthernetState() failed - persistence problem "

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
    .line 3751
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3754
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "excludedSMSNumbers"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3755
    .local v2, "fromDB":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 3769
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 3758
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

    .line 3759
    .local v6, "token":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 3761
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3758
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3764
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "token":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3765
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getExcludedMessagesNotifications() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getExitUI(I)Ljava/lang/String;
    .locals 6
    .param p1, "stringType"    # I

    .prologue
    .line 1090
    const/4 v1, 0x0

    .line 1091
    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1107
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getExitUI() called with invalid stringType"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :goto_0
    return-object v1

    .line 1094
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiPackage"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1101
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiClass"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1102
    :catch_1
    move-exception v0

    .line 1103
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1091
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
    .line 2747
    const/4 v1, 0x0

    .line 2749
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "extendedCallInfoState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2754
    :goto_0
    return v1

    .line 2750
    :catch_0
    move-exception v0

    .line 2751
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExtendedCallInfoState() failed - persistence problem "

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
    .line 9150
    const/4 v2, 0x0

    .line 9152
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    move-result-object v1

    .line 9153
    .local v1, "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    invoke-virtual {v1}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 9154
    const/4 v2, 0x1

    .line 9160
    .end local v1    # "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :cond_0
    :goto_0
    return v2

    .line 9156
    :catch_0
    move-exception v0

    .line 9157
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getForceAutoStartUp() failed "

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
    .line 9129
    const/4 v1, 0x0

    .line 9130
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9132
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

    .line 9136
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9137
    return v1

    .line 9133
    :catch_0
    move-exception v0

    .line 9134
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getForceAutoStartupStateFromDB() failed - persistence problem "

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
    .line 4531
    const/4 v1, 0x1

    .line 4533
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "gearNotificationState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4538
    :goto_0
    return v1

    .line 4534
    :catch_0
    move-exception v0

    .line 4535
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getGearNotificationState() failed - persistence problem "

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
    .line 3407
    const/4 v1, 0x0

    .line 3409
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHardKeyIntentState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3414
    :goto_0
    return v1

    .line 3410
    :catch_0
    move-exception v0

    .line 3411
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHardKeyIntentState() failed - persistence problem "

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
    .line 3213
    const/4 v1, 0x0

    .line 3215
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "notificationMessagesMask"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3220
    :goto_0
    return v1

    .line 3216
    :catch_0
    move-exception v0

    .line 3217
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHideNotificationMessages() failed - persistence problem "

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
    .line 1296
    const/4 v1, 0x0

    .line 1298
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHomeActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1303
    :goto_0
    return-object v1

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHomeActivity() failed - persistence problem "

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
    .line 3887
    const/4 v2, 0x1

    .line 3888
    .local v2, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3890
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "consumer_ir"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ConsumerIrManager;

    .line 3891
    .local v0, "cim":Landroid/hardware/ConsumerIrManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 3892
    :cond_0
    const/4 v2, 0x0

    .line 3900
    .end local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3901
    return v2

    .line 3894
    .restart local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v6, 0x3e8

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "infraredState"

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 3896
    .end local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :catch_0
    move-exception v1

    .line 3897
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getInfraredState() failed - persistence problem "

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
    .line 2147
    const/4 v1, 0x0

    .line 2149
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "inputRestrictionState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2154
    :goto_0
    return v1

    .line 2150
    :catch_0
    move-exception v0

    .line 2151
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getInputMethodRestrictionState() failed - persistence problem "

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
    .line 5969
    const/4 v1, 0x0

    .line 5971
    .local v1, "mode":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "keyboardMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5976
    :goto_0
    return v1

    .line 5972
    :catch_0
    move-exception v0

    .line 5973
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getKeyboardMode() failed - persistence problem "

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
    .line 4706
    const/4 v1, 0x0

    .line 4708
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

    .line 4713
    :goto_0
    return v1

    .line 4709
    :catch_0
    move-exception v0

    .line 4710
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLTESettingState() failed - persistence problem "

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
    .line 6083
    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    .line 6085
    .local v0, "result":Z
    return v0
.end method

.method public getLockScreenHiddenItems()I
    .locals 13

    .prologue
    .line 5183
    const/4 v5, 0x0

    .line 5184
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5187
    .local v8, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v10, 0x3e8

    const-string v11, "KNOX_CUSTOM"

    const-string/jumbo v12, "lockScreenItems"

    invoke-virtual {v7, v10, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 5191
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_clock"

    const/4 v11, -0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_7

    const/4 v3, 0x1

    .line 5192
    .local v3, "isNewKeyguard":Z
    :goto_0
    iget-boolean v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v7, :cond_1

    .line 5193
    if-nez v3, :cond_1

    .line 5194
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_clock"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    .line 5195
    or-int/lit8 v5, v5, 0x1

    .line 5197
    :cond_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_date_and_year"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1

    .line 5198
    or-int/lit8 v5, v5, 0x10

    .line 5202
    :cond_1
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5203
    .local v4, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5204
    .local v0, "UserID":I
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLockScreenHideOwnerInfo()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_2

    .line 5205
    or-int/lit8 v5, v5, 0x20

    .line 5207
    :cond_2
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_application_shortcut"

    invoke-static {v7, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5208
    .local v1, "appShortcut_Info":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v7, :cond_8

    .line 5209
    if-nez v1, :cond_3

    .line 5211
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "set_shortcuts_mode"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_3

    .line 5212
    or-int/lit8 v5, v5, 0x40

    .line 5226
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_additional_info"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4

    .line 5227
    or-int/lit16 v5, v5, 0x80

    .line 5229
    :cond_4
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "unlock_text"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_5

    .line 5230
    or-int/lit16 v5, v5, 0x100

    .line 5232
    :cond_5
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_notifications"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_6

    .line 5233
    or-int/lit16 v5, v5, 0x200

    .line 5241
    :cond_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v5

    .line 5242
    .end local v0    # "UserID":I
    .end local v1    # "appShortcut_Info":Ljava/lang/String;
    .end local v3    # "isNewKeyguard":Z
    .end local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :goto_2
    return v7

    .line 5191
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 5217
    .restart local v0    # "UserID":I
    .restart local v1    # "appShortcut_Info":Ljava/lang/String;
    .restart local v3    # "isNewKeyguard":Z
    .restart local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_8
    :try_start_1
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5218
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

    .line 5219
    or-int/lit8 v5, v5, 0x40

    goto :goto_1

    .line 5221
    .end local v6    # "shortcutInfo":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5222
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5223
    const/4 v7, 0x0

    goto :goto_2

    .line 5236
    .end local v0    # "UserID":I
    .end local v1    # "appShortcut_Info":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "isNewKeyguard":Z
    .end local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_1
    move-exception v2

    .line 5237
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5238
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getLockScreenHideOwnerInfo()I
    .locals 8

    .prologue
    .line 5164
    const/4 v1, 0x0

    .line 5165
    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5168
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "ownerInfoHide"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5173
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 5174
    :goto_0
    return v4

    .line 5169
    :catch_0
    move-exception v0

    .line 5170
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLockScreenHideOwnerInfo() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLockScreenOverrideMode()I
    .locals 1

    .prologue
    .line 6155
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
    .line 3781
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3784
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "smsIDsToDelete"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3785
    .local v2, "fromDB":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 3786
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

    .line 3787
    .local v6, "token":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 3789
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3786
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3793
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "token":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3794
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getMessageIdsMarkedToDelete() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v5
.end method

.method public getMobileNetworkType()I
    .locals 7

    .prologue
    .line 8207
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.telephony"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8208
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8209
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8210
    const/4 v1, -0x6

    .line 8219
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    .line 8214
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8215
    .local v4, "token":J
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 8216
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result v1

    .line 8218
    .local v1, "ret":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public getMultiWindowFixedState(I)I
    .locals 6
    .param p1, "paramType"    # I

    .prologue
    .line 2037
    const/4 v1, -0x1

    .line 2038
    .local v1, "result":I
    packed-switch p1, :pswitch_data_0

    .line 2054
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getMultiWindowFixedState() failed - invalid parameter type "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :goto_0
    return v1

    .line 2041
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "multiWindowFixed"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2042
    :catch_0
    move-exception v0

    .line 2043
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMultiWindowFixedState(MULTI_WINDOW_FIXED_STATE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2048
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "multiWindowPercentageSplit"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 2049
    :catch_1
    move-exception v0

    .line 2050
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMultiWindowFixedState(MULTI_WINDOW_PERCENTAGE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2038
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
    .line 6432
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6434
    .local v2, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "powerCustomItems"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 6437
    .local v0, "blob":[B
    if-eqz v0, :cond_0

    .line 6438
    invoke-direct {p0, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deserializeObject([B)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 6443
    .end local v0    # "blob":[B
    :cond_0
    :goto_0
    return-object v2

    .line 6440
    :catch_0
    move-exception v1

    .line 6441
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "getPowerDialogCustomItems() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6374
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "powerCustomItemsState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v1, v3, :cond_0

    .line 6379
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 6374
    goto :goto_0

    .line 6377
    :catch_0
    move-exception v0

    .line 6378
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 6379
    goto :goto_0
.end method

.method public getPowerDialogItems()I
    .locals 6

    .prologue
    .line 2531
    const/4 v1, -0x1

    .line 2534
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogItems"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2540
    :goto_0
    return v1

    .line 2535
    :catch_0
    move-exception v0

    .line 2536
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogItems() failed - persistence problem "

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
    .line 1152
    const/4 v1, 0x2

    .line 1155
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1161
    :goto_0
    return v1

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogOptionMode() failed - persistence problem "

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
    .line 4336
    const/4 v1, 0x1

    .line 4338
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "powerMenuLockedState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4343
    :goto_0
    return v1

    .line 4339
    :catch_0
    move-exception v0

    .line 4340
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerMenuLockedState() failed - persistence problem "

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
    .line 988
    const/4 v1, 0x0

    .line 990
    .local v1, "state":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 995
    :goto_0
    return v1

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskState() failed - persistence problem "

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
    .line 1224
    const/4 v1, 0x0

    .line 1226
    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1253
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getProKioskString() failed - unrecognized type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :goto_0
    return-object v1

    .line 1229
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOn"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_ON_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/4 v1, 0x0

    .line 1234
    goto :goto_0

    .line 1237
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOff"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1238
    :catch_1
    move-exception v0

    .line 1239
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_OFF_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v1, 0x0

    .line 1242
    goto :goto_0

    .line 1245
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOption"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    .line 1247
    :catch_2
    move-exception v0

    .line 1248
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_OPTION_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const/4 v1, 0x0

    .line 1251
    goto :goto_0

    .line 1226
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

    .line 8877
    const/4 v0, 0x0

    .line 8879
    .local v0, "buttons":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "quickPanelQuickConnect"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 8880
    or-int/lit8 v0, v0, 0x2

    .line 8882
    :cond_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "quickPanelSFinder"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 8883
    or-int/lit8 v0, v0, 0x1

    .line 8885
    :cond_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "quickPanelBrightness"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v7, :cond_2

    .line 8886
    or-int/lit8 v0, v0, 0x4

    :cond_2
    move v2, v0

    .line 8893
    :goto_0
    return v2

    .line 8888
    :catch_0
    move-exception v1

    .line 8889
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getQuickPanelButtons() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8890
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "current buttons is : "

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
    .line 8534
    const/4 v1, 0x1

    .line 8536
    .local v1, "mode":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "quickPanelEditMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 8541
    :goto_0
    return v1

    .line 8537
    :catch_0
    move-exception v0

    .line 8538
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getQuickPanelEditMode() failed - persistence problem "

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
    .line 8687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 8689
    .local v5, "items":Ljava/lang/StringBuilder;
    :try_start_0
    iget-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v10, :cond_2

    .line 8690
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "notification_panel_active_app_list"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8691
    .local v9, "qsList":Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 8692
    .local v8, "qsItems":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 8693
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

    .line 8694
    .local v7, "qsItem":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemId(Ljava/lang/String;)I

    move-result v3

    .line 8695
    .local v3, "id":I
    if-eqz v3, :cond_1

    .line 8696
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 8697
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8699
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

    .line 8693
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8703
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

    const-string/jumbo v11, "sysui_qs_tiles"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8704
    .restart local v9    # "qsList":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 8705
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 8706
    .restart local v8    # "qsItems":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 8707
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

    .line 8708
    .restart local v7    # "qsItem":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemId(Ljava/lang/String;)I

    move-result v3

    .line 8709
    .restart local v3    # "id":I
    if-eqz v3, :cond_4

    .line 8710
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 8711
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8713
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

    .line 8707
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8718
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

    .line 8719
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getQuickPanelItems() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8722
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public getQuickPanelItemsUnsupported()Ljava/lang/String;
    .locals 11

    .prologue
    .line 8646
    iget-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v8, :cond_1

    .line 8647
    const-string v5, "Wifi;Location;SilentMode;AutoRotate;Bluetooth;MobileData;PowerSaving;AirplaneMode;DormantMode;TorchLight;UltraPowerSaving;WiFiHotspot;SmartStay;PersonalMode;AllShareCast;Nfc;Sync;MultiWindow;SFinder;"

    .line 8648
    .local v5, "supportingItems":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "notification_panel_active_app_list"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8654
    .local v4, "qsList":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 8656
    .local v7, "unsupportingList":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "supporting items are : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8657
    if-eqz v4, :cond_4

    .line 8660
    iget-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v8, :cond_2

    .line 8661
    new-instance v3, Ljava/util/LinkedList;

    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8662
    .local v3, "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/LinkedList;

    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8668
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

    .line 8669
    .local v2, "itemString":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 8670
    iget-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v8, :cond_3

    .line 8671
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8678
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "itemString":Ljava/lang/String;
    .end local v3    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "supportingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 8679
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getQuickPanelItems() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8680
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 8683
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v8

    .line 8650
    .end local v4    # "qsList":Ljava/lang/String;
    .end local v5    # "supportingItems":Ljava/lang/String;
    .end local v7    # "unsupportingList":Ljava/lang/StringBuilder;
    :cond_1
    const-string v5, "Wifi,Location,SilentMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,DormantMode,Flashlight,UltraPowerSaving,WifiHotspot,SmartStay,PersonalMode,AllShareCast,Nfc,Sync,MultiWindow,SFinder,"

    .line 8651
    .restart local v5    # "supportingItems":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sysui_qs_tiles"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "qsList":Ljava/lang/String;
    goto/16 :goto_0

    .line 8664
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

    .line 8665
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

    .line 8673
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

    .line 8683
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
    .line 3305
    const/4 v1, 0x0

    .line 3307
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3312
    :goto_0
    return-object v1

    .line 3308
    :catch_0
    move-exception v0

    .line 3309
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRecentLongPressActivity() failed - persistence problem "

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
    .line 3358
    const/4 v1, -0x1

    .line 3360
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3365
    :goto_0
    return v1

    .line 3361
    :catch_0
    move-exception v0

    .line 3362
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRecentLongPressMode() failed - persistence problem "

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
    .line 4744
    const/4 v1, 0x0

    .line 4746
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnHomeLongPressState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4751
    :goto_0
    return v1

    .line 4747
    :catch_0
    move-exception v0

    .line 4748
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenOffOnHomeLongPressState() failed - persistence problem "

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
    .line 4782
    const/4 v1, 0x0

    .line 4784
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnStatusBarDoubleTapState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4789
    :goto_0
    return v1

    .line 4785
    :catch_0
    move-exception v0

    .line 4786
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenOffOnStatusBarDoubleTapState() failed - persistence problem "

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
    .line 4571
    const/4 v1, 0x1

    .line 4573
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenWakeupOnPowerState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4577
    :goto_0
    return v1

    .line 4574
    :catch_0
    move-exception v0

    .line 4575
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenWakeupOnPowerState() failed - persistence problem "

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
    .line 1921
    const/4 v2, 0x1

    .line 1923
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1924
    .local v1, "mask":I
    const/16 v3, 0x1f

    if-ne v1, v3, :cond_0

    .line 1925
    const/4 v2, 0x0

    .line 1931
    .end local v1    # "mask":I
    :cond_0
    :goto_0
    return v2

    .line 1927
    :catch_0
    move-exception v0

    .line 1928
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSealedNotificationMessagesState() failed - persistence problem "

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
    .line 2673
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSealedPowerDialogCustomItemsState()Z
    .locals 1

    .prologue
    .line 2598
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getPowerDialogCustomItemsState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarClockState()Z
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarClockState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarIconsState()Z
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarIconsState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarMode()I
    .locals 1

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarMode()I

    move-result v0

    return v0
.end method

.method public getSealedUsbMassStorageState()Z
    .locals 1

    .prologue
    .line 1423
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v0

    return v0
.end method

.method public getSealedUsbNetAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "addressType"    # I

    .prologue
    .line 1479
    invoke-virtual {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSealedUsbNetState()Z
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v0

    return v0
.end method

.method public getSensorDisabled()I
    .locals 6

    .prologue
    .line 3957
    const/4 v1, 0x0

    .line 3959
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sensorDisabled"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3964
    :goto_0
    return v1

    .line 3960
    :catch_0
    move-exception v0

    .line 3961
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSensorDisabled() failed - persistence problem "

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
    .line 6232
    const/4 v1, 0x0

    .line 6234
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeSettingsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6239
    :goto_0
    return v1

    .line 6235
    :catch_0
    move-exception v0

    .line 6236
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSettingsEnabledItems() failed - persistence problem "

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
    .line 2848
    const/4 v1, 0x0

    .line 2850
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "settingsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2855
    :goto_0
    return v1

    .line 2851
    :catch_0
    move-exception v0

    .line 2852
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSettingsHiddenState() failed - persistence problem "

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
    .line 6587
    const/4 v2, 0x1

    .line 6589
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "statusBarClockState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6590
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

    .line 6591
    :cond_0
    const/4 v2, 0x0

    .line 6597
    .end local v1    # "mode":I
    :cond_1
    :goto_0
    return v2

    .line 6593
    :catch_0
    move-exception v0

    .line 6594
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatusBarClockState() failed - persistence problem "

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
    .line 6656
    const/4 v2, 0x1

    .line 6658
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "statusBarIconsState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6659
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

    .line 6660
    :cond_0
    const/4 v2, 0x0

    .line 6666
    .end local v1    # "mode":I
    :cond_1
    :goto_0
    return v2

    .line 6662
    :catch_0
    move-exception v0

    .line 6663
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatusBarIconsState() failed - persistence problem "

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
    .line 6516
    const/4 v1, 0x2

    .line 6518
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6519
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 6520
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 6521
    const/4 v1, 0x3

    .line 6530
    :cond_0
    :goto_0
    return v1

    .line 6523
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 6526
    :catch_0
    move-exception v0

    .line 6527
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarMode() failed - persistence problem "

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
    .line 6721
    const/4 v1, 0x1

    .line 6723
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarNotificationsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6728
    :goto_0
    return v1

    .line 6724
    :catch_0
    move-exception v0

    .line 6725
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarNotificationsState() failed - persistence problem "

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
    .line 4191
    const/4 v1, 0x0

    .line 4193
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4198
    :goto_0
    return-object v1

    .line 4194
    :catch_0
    move-exception v0

    .line 4195
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarText() failed - persistence problem "

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
    .line 6783
    const/4 v1, 0x0

    .line 6785
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextScroll"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6790
    :goto_0
    return v1

    .line 6786
    :catch_0
    move-exception v0

    .line 6787
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextScrollWidth() failed - persistence problem "

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
    .line 4227
    const/4 v1, 0x0

    .line 4229
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4230
    if-nez v1, :cond_0

    .line 4231
    const/16 v1, 0xc

    .line 4237
    :cond_0
    :goto_0
    return v1

    .line 4233
    :catch_0
    move-exception v0

    .line 4234
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextSize() failed - persistence problem "

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
    .line 4211
    const/4 v1, 0x0

    .line 4213
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4218
    :goto_0
    return v1

    .line 4214
    :catch_0
    move-exception v0

    .line 4215
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextStyle() failed - persistence problem "

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
    .line 8954
    const/4 v2, 0x0

    .line 8956
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "dtmf_tone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 8957
    or-int/lit8 v2, v2, 0x1

    .line 8959
    :cond_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sound_effects_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 8960
    or-int/lit8 v2, v2, 0x2

    .line 8962
    :cond_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lockscreen_sounds_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 8963
    or-int/lit8 v2, v2, 0x4

    .line 8965
    :cond_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "haptic_feedback_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 8966
    or-int/lit8 v2, v2, 0x8

    .line 8968
    :cond_3
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sip_key_feedback_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 8969
    or-int/lit8 v2, v2, 0x10

    .line 8971
    :cond_4
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_detachment_notification"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8972
    .local v1, "penStatus":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_5

    .line 8973
    or-int/lit8 v2, v2, 0x20

    .line 8979
    .end local v1    # "penStatus":Ljava/lang/String;
    :cond_5
    :goto_0
    return v2

    .line 8975
    :catch_0
    move-exception v0

    .line 8976
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSystemSoundsEnabledState() failed - persistence problem "

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
    .line 4610
    const/4 v1, 0x1

    .line 4612
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4617
    :goto_0
    return v1

    .line 4613
    :catch_0
    move-exception v0

    .line 4614
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastEnabledState() failed - persistence problem "

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
    .line 5449
    const/4 v1, 0x0

    .line 5451
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5456
    :goto_0
    return v1

    .line 5452
    :catch_0
    move-exception v0

    .line 5453
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravity() failed - persistence problem "

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
    .line 5395
    const/4 v1, 0x0

    .line 5397
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5402
    :goto_0
    return v1

    .line 5398
    :catch_0
    move-exception v0

    .line 5399
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityEnabledState() failed - persistence problem "

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
    .line 5465
    const/4 v1, 0x0

    .line 5467
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityXOffset"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5472
    :goto_0
    return v1

    .line 5468
    :catch_0
    move-exception v0

    .line 5469
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityXOffset() failed - persistence problem "

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
    .line 5481
    const/4 v1, 0x0

    .line 5483
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityYOffset"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5488
    :goto_0
    return v1

    .line 5484
    :catch_0
    move-exception v0

    .line 5485
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityYOffset() failed - persistence problem "

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
    .line 4650
    const/4 v1, 0x0

    .line 4652
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastShowPackageNameState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4657
    :goto_0
    return v1

    .line 4653
    :catch_0
    move-exception v0

    .line 4654
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastShowPackageNameState() failed - persistence problem "

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

    .line 6936
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6940
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 6941
    .local v8, "em":Ljava/lang/Class;
    const-string/jumbo v3, "supportUltraPowerSavingMode"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v8, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 6942
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

    .line 6968
    .end local v8    # "em":Ljava/lang/Class;
    .end local v10    # "supported":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 6945
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 6946
    goto :goto_0

    .line 6950
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "em":Ljava/lang/Class;
    .restart local v10    # "supported":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v6, 0x0

    .line 6952
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v0, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6953
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

    .line 6954
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 6955
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6957
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6958
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 6964
    :cond_2
    if-eqz v6, :cond_3

    .line 6965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1    # "emergencyUri":Landroid/net/Uri;
    :cond_3
    :goto_1
    move-object v0, v9

    .line 6968
    goto :goto_0

    .line 6960
    :catch_1
    move-exception v7

    .line 6961
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "KnoxCustomManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUltraPowerSavingPackages() failed - persistence problem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6962
    const/4 v9, 0x0

    .line 6964
    if-eqz v6, :cond_3

    .line 6965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 6964
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 6965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getUnlockSimOnBootState()Z
    .locals 6

    .prologue
    .line 6276
    const/4 v1, 0x0

    .line 6278
    .local v1, "state":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockOnBoot"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6283
    :goto_0
    return v1

    .line 6279
    :catch_0
    move-exception v0

    .line 6280
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUnlockSimOnBootState() failed - persistence problem "

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
    .line 6325
    const/4 v1, 0x0

    .line 6328
    .local v1, "pin":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockPin"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6333
    :goto_0
    return-object v1

    .line 6329
    :catch_0
    move-exception v0

    .line 6330
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUnlockSimPin() failed - persistence problem "

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
    .line 7031
    const/4 v1, 0x1

    .line 7033
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7034
    const/4 v2, 0x0

    .line 7042
    :goto_0
    return v2

    .line 7037
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbMassStorageStateIndependentSealed"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 7042
    goto :goto_0

    .line 7038
    :catch_0
    move-exception v0

    .line 7039
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbMassStorageState() failed - persistence problem "

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
    .line 7158
    const/4 v1, 0x0

    .line 7160
    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 7176
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getUsbNetAddress() failed - invalid address type "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7177
    const/4 v1, 0x0

    .line 7181
    :goto_0
    return-object v1

    .line 7163
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetSource"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 7164
    :catch_0
    move-exception v0

    .line 7165
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetAddress(sourceAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7170
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetDest"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 7171
    :catch_1
    move-exception v0

    .line 7172
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetAddress(destinationAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7160
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

    .line 7101
    const/4 v1, 0x0

    .line 7104
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 7105
    if-eqz v1, :cond_0

    .line 7106
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

    .line 7107
    const/4 v1, 0x0

    .line 7114
    :cond_0
    :goto_0
    return v1

    .line 7110
    :catch_0
    move-exception v0

    .line 7111
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetState() failed - persistence problem "

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
    .line 2326
    const/4 v1, -0x6

    .line 2329
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_activity_timeout"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2331
    if-lez v1, :cond_0

    .line 2332
    div-int/lit16 v1, v1, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2339
    :cond_0
    :goto_0
    return v1

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserInactivityTimeout() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVibrationIntensity(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 7453
    const/4 v1, 0x0

    .line 7454
    .local v1, "result":I
    packed-switch p1, :pswitch_data_0

    .line 7484
    :goto_0
    return v1

    .line 7457
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

    .line 7459
    :catch_0
    move-exception v0

    .line 7460
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7465
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

    .line 7467
    :catch_1
    move-exception v0

    .line 7468
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7473
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

    .line 7475
    :catch_2
    move-exception v0

    .line 7476
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7454
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
    .line 4379
    const/4 v1, 0x0

    .line 4381
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeButtonRotationState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4386
    :goto_0
    return v1

    .line 4382
    :catch_0
    move-exception v0

    .line 4383
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeButtonRotationState() failed - persistence problem "

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
    .line 4127
    const/4 v1, 0x0

    .line 4129
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeControlStream"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4134
    :goto_0
    return v1

    .line 4130
    :catch_0
    move-exception v0

    .line 4131
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeControlStream() failed - persistence problem "

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
    .line 4420
    const/4 v1, 0x0

    .line 4422
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeKeyAppState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4427
    :goto_0
    return v1

    .line 4423
    :catch_0
    move-exception v0

    .line 4424
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeKeyAppState() failed - persistence problem "

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
    .line 4484
    const/4 v3, 0x0

    .line 4486
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "volumeKeyAppsList"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4488
    .local v2, "listStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4489
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4490
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4491
    .local v6, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v6, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4492
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

    .line 4493
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4497
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 4498
    .end local v2    # "listStr":Ljava/lang/String;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getVolumeKeyAppsList() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v3

    .line 4497
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
    .line 4073
    const/4 v1, 0x1

    .line 4075
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumePanelEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4080
    :goto_0
    return v1

    .line 4076
    :catch_0
    move-exception v0

    .line 4077
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumePanelEnabledState() failed - persistence problem "

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
    .line 4911
    const/4 v1, -0x1

    .line 4913
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchDelay"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4918
    :goto_0
    return v1

    .line 4914
    :catch_0
    move-exception v0

    .line 4915
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchDelay() failed - persistence problem "

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
    .line 4825
    const/4 v1, 0x0

    .line 4827
    .local v1, "state":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4832
    :goto_0
    return v1

    .line 4828
    :catch_0
    move-exception v0

    .line 4829
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchState() failed - persistence problem "

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
    .line 4868
    const/4 v1, -0x1

    .line 4870
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchThreshold"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4875
    :goto_0
    return v1

    .line 4871
    :catch_0
    move-exception v0

    .line 4872
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchThreshold() failed - persistence problem "

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
    .line 4270
    const/4 v1, 0x1

    .line 4272
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiConnectedMessageState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4277
    :goto_0
    return v1

    .line 4273
    :catch_0
    move-exception v0

    .line 4274
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiConnectedMessageState() failed - persistence problem "

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
    .line 7238
    const/4 v2, 0x0

    .line 7239
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7242
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 7243
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 7244
    .local v0, "band":I
    if-nez v0, :cond_1

    .line 7245
    const/4 v2, 0x0

    .line 7255
    .end local v0    # "band":I
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7257
    return v2

    .line 7246
    .restart local v0    # "band":I
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 7247
    const/4 v2, 0x1

    goto :goto_0

    .line 7248
    :cond_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 7249
    const/4 v2, 0x2

    goto :goto_0

    .line 7251
    .end local v0    # "band":I
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 7252
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiFrequencyBand() failed - persistence problem "

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
    .line 8102
    const/4 v1, 0x0

    .line 8103
    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 8105
    .local v2, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 8106
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 8107
    .local v4, "wifiApState":I
    const/16 v6, 0xc

    if-eq v4, v6, :cond_0

    const/16 v6, 0xd

    if-ne v4, v6, :cond_1

    .line 8109
    :cond_0
    const/4 v1, 0x1

    .line 8114
    .end local v4    # "wifiApState":I
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8115
    return v1

    .line 8111
    :catch_0
    move-exception v0

    .line 8112
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiHotspotEnabledState() failed - persistence problem "

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
    .line 9167
    const/4 v1, 0x0

    .line 9168
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9170
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

    .line 9174
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9175
    return v1

    .line 9171
    :catch_0
    move-exception v0

    .line 9172
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getBASturnoffFlag() failed - persistence problem "

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
    .line 800
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 801
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 802
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->asHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 805
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 803
    .restart local p1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 293
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 301
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 297
    return-void
.end method

.method public removeLockScreen()I
    .locals 12

    .prologue
    .line 2357
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    .line 2360
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2362
    .local v6, "token":J
    :try_start_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2363
    .local v3, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2364
    .local v0, "UserID":I
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 2365
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 2367
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lock_pattern_autolock"

    const-wide/16 v10, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2368
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.disabled"

    const-wide/16 v10, 0x1

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2369
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.password_type"

    const-wide/32 v10, 0x10000

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2370
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.password_type_alternate"

    const-wide/16 v10, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2371
    const/4 v4, 0x0

    .line 2375
    .end local v0    # "UserID":I
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .local v4, "result":I
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2377
    return v4

    .line 2372
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .line 2373
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
    .line 6879
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6880
    .local v0, "callingUid":I
    const/4 v8, -0x1

    .line 6884
    .local v8, "result":I
    :try_start_0
    const-string v10, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 6885
    .local v3, "em":Ljava/lang/Class;
    const-string/jumbo v11, "supportUltraPowerSavingMode"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 6886
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

    .line 6887
    const/4 v10, -0x6

    .line 6925
    .end local v3    # "em":Ljava/lang/Class;
    .end local v9    # "supported":Ljava/lang/reflect/Method;
    :goto_0
    return v10

    .line 6889
    :catch_0
    move-exception v2

    .line 6890
    .local v2, "e":Ljava/lang/Exception;
    const/4 v10, -0x6

    goto :goto_0

    .line 6893
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "em":Ljava/lang/Class;
    .restart local v9    # "supported":Ljava/lang/reflect/Method;
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6895
    :cond_1
    const/16 v10, -0x28

    goto :goto_0

    .line 6900
    :cond_2
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 6901
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6902
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 6903
    const/16 v10, -0x32

    goto :goto_0

    .line 6908
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 6909
    .local v4, "emergencyUri":Landroid/net/Uri;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 6910
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6911
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6912
    .local v1, "className":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "package=? and class=?"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    invoke-virtual {v10, v4, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 6915
    .local v7, "resolverResult":I
    if-gtz v7, :cond_5

    .line 6916
    const/16 v10, -0x32

    goto :goto_0

    .line 6919
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

    .line 6920
    const/4 v8, 0x0

    .end local v4    # "emergencyUri":Landroid/net/Uri;
    .end local v5    # "it":Ljava/util/Iterator;
    :goto_1
    move v10, v8

    .line 6925
    goto :goto_0

    .line 6921
    :catch_1
    move-exception v2

    .line 6922
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removePackagesFromUltraPowerSaving() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6923
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public sendDtmfTone(CI)I
    .locals 9
    .param p1, "tone"    # C
    .param p2, "duration"    # I

    .prologue
    const/16 v6, -0x32

    .line 7987
    const/4 v2, -0x6

    .line 7988
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7990
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

    .line 8009
    :cond_1
    :goto_0
    return v6

    .line 7993
    :cond_2
    const/16 v7, 0x64

    if-lt p2, v7, :cond_1

    const/16 v7, 0x1388

    if-gt p2, v7, :cond_1

    .line 7998
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7999
    .local v4, "token":J
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "samsung.intent.action.knoxcustom.SEND_DTMF"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8000
    .local v3, "systemIntent":Landroid/content/Intent;
    const-string/jumbo v6, "tone"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 8001
    const-string/jumbo v6, "duration"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8002
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 8003
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8004
    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v4    # "token":J
    :goto_1
    move v6, v2

    .line 8009
    goto :goto_0

    .line 8005
    :catch_0
    move-exception v1

    .line 8006
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendDtmfTone() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8007
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

    .line 8994
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8995
    .local v0, "callingUid":I
    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_0

    .line 8996
    const/16 v2, -0x2b

    .line 9039
    :goto_0
    return v2

    .line 8999
    :cond_0
    if-ltz p2, :cond_1

    const/16 v8, 0x1f

    if-le p2, v8, :cond_2

    .line 9000
    :cond_1
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAccessibilitySettingsItems() failed - Invalid Settings type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9001
    const/16 v2, -0x32

    goto :goto_0

    .line 9003
    :cond_2
    const/4 v2, -0x6

    .line 9004
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 9007
    .local v4, "token":J
    and-int/lit8 v8, p2, 0x1

    if-ne v8, v3, :cond_3

    .line 9009
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "anykey_mode"

    if-ne p1, v3, :cond_8

    move v8, v3

    :goto_1
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9011
    :cond_3
    and-int/lit8 v8, p2, 0x2

    if-ne v8, v7, :cond_4

    .line 9013
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "voice_input_control_incomming_calls"

    if-ne p1, v3, :cond_9

    move v8, v3

    :goto_2
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9015
    :cond_4
    and-int/lit8 v8, p2, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 9016
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "incall_power_button_behavior"

    if-ne p1, v3, :cond_a

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9019
    :cond_5
    and-int/lit8 v7, p2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    .line 9020
    iget-boolean v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v7, :cond_c

    .line 9021
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "notification_reminder"

    if-ne p1, v3, :cond_b

    move v7, v3

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9026
    :cond_6
    :goto_5
    and-int/lit8 v7, p2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_7

    .line 9027
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "easy_interaction"

    if-ne p1, v3, :cond_e

    :goto_6
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9031
    :cond_7
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9033
    const/4 v2, 0x0

    .line 9038
    :goto_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_8
    move v8, v6

    .line 9009
    goto :goto_1

    :cond_9
    move v8, v6

    .line 9013
    goto :goto_2

    :cond_a
    move v7, v3

    .line 9016
    goto :goto_3

    :cond_b
    move v7, v6

    .line 9021
    goto :goto_4

    .line 9023
    :cond_c
    :try_start_1
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "notification_reminder_selectable"

    if-ne p1, v3, :cond_d

    move v7, v3

    :goto_8
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 9034
    :catch_0
    move-exception v1

    .line 9035
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAccessibilitySettingsItems() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9036
    const/4 v2, -0x1

    goto :goto_7

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d
    move v7, v6

    .line 9023
    goto :goto_8

    :cond_e
    move v3, v6

    .line 9027
    goto :goto_6
.end method

.method public setAdbState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1557
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1560
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1561
    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1562
    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    move v1, v3

    .line 1563
    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1564
    if-eqz v1, :cond_1

    .line 1565
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setAdbState() - eSDK USB debugging disabled"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const/4 v6, -0x7

    .line 1576
    :goto_1
    return v6

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v6

    .line 1562
    goto :goto_0

    .line 1569
    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1570
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1571
    if-eqz p1, :cond_2

    .line 1572
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "persist.sys.auto_confirm"

    const-string v8, "1"

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1574
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_3
    move v3, v6

    .line 1570
    goto :goto_2
.end method

.method public setAirGestureOptionState(IZ)I
    .locals 10
    .param p1, "mode"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 7338
    const/4 v3, -0x6

    .line 7339
    .local v3, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 7342
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7343
    .local v4, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 7344
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v8

    if-nez v8, :cond_0

    move v1, v6

    .line 7345
    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7346
    if-eqz v1, :cond_1

    .line 7347
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setAirGestureOptionState() - eSDK Air Command not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7348
    const/4 v6, -0x7

    .line 7367
    :goto_1
    return v6

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v7

    .line 7344
    goto :goto_0

    .line 7350
    .restart local v1    # "isRestricted":Z
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v6, :cond_3

    .line 7351
    :cond_2
    const/16 v6, -0x32

    goto :goto_1

    .line 7354
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7356
    packed-switch p1, :pswitch_data_0

    .line 7364
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7365
    const/4 v3, 0x0

    :cond_4
    move v6, v3

    .line 7367
    goto :goto_1

    .line 7358
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

    .line 7361
    :pswitch_1
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_hovering"

    if-eqz p2, :cond_6

    :goto_4
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v6, v7

    goto :goto_4

    .line 7356
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

    .line 5538
    if-nez p1, :cond_1

    .line 5569
    :cond_0
    :goto_0
    return v4

    .line 5542
    :cond_1
    const-string v3, ""

    .line 5544
    .local v3, "namespacesSeparated":Ljava/lang/String;
    const-string v6, "*"

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5545
    const-string v3, "*"

    .line 5560
    :cond_2
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5561
    .local v0, "callingUid":I
    const/4 v4, -0x6

    .line 5563
    .local v4, "result":I
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "blockDownloadNamespaces"

    invoke-virtual {v6, v0, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5564
    const/4 v4, 0x0

    goto :goto_0

    .line 5547
    .end local v0    # "callingUid":I
    .end local v4    # "result":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 5548
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5550
    .local v5, "tmp":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5554
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    .line 5555
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5547
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5565
    .end local v2    # "k":I
    .end local v5    # "tmp":Ljava/lang/String;
    .restart local v0    # "callingUid":I
    .restart local v4    # "result":I
    :catch_0
    move-exception v1

    .line 5566
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAppBlockDownloadNamespaces () failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public setAppBlockDownloadState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 5500
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5501
    .local v0, "callingUid":I
    const/4 v1, -0x6

    .line 5503
    .local v1, "downloadStateResult":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "blockDownloadState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5504
    const/4 v1, 0x0

    .line 5509
    :goto_0
    return v1

    .line 5505
    :catch_0
    move-exception v2

    .line 5506
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAppBlockDownloadState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAudioVolume(II)I
    .locals 10
    .param p1, "stream"    # I
    .param p2, "volume"    # I

    .prologue
    .line 2393
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    .line 2394
    .local v2, "callingUid":I
    const/4 v5, -0x6

    .line 2396
    .local v5, "result":I
    if-ltz p1, :cond_4

    .line 2397
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2398
    .local v6, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2399
    .local v1, "am":Landroid/media/AudioManager;
    if-eqz v1, :cond_2

    .line 2401
    const/4 v8, 0x5

    if-gt p1, v8, :cond_3

    .line 2402
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 2403
    .local v4, "maxVolume":I
    move v0, p2

    .line 2404
    .local v0, "actualVolume":I
    if-le v0, v4, :cond_0

    .line 2405
    move v0, v4

    .line 2407
    :cond_0
    if-gez v0, :cond_1

    .line 2408
    const/4 v0, 0x0

    .line 2410
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v1, p1, v0, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2411
    const/4 v5, 0x0

    .line 2419
    .end local v0    # "actualVolume":I
    .end local v4    # "maxVolume":I
    :cond_2
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2424
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v6    # "token":J
    :goto_1
    return v5

    .line 2413
    .restart local v1    # "am":Landroid/media/AudioManager;
    .restart local v6    # "token":J
    :cond_3
    const/16 v5, -0x26

    goto :goto_0

    .line 2415
    :catch_0
    move-exception v3

    .line 2416
    .local v3, "e":Ljava/lang/Exception;
    const/16 v5, -0x26

    goto :goto_0

    .line 2421
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
    .line 1858
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 1859
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1860
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1863
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 1864
    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz p1, :cond_0

    .line 1865
    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    const/4 v2, 0x0

    .line 1880
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1881
    return v2

    .line 1868
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    :cond_0
    const/4 v6, 0x3

    if-gt p2, v6, :cond_1

    const/4 v6, -0x1

    if-ge p2, v6, :cond_2

    .line 1869
    :cond_1
    :try_start_1
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setAutoRotationState() failed - Invalid Rotation"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    const/16 v2, -0x27

    goto :goto_0

    .line 1872
    :cond_2
    invoke-interface {v3, p2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1873
    const/4 v2, 0x0

    goto :goto_0

    .line 1876
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .line 1877
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAutoRotationState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
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

    .line 3044
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .line 3046
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3047
    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 3048
    .local v4, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v4, v9}, Landroid/app/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v10

    if-nez v10, :cond_1

    move v3, v8

    .line 3049
    .local v3, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3050
    if-eqz v3, :cond_2

    .line 3051
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setBackupRestoreState() - eSDK backup is disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    const/4 v5, -0x7

    .line 3083
    :cond_0
    :goto_1
    return v5

    .end local v3    # "isRestricted":Z
    :cond_1
    move v3, v9

    .line 3048
    goto :goto_0

    .line 3054
    .restart local v3    # "isRestricted":Z
    :cond_2
    if-lt p1, v8, :cond_3

    const/4 v10, 0x3

    if-le p1, v10, :cond_4

    .line 3055
    :cond_3
    const/16 v5, -0x32

    goto :goto_1

    .line 3057
    :cond_4
    const/4 v5, 0x0

    .line 3058
    .local v5, "ret":I
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_5

    .line 3059
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3060
    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 3061
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    if-nez v0, :cond_7

    .line 3062
    const-string v10, "KnoxCustomManagerService"

    const-string v11, "Failed to get BackupManager"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    const/4 v5, -0x1

    .line 3072
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3073
    if-nez v5, :cond_0

    .line 3077
    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_5
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_6

    .line 3078
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3079
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "backup_auto_restore"

    if-eqz p2, :cond_8

    :goto_3
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3081
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    move v5, v9

    .line 3083
    goto :goto_1

    .line 3066
    .restart local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_7
    :try_start_0
    invoke-interface {v0, p2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3067
    :catch_0
    move-exception v2

    .line 3068
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setBackupEnabled exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    const/4 v5, -0x1

    goto :goto_2

    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    move v8, v9

    .line 3079
    goto :goto_3
.end method

.method public setBatteryLevelColourItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)I
    .locals 14
    .param p1, "batteryIconItem"    # Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    .prologue
    .line 5304
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    .line 5305
    .local v2, "callingUid":I
    const/4 v9, -0x6

    .line 5306
    .local v9, "result":I
    const/4 v3, 0x0

    .line 5308
    .local v3, "dbBytes":[B
    if-eqz p1, :cond_6

    .line 5309
    :try_start_0
    invoke-virtual {p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->getIcon()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 5310
    const/16 v10, -0x32

    .line 5342
    :goto_0
    return v10

    .line 5312
    :cond_0
    invoke-virtual {p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->getAttributeColourArray()[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    move-result-object v1

    .line 5313
    .local v1, "batteryColoursArray":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    if-eqz v1, :cond_6

    array-length v10, v1

    if-lez v10, :cond_6

    .line 5314
    array-length v10, v1

    const/4 v11, 0x5

    if-le v10, v11, :cond_1

    .line 5315
    const/16 v10, -0x33

    goto :goto_0

    .line 5317
    :cond_1
    const/4 v8, -0x1

    .line 5318
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

    .line 5319
    .local v6, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    if-nez v6, :cond_2

    .line 5320
    const/4 v10, -0x1

    goto :goto_0

    .line 5322
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

    .line 5324
    :cond_3
    const/16 v10, -0x32

    goto :goto_0

    .line 5326
    :cond_4
    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v8

    .line 5318
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5328
    .end local v6    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeKnoxCustomStatusbarIconItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)[B

    move-result-object v3

    .line 5331
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

    .line 5335
    const/4 v10, -0x1

    goto :goto_0

    .line 5337
    :cond_7
    const/4 v9, 0x0

    :goto_2
    move v10, v9

    .line 5342
    goto :goto_0

    .line 5338
    :catch_0
    move-exception v4

    .line 5339
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5340
    const/4 v9, -0x1

    goto :goto_2
.end method

.method public setBluetoothState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1619
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .line 1622
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1623
    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1624
    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 1625
    .local v2, "isRestricted":Z
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1626
    if-eqz v2, :cond_1

    .line 1627
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setBluetoothState() - eSDK bluetooth disabled"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const/4 v4, -0x7

    .line 1645
    :goto_0
    return v4

    .line 1633
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1634
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4

    .line 1635
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1636
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1640
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .local v4, "result":I
    goto :goto_0

    .line 1637
    .end local v4    # "result":I
    :cond_3
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1638
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1

    .line 1642
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

    .line 2868
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2869
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 2870
    .local v2, "result":I
    const v7, 0x20c49b

    if-lt p1, v7, :cond_1

    .line 2887
    :cond_0
    :goto_0
    return v6

    .line 2873
    :cond_1
    if-ltz p1, :cond_0

    .line 2876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2878
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_discoverable_timeout"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2879
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2880
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2881
    const/4 v2, 0x0

    .line 2886
    .end local v3    # "systemIntent":Landroid/content/Intent;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 2887
    goto :goto_0

    .line 2882
    :catch_0
    move-exception v1

    .line 2883
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBluetoothVisibilityTimeout() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
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
    .line 7500
    const/4 v14, 0x0

    .line 7501
    .local v14, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v6

    .line 7502
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 7505
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

    .line 7511
    .local v12, "isDelete":Z
    :goto_0
    if-nez v12, :cond_6

    .line 7512
    invoke-direct/range {p0 .. p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 7513
    if-eqz v14, :cond_4

    move/from16 v17, v14

    .line 7609
    :goto_1
    return v17

    .line 7505
    .end local v12    # "isDelete":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 7518
    .restart local v12    # "isDelete":Z
    :cond_4
    const v17, 0x7fffffff

    move/from16 v0, p4

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    if-gez p4, :cond_6

    .line 7519
    :cond_5
    const/16 v17, -0x32

    goto :goto_1

    .line 7523
    :cond_6
    new-instance v9, Ljava/io/File;

    const-string v17, "/data/b2b"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7524
    .local v9, "dir":Ljava/io/File;
    const/4 v7, 0x0

    .line 7525
    .local v7, "created":Z
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_7

    .line 7526
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 7527
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7530
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_8

    if-eqz v7, :cond_14

    .line 7531
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7533
    new-instance v11, Ljava/io/File;

    const-string v17, "/data/b2b/BootFileInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7534
    .local v11, "fileInfo":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    const-string v17, "/data/b2b/SoundFileInfo.txt"

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7535
    .local v16, "soundInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v17, "/data/b2b/DelayInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7538
    .local v8, "delayInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 7539
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7541
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 7542
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7544
    :cond_a
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 7545
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7548
    :cond_b
    if-eqz v12, :cond_c

    .line 7550
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7551
    const/16 v17, 0x0

    goto :goto_1

    .line 7554
    :cond_c
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 7555
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 7556
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 7558
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7559
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7560
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7568
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7569
    .local v2, "animationFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7570
    .local v13, "loopFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 7571
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

    .line 7572
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

    .line 7573
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

    .line 7575
    .local v5, "bootSoundTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 7576
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7563
    .end local v2    # "animationFileName":Ljava/lang/String;
    .end local v3    # "bootAnimTargetPath":Ljava/lang/String;
    .end local v4    # "bootLoopTargetpath":Ljava/lang/String;
    .end local v5    # "bootSoundTargetPath":Ljava/lang/String;
    .end local v13    # "loopFileName":Ljava/lang/String;
    .end local v15    # "soundFileName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 7565
    .local v10, "e":Ljava/io/IOException;
    const/16 v14, -0x32

    goto :goto_2

    .line 7578
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

    .line 7579
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7581
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 7582
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7584
    :cond_f
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 7585
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7587
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 7588
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7590
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 7591
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7593
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 7594
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7597
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7598
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7599
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7600
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7602
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 7604
    const/4 v14, -0x1

    move/from16 v17, v14

    .line 7605
    goto/16 :goto_1

    .line 7608
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

    .line 7609
    goto/16 :goto_1
.end method

.method public setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I
    .locals 21
    .param p1, "animFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "loopFD"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "soundFD"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "delay"    # I

    .prologue
    .line 7613
    const/4 v14, 0x0

    .line 7614
    .local v14, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v6

    .line 7615
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 7617
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 7619
    const/16 v18, -0x6

    .line 7750
    :goto_0
    return v18

    .line 7622
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const v18, 0x7fffffff

    move/from16 v0, p4

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    if-gez p4, :cond_2

    .line 7623
    :cond_1
    const-string v18, "KnoxCustomManagerService"

    const-string v19, "FileDescriptor is null or Delay is invalid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7624
    const/16 v18, -0x32

    goto :goto_0

    .line 7628
    :cond_2
    new-instance v9, Ljava/io/File;

    const-string v18, "/data/b2b"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7629
    .local v9, "dir":Ljava/io/File;
    const/4 v7, 0x0

    .line 7630
    .local v7, "created":Z
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4

    .line 7631
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 7634
    if-nez v7, :cond_3

    .line 7635
    const-string v18, "KnoxCustomManagerService"

    const-string v19, "/data/b2b directory creating fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7636
    const/16 v18, -0x1

    goto :goto_0

    .line 7639
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7642
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5

    if-eqz v7, :cond_10

    .line 7643
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7645
    new-instance v13, Ljava/io/File;

    const-string v18, "/data/b2b/BootFileInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7646
    .local v13, "fileInfo":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    const-string v18, "/data/b2b/SoundFileInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7647
    .local v15, "soundInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v18, "/data/b2b/DelayInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7651
    .local v8, "delayInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 7652
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7654
    :cond_6
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 7655
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7657
    :cond_7
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 7658
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7661
    :cond_8
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 7662
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7664
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 7665
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7667
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 7668
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7676
    :goto_1
    const-string v2, "/data/b2b/bootanimation.qmg"

    .line 7677
    .local v2, "AnimTargetPath":Ljava/lang/String;
    const-string v3, "/data/b2b/bootloop.qmg"

    .line 7678
    .local v3, "LoopTargetpath":Ljava/lang/String;
    const-string v4, "/data/b2b/bootsound.ogg"

    .line 7680
    .local v4, "SoundTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 7681
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7671
    .end local v2    # "AnimTargetPath":Ljava/lang/String;
    .end local v3    # "LoopTargetpath":Ljava/lang/String;
    .end local v4    # "SoundTargetPath":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 7672
    .local v11, "e":Ljava/io/IOException;
    const-string v18, "KnoxCustomManagerService"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7673
    const/4 v14, -0x1

    goto :goto_1

    .line 7683
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v2    # "AnimTargetPath":Ljava/lang/String;
    .restart local v3    # "LoopTargetpath":Ljava/lang/String;
    .restart local v4    # "SoundTargetPath":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 7684
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7686
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 7687
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7689
    :cond_b
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 7690
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7693
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 7694
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

    .line 7695
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7697
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 7698
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

    .line 7699
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7701
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 7702
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

    .line 7703
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7706
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7707
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7708
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7709
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7712
    .end local v2    # "AnimTargetPath":Ljava/lang/String;
    .end local v3    # "LoopTargetpath":Ljava/lang/String;
    .end local v4    # "SoundTargetPath":Ljava/lang/String;
    .end local v8    # "delayInfo":Ljava/io/File;
    .end local v13    # "fileInfo":Ljava/io/File;
    .end local v15    # "soundInfo":Ljava/io/File;
    :cond_10
    if-nez v14, :cond_14

    .line 7713
    new-instance v5, Ljava/io/File;

    const-string v18, "/data/b2b/bootanimation.qmg"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7714
    .local v5, "animationFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 7716
    new-instance v10, Ljava/io/File;

    const-string v18, "/efs/knoxcustom"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7717
    .local v10, "dirEFS":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_11

    .line 7718
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 7721
    :cond_11
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 7722
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7723
    new-instance v12, Ljava/io/File;

    const-string v18, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7726
    .local v12, "efsFileInfo":Ljava/io/File;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 7727
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 7730
    :cond_12
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 7731
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7738
    :goto_2
    const-string/jumbo v18, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 7739
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7733
    :catch_1
    move-exception v11

    .line 7734
    .local v11, "e":Ljava/lang/Exception;
    const-string v18, "KnoxCustomManagerService"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7735
    const/4 v14, -0x1

    goto :goto_2

    .line 7742
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7743
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7749
    .end local v5    # "animationFile":Ljava/io/File;
    .end local v10    # "dirEFS":Ljava/io/File;
    .end local v12    # "efsFileInfo":Ljava/io/File;
    :cond_14
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v14

    .line 7750
    goto/16 :goto_0
.end method

.method public setBrowserHomepage(Ljava/lang/String;)I
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 5859
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5865
    .local v0, "callingUid":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 5866
    :cond_0
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setBrowserHomepage() failed - blank URL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5867
    const/16 v2, -0x28

    .line 5886
    :goto_0
    return v2

    .line 5869
    :cond_1
    sget-object v6, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    .line 5870
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setBrowserHomepage() failed - invalid URL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5871
    const/16 v2, -0x32

    goto :goto_0

    .line 5874
    :cond_2
    const/4 v2, -0x6

    .line 5876
    .local v2, "result":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5877
    .local v4, "token":J
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5878
    .local v3, "systemIntent":Landroid/content/Intent;
    const-string/jumbo v6, "homepage"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5879
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5880
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5881
    const/4 v2, 0x0

    goto :goto_0

    .line 5882
    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v4    # "token":J
    :catch_0
    move-exception v1

    .line 5883
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBrowserHomepage() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCallScreenDisabledItems(ZI)I
    .locals 11
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 3439
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3442
    .local v0, "callingUid":I
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.telephony"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3443
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3444
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3445
    const/4 v5, -0x6

    .line 3477
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v5

    .line 3450
    :cond_0
    if-ltz p2, :cond_1

    const/16 v8, 0xff

    if-le p2, v8, :cond_2

    .line 3451
    :cond_1
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCallScreenDisabledItems() failed - Invalid Settings type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    const/16 v5, -0x32

    goto :goto_0

    .line 3455
    :cond_2
    const/4 v5, -0x6

    .line 3456
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3460
    .local v6, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "callScreenItems"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3461
    .local v2, "currentElements":I
    if-eqz p1, :cond_4

    .line 3463
    or-int v4, v2, p2

    .line 3468
    .local v4, "newElements":I
    :goto_1
    if-eq v4, v2, :cond_3

    .line 3469
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "callScreenItems"

    invoke-virtual {v8, v0, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3471
    :cond_3
    const/4 v5, 0x0

    .line 3476
    .end local v2    # "currentElements":I
    .end local v4    # "newElements":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3466
    .restart local v2    # "currentElements":I
    :cond_4
    xor-int/lit8 v8, p2, -0x1

    and-int v4, v2, v8

    .restart local v4    # "newElements":I
    goto :goto_1

    .line 3472
    .end local v2    # "currentElements":I
    .end local v4    # "newElements":I
    :catch_0
    move-exception v3

    .line 3473
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCallScreenDisabledItems() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public setChargerConnectionSoundEnabledState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 5899
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5900
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 5902
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "chargerConnectionSoundEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5903
    const/4 v2, 0x0

    .line 5908
    :goto_0
    return v2

    .line 5904
    :catch_0
    move-exception v1

    .line 5905
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setChargerConnectionSoundEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setChargingLEDState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 4023
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 4024
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4026
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4028
    .local v4, "token":J
    if-eqz p1, :cond_0

    .line 4029
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4033
    :goto_0
    const/4 v2, 0x0

    .line 4038
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4039
    return v2

    .line 4031
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4034
    :catch_0
    move-exception v1

    .line 4035
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setChargingLEDState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setCheckCoverPopupState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 3233
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3234
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 3236
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3237
    const/4 v2, 0x0

    .line 3242
    :goto_0
    return v2

    .line 3238
    :catch_0
    move-exception v1

    .line 3239
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCpuPowerSavingState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2211
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2214
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2215
    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "psm_cpu_clock"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2218
    if-eqz p1, :cond_2

    .line 2220
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "powersaving_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2234
    :cond_0
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2236
    return v6

    :cond_1
    move v4, v6

    .line 2215
    goto :goto_0

    .line 2225
    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_display"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2226
    .local v1, "screenSetting":I
    if-nez v1, :cond_0

    .line 2228
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "powersaving_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public setCustomOperatorName(Ljava/lang/String;)I
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3978
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3979
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 3980
    .local v3, "result":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x5a

    if-le v6, v7, :cond_1

    .line 3981
    :cond_0
    const/16 v6, -0x32

    .line 3994
    :goto_0
    return v6

    .line 3983
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3985
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "customOperatorName"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3986
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.action.knoxcustom.OPERATOR_NAME"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3987
    .local v2, "i":Landroid/content/Intent;
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3988
    const/4 v3, 0x0

    .line 3993
    .end local v2    # "i":Landroid/content/Intent;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 3994
    goto :goto_0

    .line 3989
    :catch_0
    move-exception v1

    .line 3990
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCustomOperatorName() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setDeveloperOptionsHidden()I
    .locals 10

    .prologue
    .line 2685
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .line 2687
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2691
    .local v6, "token":J
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.android.settings/shared_prefs/development.xml"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2692
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2694
    :cond_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2695
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v5, "com.android.settings"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2696
    const/4 v4, 0x0

    .line 2707
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "f":Ljava/io/File;
    .local v4, "result":I
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2708
    return v4

    .line 2700
    .end local v4    # "result":I
    .restart local v3    # "f":Ljava/io/File;
    :cond_1
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_0

    .line 2703
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .line 2704
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDeveloperOptionsHidden() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public setDeviceSpeakerEnabledState(Z)I
    .locals 10
    .param p1, "state"    # Z

    .prologue
    .line 5813
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    .line 5814
    .local v1, "callingUid":I
    const/4 v3, -0x1

    .line 5815
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5817
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5818
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    .line 5819
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V

    .line 5823
    :goto_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v7, 0x3e8

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "deviceSpeakerEnabledState"

    invoke-virtual {v6, v7, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5824
    const/4 v3, 0x0

    .line 5828
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5829
    return v3

    .line 5821
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5825
    .end local v0    # "am":Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .line 5826
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDeviceSpeakerEnabledState() failed - persistence problem "

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
    .line 7269
    const/4 v6, -0x6

    .line 7270
    .local v6, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7275
    .local v0, "callingUid":I
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 7276
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 7277
    .local v2, "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 7278
    const-string/jumbo v7, "scanWifiDisplays"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 7279
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7280
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7281
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 7282
    const-string/jumbo v7, "show_dialog_once"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7283
    const-string/jumbo v7, "tag_write_if_success"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7284
    const/high16 v7, 0x14800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7286
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7294
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 7299
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return v6

    .line 7289
    .restart local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string/jumbo v7, "disconnectWifiDisplay"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 7290
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7291
    const-string/jumbo v7, "disableWifiDisplay"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 7292
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7295
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 7296
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDisplayMirroringState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7297
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
    .line 5713
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v5

    .line 5714
    .local v5, "callingUid":I
    const/16 v21, -0x1

    .line 5716
    .local v21, "result":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "ethernet"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 5717
    .local v13, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v13, :cond_4

    .line 5718
    const-string v24, "android.net.ethernet.EthernetDevInfo"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 5719
    .local v4, "c":Ljava/lang/Class;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 5720
    .local v8, "constructor":Ljava/lang/reflect/Constructor;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 5721
    .local v12, "ethernetDevInfoObject":Ljava/lang/Object;
    const-string/jumbo v14, "eth0"

    .line 5722
    .local v14, "interfaceName":Ljava/lang/String;
    const-string/jumbo v7, "dhcp"

    .line 5723
    .local v7, "connType":Ljava/lang/String;
    const/4 v15, 0x0

    .line 5724
    .local v15, "ipAddr":Ljava/lang/String;
    const/16 v18, 0x0

    .line 5725
    .local v18, "netMask":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5726
    .local v10, "dnsAddr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 5728
    .local v9, "dfltRouter":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 5729
    const/16 v21, 0x0

    .line 5744
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetConnectionType"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, p1

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetInterfaceName"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticIpAddr"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticNetMask"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticDnsAddr"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticDfltRouter"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5750
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 5751
    .local v22, "token":J
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setIfName"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5752
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

    .line 5753
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setConnectMode"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5754
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v7, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5755
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setIpAddress"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5756
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5757
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setNetMask"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5758
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v18, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5759
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setDnsAddr"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5760
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v10, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5761
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setRouteAddr"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5762
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v9, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5763
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

    .line 5764
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

    .line 5765
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

    .line 5785
    :goto_2
    return v24

    .line 5730
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

    .line 5731
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

    .line 5733
    :cond_1
    const/16 v24, -0x32

    goto :goto_2

    .line 5735
    :cond_2
    const-string/jumbo v7, "manual"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 5736
    move-object/from16 v15, p2

    .line 5737
    move-object/from16 v18, p3

    .line 5738
    move-object/from16 v10, p4

    .line 5739
    move-object/from16 v9, p5

    .line 5740
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 5742
    :cond_3
    const/16 v24, -0x2b

    goto :goto_2

    .line 5767
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

    .line 5769
    .end local v13    # "ethernetManagerObject":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 5770
    .local v6, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    const/16 v21, -0x6

    .line 5784
    goto :goto_1

    .line 5772
    .end local v6    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v19

    .line 5773
    .local v19, "nsme":Ljava/lang/NoSuchMethodException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5774
    const/16 v21, -0x6

    .line 5784
    goto :goto_1

    .line 5775
    .end local v19    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v16

    .line 5776
    .local v16, "ite":Ljava/lang/reflect/InvocationTargetException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    const/16 v21, -0x6

    .line 5784
    goto/16 :goto_1

    .line 5778
    .end local v16    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v20

    .line 5779
    .local v20, "re":Ljava/lang/RuntimeException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5780
    const/16 v21, -0x6

    .line 5784
    goto/16 :goto_1

    .line 5781
    .end local v20    # "re":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v11

    .line 5782
    .local v11, "e":Ljava/lang/Exception;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() failed - persistence problem "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5783
    const/16 v21, -0x1

    goto/16 :goto_1
.end method

.method public setEthernetState(Z)I
    .locals 19
    .param p1, "state"    # Z

    .prologue
    .line 5611
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v2

    .line 5612
    .local v2, "callingUid":I
    const/4 v11, -0x1

    .line 5615
    .local v11, "result":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "ethernet"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/EthernetManager;

    .line 5616
    .local v8, "mEthernetManager":Landroid/net/EthernetManager;
    if-eqz v8, :cond_0

    .line 5617
    invoke-virtual {v8}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v14

    if-nez v14, :cond_1

    .line 5618
    const/4 v14, -0x6

    .line 5659
    :goto_0
    return v14

    .line 5621
    :cond_0
    const/4 v14, -0x6

    goto :goto_0

    .line 5625
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "ethernet"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 5626
    .local v4, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 5627
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string/jumbo v15, "getEthState"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 5628
    .local v7, "m":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 5629
    .local v5, "ethernetState":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "KNOX_CUSTOM"

    const-string/jumbo v16, "ethernetState"

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v14, v2, v15, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 5630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5631
    .local v12, "token":J
    if-eqz p1, :cond_3

    .line 5632
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 5633
    const/4 v11, 0x0

    .line 5642
    :goto_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5643
    const/4 v11, 0x0

    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :goto_2
    move v14, v11

    .line 5659
    goto :goto_0

    .line 5635
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v5    # "ethernetState":Ljava/lang/Integer;
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    .restart local v12    # "token":J
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string/jumbo v15, "setEthernetState"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 5636
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

    .line 5647
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :catch_0
    move-exception v9

    .line 5648
    .local v9, "nsme":Ljava/lang/NoSuchMethodException;
    const-string v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setEthernetState() Not Supported "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5649
    const/4 v11, -0x6

    .line 5658
    goto :goto_2

    .line 5639
    .end local v9    # "nsme":Ljava/lang/NoSuchMethodException;
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v5    # "ethernetState":Ljava/lang/Integer;
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    .restart local v12    # "token":J
    :cond_3
    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v8, v14}, Landroid/net/EthernetManager;->setUserDisabled(Z)V

    .line 5640
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/net/EthernetManager;->setEthEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 5650
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :catch_1
    move-exception v6

    .line 5651
    .local v6, "ite":Ljava/lang/reflect/InvocationTargetException;
    const-string v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setEthernetState() Not Supported "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5652
    const/4 v11, -0x6

    .line 5658
    goto :goto_2

    .line 5645
    .end local v6    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    :cond_4
    const/4 v11, -0x6

    goto :goto_2

    .line 5653
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    :catch_2
    move-exception v10

    .line 5654
    .local v10, "re":Ljava/lang/RuntimeException;
    const-string v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setEthernetState() Not Supported "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5655
    const/4 v11, -0x6

    .line 5658
    goto/16 :goto_2

    .line 5656
    .end local v10    # "re":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v3

    .line 5657
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setEthernetState() failed - persistence problem "

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
    .line 3683
    .local p2, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3684
    .local v0, "callingUid":I
    const/4 v6, -0x1

    .line 3687
    .local v6, "result":I
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.telephony"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3689
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3690
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3691
    const/4 v10, -0x6

    .line 3739
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v10

    .line 3695
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3697
    :cond_1
    const/16 v10, -0x32

    goto :goto_0

    .line 3700
    :cond_2
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getExcludedMessagesNotifications()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3701
    .local v2, "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    .line 3702
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3705
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

    .line 3706
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3708
    .local v8, "toExclude":Ljava/lang/String;
    const-string v5, "[0-9+]+"

    .line 3709
    .local v5, "regex":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 3710
    :cond_5
    const/16 v10, -0x32

    goto :goto_0

    .line 3712
    :cond_6
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    if-eqz p1, :cond_7

    .line 3713
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3716
    :cond_7
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez p1, :cond_4

    .line 3717
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3722
    .end local v5    # "regex":Ljava/lang/String;
    .end local v8    # "toExclude":Ljava/lang/String;
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0xc8

    if-le v10, v11, :cond_9

    .line 3724
    const/16 v10, -0x32

    goto :goto_0

    .line 3727
    :cond_9
    const-string v7, ""

    .line 3728
    .local v7, "toDB":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3729
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

    .line 3733
    :cond_a
    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v11, 0x3e8

    const-string v12, "KNOX_CUSTOM"

    const-string/jumbo v13, "excludedSMSNumbers"

    invoke-virtual {v10, v11, v12, v13, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3734
    const/4 v6, 0x0

    :goto_3
    move v10, v6

    .line 3739
    goto/16 :goto_0

    .line 3735
    :catch_0
    move-exception v3

    .line 3736
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setExcludedMessagesNotifications() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    const/4 v6, -0x1

    goto :goto_3
.end method

.method public setExitUI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "exitUIPackage"    # Ljava/lang/String;
    .param p2, "exitUIClass"    # Ljava/lang/String;

    .prologue
    .line 1062
    const/4 v2, -0x6

    .line 1063
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1065
    .local v0, "callingUid":I
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 1066
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1067
    :cond_1
    const/16 v3, -0x21

    .line 1078
    :goto_0
    return v3

    .line 1071
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiPackage"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1072
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiClass"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 1078
    goto :goto_0

    .line 1074
    :catch_0
    move-exception v1

    .line 1075
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setExitUI() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setExtendedCallInfoState(Z)I
    .locals 7
    .param p1, "status"    # Z

    .prologue
    .line 2721
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2722
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2723
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2724
    const/4 v3, -0x6

    .line 2736
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 2727
    :cond_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2728
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 2730
    .local v3, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "extendedCallInfoState"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2731
    const/4 v3, 0x0

    goto :goto_0

    .line 2732
    :catch_0
    move-exception v2

    .line 2733
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setFlightModeState(I)I
    .locals 13
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 8471
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 8472
    .local v0, "callingUid":I
    const/4 v5, 0x0

    .line 8473
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 8474
    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 8475
    .local v4, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed()Z

    move-result v10

    if-nez v10, :cond_0

    move v3, v8

    .line 8476
    .local v3, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8477
    if-eqz v3, :cond_1

    .line 8478
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setFlightModeState() - eSDK flight mode disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8479
    const/4 v8, -0x7

    .line 8500
    :goto_1
    return v8

    .end local v3    # "isRestricted":Z
    :cond_0
    move v3, v9

    .line 8475
    goto :goto_0

    .line 8481
    .restart local v3    # "isRestricted":Z
    :cond_1
    if-eq p1, v8, :cond_2

    if-eqz p1, :cond_2

    .line 8482
    const/16 v8, -0x2b

    goto :goto_1

    .line 8485
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 8487
    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    if-ne p1, v8, :cond_3

    move v10, v8

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8490
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8491
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8492
    const-string/jumbo v10, "state"

    if-ne p1, v8, :cond_4

    :goto_3
    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8493
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8494
    const/4 v5, 0x0

    .line 8499
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v5

    .line 8500
    goto :goto_1

    :cond_3
    move v10, v9

    .line 8487
    goto :goto_2

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    move v8, v9

    .line 8492
    goto :goto_3

    .line 8495
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 8496
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setFlightModeState() failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8497
    const/4 v5, -0x1

    goto :goto_4
.end method

.method public setForceAutoStartUpState(I)I
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x1

    .line 9096
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 9097
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 9099
    .local v3, "result":I
    if-eq p1, v5, :cond_0

    if-eqz p1, :cond_0

    .line 9100
    const/16 v5, -0x2b

    .line 9117
    :goto_0
    return v5

    .line 9104
    :cond_0
    const/4 v4, 0x0

    .line 9105
    .local v4, "status":Z
    if-ne p1, v5, :cond_1

    .line 9106
    const/4 v4, 0x1

    .line 9108
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    move-result-object v2

    .line 9109
    .local v2, "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "AutoStartUpState"

    invoke-virtual {v5, v0, v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 9110
    invoke-virtual {v2, v4}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->setKnoxCustomAutoStartUp(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9111
    const/4 v3, 0x0

    .end local v2    # "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :goto_1
    move v5, v3

    .line 9117
    goto :goto_0

    .line 9113
    :catch_0
    move-exception v1

    .line 9114
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setForceAutoStartUpState() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9115
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setGearNotificationState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 4512
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4513
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4515
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "gearNotificationState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4516
    const/4 v2, 0x0

    .line 4521
    :goto_0
    return v2

    .line 4517
    :catch_0
    move-exception v1

    .line 4518
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setGearNotificationState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setGpsState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1799
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1802
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1803
    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 1804
    .local v2, "locationPolicy":Landroid/app/enterprise/LocationPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 1805
    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1806
    if-eqz v1, :cond_1

    .line 1807
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setGpsState() - eSDK GPS state change not allowed"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v3, -0x7

    .line 1815
    :goto_1
    return v3

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v3

    .line 1804
    goto :goto_0

    .line 1811
    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1812
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "gps"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1813
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1
.end method

.method public setHardKeyIntentState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 3387
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 3388
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 3391
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHardKeyIntentState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3392
    const/4 v2, 0x0

    .line 3397
    :goto_0
    return v2

    .line 3393
    :catch_0
    move-exception v1

    .line 3394
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHardKeyIntentState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setHideNotificationMessages(I)I
    .locals 7
    .param p1, "mask"    # I

    .prologue
    .line 3184
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 3186
    .local v0, "callingUid":I
    const/16 v4, 0x1f

    if-gt p1, v4, :cond_0

    if-gez p1, :cond_1

    .line 3187
    :cond_0
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHideNotificationMessages() failed - Invalid Notifications type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    const/16 v3, -0x32

    .line 3202
    :goto_0
    return v3

    .line 3190
    :cond_1
    const/4 v3, -0x6

    .line 3192
    .local v3, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I

    move-result v1

    .line 3194
    .local v1, "currentMask":I
    if-eq p1, v1, :cond_2

    .line 3195
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "notificationMessagesMask"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3197
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 3198
    .end local v1    # "currentMask":I
    :catch_0
    move-exception v2

    .line 3199
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setHomeActivity(Ljava/lang/String;)I
    .locals 6
    .param p1, "homePackage"    # Ljava/lang/String;

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1273
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1275
    .local v2, "result":I
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1276
    const/16 v3, -0x21

    .line 1285
    :goto_0
    return v3

    .line 1279
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHomeActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 1285
    goto :goto_0

    .line 1281
    :catch_0
    move-exception v1

    .line 1282
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHomeActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setInfraredState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    .line 3861
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3862
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 3863
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3865
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "consumer_ir"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ConsumerIrManager;

    .line 3866
    .local v1, "cim":Landroid/hardware/ConsumerIrManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 3867
    :cond_0
    const/4 v3, -0x6

    .line 3876
    .end local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3877
    return v3

    .line 3869
    .restart local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "infraredState"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3870
    const/4 v3, 0x0

    goto :goto_0

    .line 3872
    .end local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :catch_0
    move-exception v2

    .line 3873
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setInfraredState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setInputMethod(Ljava/lang/String;Z)I
    .locals 11
    .param p1, "inputMethodClassName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 2073
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2076
    .local v0, "callingUid":I
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2077
    const/16 v4, -0x30

    .line 2108
    :goto_0
    return v4

    .line 2080
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2082
    .local v6, "token":J
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2083
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "enabled_input_methods"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2084
    .local v3, "methodList":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2085
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2086
    .local v1, "defaultInput":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2087
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2088
    const/4 v4, 0x0

    .line 2106
    .end local v1    # "defaultInput":Ljava/lang/String;
    .end local v3    # "methodList":Ljava/lang/String;
    .local v4, "result":I
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2090
    .end local v4    # "result":I
    .restart local v3    # "methodList":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 2091
    :try_start_1
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "enabled_input_methods"

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

    .line 2093
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2094
    const/4 v4, 0x0

    .restart local v4    # "result":I
    goto :goto_1

    .line 2096
    .end local v4    # "result":I
    :cond_2
    const/16 v4, -0x30

    .restart local v4    # "result":I
    goto :goto_1

    .line 2100
    .end local v3    # "methodList":Ljava/lang/String;
    .end local v4    # "result":I
    :cond_3
    const/16 v4, -0x30

    .restart local v4    # "result":I
    goto :goto_1

    .line 2102
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .line 2103
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInputMethod() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_1
.end method

.method public setInputMethodRestrictionState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 2121
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 2128
    .local v0, "callingUid":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "inputRestrictionState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2129
    const/4 v2, 0x0

    .line 2135
    .local v2, "result":I
    :goto_0
    return v2

    .line 2130
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 2131
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setKeyboardMode(I)I
    .locals 9
    .param p1, "mode"    # I

    .prologue
    .line 5941
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5942
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5943
    .local v4, "token":J
    const/4 v3, -0x1

    .line 5945
    .local v3, "result":I
    if-ltz p1, :cond_0

    const/4 v6, 0x2

    if-le p1, v6, :cond_1

    .line 5947
    :cond_0
    const/16 v6, -0x2b

    .line 5959
    :goto_0
    return v6

    .line 5950
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.app.enterprise.knoxcustom"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5951
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "mode"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5952
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5953
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "keyboardMode"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5954
    const/4 v3, 0x0

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    move v6, v3

    .line 5959
    goto :goto_0

    .line 5955
    :catch_0
    move-exception v1

    .line 5956
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setKeyboardMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5957
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setLTESettingState(Z)I
    .locals 7
    .param p1, "status"    # Z

    .prologue
    .line 4671
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 4672
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 4674
    .local v3, "result":I
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4675
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4676
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4677
    const/4 v4, -0x6

    .line 4695
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v4

    .line 4683
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "LTESettingState"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4689
    const/4 v3, 0x0

    :goto_1
    move v4, v3

    .line 4695
    goto :goto_0

    .line 4690
    :catch_0
    move-exception v2

    .line 4691
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLTESettingState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setLcdBacklightState(Z)I
    .locals 9
    .param p1, "state"    # Z

    .prologue
    .line 5988
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5989
    .local v0, "callingUid":I
    const/4 v3, -0x1

    .line 5991
    .local v3, "result":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5992
    .local v4, "token":J
    sget-boolean v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    .line 5993
    .local v1, "currentState":Z
    if-eq p1, v1, :cond_0

    .line 5994
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setScreenCurtainDirect()V

    .line 5995
    const/4 v3, 0x0

    .line 5996
    sput-boolean p1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    .line 5999
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6000
    const/4 v3, 0x0

    .line 6004
    .end local v1    # "currentState":Z
    .end local v4    # "token":J
    :goto_0
    return v3

    .line 6001
    :catch_0
    move-exception v2

    .line 6002
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setLcdBacklightState() failed - persistence problem "

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
    .line 5012
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v8

    .line 5015
    .local v8, "callingUid":I
    if-ltz p2, :cond_0

    const/16 v23, 0x3ff

    move/from16 v0, p2

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 5017
    :cond_0
    const/16 v19, -0x32

    .line 5137
    :goto_0
    return v19

    .line 5020
    :cond_1
    const/16 v19, -0x6

    .line 5021
    .local v19, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 5025
    .local v24, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "lockScreenItems"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 5026
    .local v9, "currentElements":I
    and-int/lit8 v10, p2, 0xe

    .line 5029
    .local v10, "customElements":I
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x3e0

    move/from16 v20, v0

    .line 5034
    .local v20, "settingsElements":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v26, "lock_screen_show_clock"

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

    .line 5035
    .local v15, "isNewKeyguard":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    .line 5036
    if-eqz v15, :cond_2

    .line 5037
    and-int/lit8 v23, p2, 0x11

    or-int v10, v10, v23

    .line 5045
    :cond_2
    :goto_2
    if-eqz p1, :cond_f

    .line 5047
    or-int v18, v9, v10

    .line 5052
    .local v18, "newElements":I
    :goto_3
    move/from16 v0, v18

    if-eq v0, v9, :cond_3

    .line 5053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "lockScreenItems"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v18

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5058
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 5059
    if-nez v15, :cond_5

    .line 5060
    and-int/lit8 v23, p2, 0x1

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 5061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_screen_show_clock"

    if-eqz p1, :cond_10

    const/16 v23, 0x0

    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5063
    :cond_4
    and-int/lit8 v23, p2, 0x10

    const/16 v26, 0x10

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 5064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_screen_date_and_year"

    if-eqz p1, :cond_11

    const/16 v23, 0x0

    :goto_5
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5068
    :cond_5
    and-int/lit8 v23, p2, 0x20

    const/16 v26, 0x20

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 5069
    new-instance v17, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5071
    .local v17, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v17, :cond_6

    .line 5072
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 5073
    .local v4, "UserID":I
    if-nez p1, :cond_12

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 5074
    const/16 v22, 0x0

    .line 5075
    .local v22, "temp":I
    if-eqz p1, :cond_13

    .line 5076
    const/16 v22, 0x1

    .line 5079
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "ownerInfoHide"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v22

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5082
    .end local v4    # "UserID":I
    .end local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "temp":I
    :cond_6
    and-int/lit8 v23, p2, 0x40

    const/16 v26, 0x40

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 5083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v26, "lock_application_shortcut"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5085
    .local v6, "appShortcut_Info":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 5086
    if-nez v6, :cond_7

    .line 5088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "set_shortcuts_mode"

    if-eqz p1, :cond_14

    const/16 v23, 0x0

    :goto_8
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5106
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

    .line 5107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_additional_info"

    if-eqz p1, :cond_19

    const/16 v23, 0x0

    :goto_a
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 5109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_additional_weather"

    if-eqz p1, :cond_1a

    const/16 v23, 0x0

    :goto_b
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5110
    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setLockscreenWeatherHiddenForLegacy(Z)Z

    .line 5111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_additional_steps"

    if-eqz p1, :cond_1b

    const/16 v23, 0x0

    :goto_c
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5114
    :cond_8
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v23, v0

    const/16 v26, 0x100

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 5115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "unlock_text"

    if-eqz p1, :cond_1c

    const/16 v23, 0x0

    :goto_d
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5117
    :cond_9
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v23, v0

    const/16 v26, 0x200

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 5118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_screen_show_notifications"

    if-eqz p1, :cond_1d

    const/16 v23, 0x0

    :goto_e
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5121
    :cond_a
    if-eqz v20, :cond_b

    .line 5122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v26, "activity"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 5123
    .local v5, "am":Landroid/app/ActivityManager;
    const-string v23, "com.android.settings"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 5126
    .end local v5    # "am":Landroid/app/ActivityManager;
    :cond_b
    if-eqz v10, :cond_c

    .line 5127
    new-instance v12, Landroid/content/Intent;

    const-string v23, "com.sec.android.keyguard.REFRESH"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5128
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

    .line 5131
    .end local v12    # "i":Landroid/content/Intent;
    :cond_c
    const/16 v19, 0x0

    .line 5136
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 5034
    .end local v15    # "isNewKeyguard":Z
    .end local v18    # "newElements":I
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 5040
    .restart local v15    # "isNewKeyguard":Z
    :cond_e
    if-nez v15, :cond_2

    .line 5041
    and-int/lit8 v23, p2, 0x11

    or-int v20, v20, v23

    goto/16 :goto_2

    .line 5050
    :cond_f
    xor-int/lit8 v23, v10, -0x1

    and-int v18, v9, v23

    .restart local v18    # "newElements":I
    goto/16 :goto_3

    .line 5061
    :cond_10
    const/16 v23, 0x1

    goto/16 :goto_4

    .line 5064
    :cond_11
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 5073
    .restart local v4    # "UserID":I
    .restart local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 5078
    .restart local v22    # "temp":I
    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 5088
    .end local v4    # "UserID":I
    .end local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "temp":I
    .restart local v6    # "appShortcut_Info":Ljava/lang/String;
    :cond_14
    const/16 v23, 0x1

    goto/16 :goto_8

    .line 5093
    :cond_15
    :try_start_1
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 5094
    .local v21, "shortcutInfo":[Ljava/lang/String;
    const/16 v26, 0x0

    if-eqz p1, :cond_16

    const-string v23, "0"

    :goto_f
    aput-object v23, v21, v26

    .line 5095
    const/16 v26, 0x2

    if-eqz p1, :cond_17

    const-string v23, "0"

    :goto_10
    aput-object v23, v21, v26

    .line 5096
    const-string v6, ""

    .line 5097
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

    .line 5094
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "info":Ljava/lang/String;
    .end local v16    # "len$":I
    :cond_16
    const-string v23, "1"

    goto :goto_f

    .line 5095
    :cond_17
    const-string v23, "1"

    goto :goto_10

    .line 5098
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v26, "lock_application_shortcut"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 5099
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "shortcutInfo":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 5100
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setLockScreenHiddenItems() failed - persistence problem "

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

    .line 5101
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 5107
    .end local v6    # "appShortcut_Info":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_19
    const/16 v23, 0x1

    goto/16 :goto_a

    .line 5109
    :cond_1a
    const/16 v23, 0x1

    goto/16 :goto_b

    .line 5111
    :cond_1b
    const/16 v23, 0x1

    goto/16 :goto_c

    .line 5115
    :cond_1c
    const/16 v23, 0x1

    goto/16 :goto_d

    .line 5118
    :cond_1d
    const/16 v23, 0x1

    goto/16 :goto_e

    .line 5132
    .end local v9    # "currentElements":I
    .end local v10    # "customElements":I
    .end local v15    # "isNewKeyguard":Z
    .end local v18    # "newElements":I
    .end local v20    # "settingsElements":I
    :catch_1
    move-exception v11

    .line 5133
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setLockScreenHiddenItems() failed - persistence problem "

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

    .line 5134
    const/16 v19, -0x1

    goto/16 :goto_0
.end method

.method public setLockScreenOverrideMode(I)I
    .locals 12
    .param p1, "mode"    # I

    .prologue
    const/4 v8, 0x2

    .line 6101
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6102
    .local v0, "callingUid":I
    const/4 v4, -0x1

    .line 6104
    .local v4, "result":I
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    if-eq p1, v8, :cond_0

    .line 6107
    const/16 v5, -0x2b

    .line 6143
    :goto_0
    return v5

    .line 6110
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6112
    .local v6, "token":J
    :try_start_0
    sput p1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    .line 6113
    if-eq p1, v8, :cond_1

    .line 6115
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 6116
    .local v3, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6118
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6124
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 6126
    :try_start_2
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "keyguard"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 6127
    .local v2, "km":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6128
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6129
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    new-instance v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$4;

    invoke-direct {v8, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$4;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v5, v8, v10, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6137
    .end local v2    # "km":Landroid/app/KeyguardManager;
    :cond_2
    const/4 v4, 0x0

    .line 6142
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .line 6143
    goto :goto_0

    .line 6119
    .restart local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_0
    move-exception v1

    .line 6120
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "KnoxCustomManagerService"

    const-string v8, "Error while trying to lock device: "

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 6138
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_1
    move-exception v1

    .line 6139
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setLockScreenOverrideMode() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6140
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setLockscreenWallpaper(Ljava/lang/String;I)I
    .locals 10
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "SIM"    # I

    .prologue
    const/4 v9, 0x1

    .line 3813
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3814
    .local v0, "callingUid":I
    const/4 v4, -0x6

    .line 3816
    .local v4, "result":I
    if-eq p2, v9, :cond_0

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    .line 3817
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setLockscreenWallpaper: invalid SIM value"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    const/16 v5, -0x32

    .line 3848
    :goto_0
    return v5

    .line 3820
    :cond_0
    if-eqz p1, :cond_1

    .line 3822
    :try_start_0
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3823
    .local v3, "extension":Ljava/lang/String;
    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3824
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setLockscreenWallpaper: file must be a PNG"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3825
    const/16 v5, -0x28

    goto :goto_0

    .line 3827
    .end local v3    # "extension":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3828
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v5, -0x1

    goto :goto_0

    .line 3832
    .end local v2    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_1
    if-ne p2, v9, :cond_2

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    .line 3833
    .local v1, "destSettings":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3835
    .local v6, "token":J
    if-nez p1, :cond_3

    .line 3836
    :try_start_1
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, ""

    invoke-static {v5, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3842
    :goto_2
    const/4 v4, 0x0

    .line 3847
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .line 3848
    goto :goto_0

    .line 3832
    .end local v1    # "destSettings":Ljava/lang/String;
    .end local v6    # "token":J
    :cond_2
    const-string/jumbo v1, "lockscreen_wallpaper_path_2"

    goto :goto_1

    .line 3839
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

    .line 3843
    :catch_1
    move-exception v2

    .line 3844
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setLockscreenWallpaper() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    const/4 v4, -0x1

    goto :goto_3
.end method

.method public setMobileDataRoamingState(Z)I
    .locals 11
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2900
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2902
    .local v0, "callingUid":I
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.telephony"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2904
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2905
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2906
    const/4 v3, -0x6

    .line 2927
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 2910
    :cond_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 2911
    .local v4, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    if-ne v9, v5, :cond_1

    .line 2912
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    .line 2913
    const/16 v3, -0x38

    goto :goto_0

    .line 2917
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2919
    .local v6, "token":J
    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "data_roaming"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2920
    const/4 v3, 0x0

    .line 2925
    .local v3, "result":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3    # "result":I
    :cond_2
    move v5, v8

    .line 2919
    goto :goto_1

    .line 2921
    :catch_0
    move-exception v2

    .line 2922
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMobileDataRoamingState() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    const/4 v3, -0x1

    .restart local v3    # "result":I
    goto :goto_2
.end method

.method public setMobileDataState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1829
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1830
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1831
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1832
    const/4 v3, -0x6

    .line 1843
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 1836
    :cond_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1838
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1839
    .local v4, "token":J
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1840
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1841
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public setMobileNetworkType(I)I
    .locals 13
    .param p1, "type"    # I

    .prologue
    const/16 v9, -0x32

    const/4 v8, 0x0

    .line 8132
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8135
    .local v0, "callingUid":I
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.telephony"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 8136
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 8137
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 8138
    const/4 v8, -0x6

    .line 8189
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v8

    .line 8143
    :cond_1
    const/4 v3, -0x1

    .line 8144
    .local v3, "phoneType":I
    sparse-switch p1, :sswitch_data_0

    move v8, v9

    .line 8173
    goto :goto_0

    .line 8146
    :sswitch_0
    const/4 v3, 0x0

    .line 8176
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 8177
    .local v6, "token":J
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 8178
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    invoke-virtual {v5, v9, v3}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v4

    .line 8180
    .local v4, "ret":Z
    if-eqz v4, :cond_2

    .line 8182
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V

    .line 8184
    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 8185
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 8188
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8189
    if-nez v4, :cond_0

    const/4 v8, -0x1

    goto :goto_0

    .line 8149
    .end local v4    # "ret":Z
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    .end local v6    # "token":J
    :sswitch_1
    const/4 v3, 0x1

    .line 8150
    goto :goto_1

    .line 8152
    :sswitch_2
    const/4 v3, 0x2

    .line 8153
    goto :goto_1

    .line 8155
    :sswitch_3
    const/16 v3, 0x9

    .line 8156
    goto :goto_1

    .line 8159
    :sswitch_4
    const/4 v1, 0x0

    .line 8160
    .local v1, "canUseLteOnly":Z
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLTESettingState()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 8161
    const/4 v1, 0x1

    .line 8166
    :goto_2
    if-eqz v1, :cond_4

    .line 8167
    const/16 v3, 0xb

    goto :goto_1

    .line 8163
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

    .line 8169
    goto :goto_0

    .line 8144
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

    .line 3097
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 3098
    .local v0, "callingUid":I
    if-lt p1, v3, :cond_0

    const/4 v7, 0x3

    if-le p1, v7, :cond_1

    .line 3099
    :cond_0
    const/16 v2, -0x32

    .line 3138
    :goto_0
    return v2

    .line 3102
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3106
    .local v4, "token":J
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_2

    .line 3107
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pick_up"

    if-eqz p2, :cond_4

    move v7, v3

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3109
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pick_up_to_call_out"

    if-eqz p2, :cond_5

    move v7, v3

    :goto_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3111
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_engine"

    if-eqz p2, :cond_6

    move v7, v3

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3113
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "master_motion"

    if-eqz p2, :cond_7

    move v7, v3

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3116
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pan_to_browse_image"

    if-eqz p2, :cond_8

    move v7, v3

    :goto_5
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3119
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_zooming"

    if-eqz p2, :cond_9

    move v7, v3

    :goto_6
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3122
    :cond_2
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_3

    .line 3123
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_merged_mute_pause"

    if-eqz p2, :cond_a

    move v7, v3

    :goto_7
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3125
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "surface_palm_swipe"

    if-eqz p2, :cond_b

    move v7, v3

    :goto_8
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3127
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "surface_palm_touch"

    if-eqz p2, :cond_c

    move v7, v3

    :goto_9
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3129
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "surface_motion_engine"

    if-eqz p2, :cond_d

    :goto_a
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3132
    :cond_3
    const/4 v2, 0x0

    .line 3137
    .local v2, "result":I
    :goto_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "result":I
    :cond_4
    move v7, v6

    .line 3107
    goto/16 :goto_1

    :cond_5
    move v7, v6

    .line 3109
    goto/16 :goto_2

    :cond_6
    move v7, v6

    .line 3111
    goto :goto_3

    :cond_7
    move v7, v6

    .line 3113
    goto :goto_4

    :cond_8
    move v7, v6

    .line 3116
    goto :goto_5

    :cond_9
    move v7, v6

    .line 3119
    goto :goto_6

    :cond_a
    move v7, v6

    .line 3123
    goto :goto_7

    :cond_b
    move v7, v6

    .line 3125
    goto :goto_8

    :cond_c
    move v7, v6

    .line 3127
    goto :goto_9

    :cond_d
    move v3, v6

    .line 3129
    goto :goto_a

    .line 3133
    :catch_0
    move-exception v1

    .line 3134
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMotionControlState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
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

    .line 1982
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1984
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1985
    .local v6, "token":J
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .line 1986
    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v9

    if-nez v9, :cond_1

    move v2, v8

    .line 1987
    .local v2, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1988
    if-eqz v2, :cond_2

    .line 1989
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setMultiWindowFixedState() - eSDK multi window mode not allowed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const/4 v4, -0x7

    .line 2024
    :cond_0
    :goto_1
    return v4

    .line 1986
    .end local v2    # "isRestricted":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1992
    .restart local v2    # "isRestricted":Z
    :cond_2
    const/4 v4, -0x6

    .line 1994
    .local v4, "result":I
    if-eq p1, v8, :cond_3

    if-eqz p1, :cond_3

    .line 1995
    const/16 v4, -0x2b

    goto :goto_1

    .line 1997
    :cond_3
    const/16 v9, 0xa

    if-lt p2, v9, :cond_4

    const/16 v9, 0x5a

    if-le p2, v9, :cond_5

    .line 1998
    :cond_4
    const/16 v4, -0x2a

    goto :goto_1

    .line 2000
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2002
    if-ne p1, v8, :cond_6

    .line 2003
    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "multi_window_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v8, :cond_6

    .line 2004
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setMultiWindowState(Z)I

    move-result v4

    .line 2005
    if-nez v4, :cond_0

    .line 2010
    :cond_6
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "multiWindowFixed"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 2011
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "multiWindowPercentageSplit"

    invoke-virtual {v8, v0, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 2014
    const-string/jumbo v8, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2015
    .local v5, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2017
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2018
    const/4 v4, 0x0

    .line 2023
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2019
    :catch_0
    move-exception v1

    .line 2020
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setMultiWindowFixedState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setMultiWindowState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1946
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 1948
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1949
    .local v4, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 1950
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v8

    if-nez v8, :cond_0

    move v1, v6

    .line 1951
    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1952
    if-eqz v1, :cond_1

    .line 1953
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setMultiWindowState() - eSDK multi window mode not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const/4 v3, -0x7

    .line 1965
    :goto_1
    return v3

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v7

    .line 1950
    goto :goto_0

    .line 1956
    .restart local v1    # "isRestricted":Z
    :cond_1
    const/4 v3, -0x6

    .line 1957
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1958
    if-eqz p1, :cond_2

    .line 1959
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "multi_window_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1963
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1964
    const/4 v3, 0x0

    .line 1965
    goto :goto_1

    .line 1961
    :cond_2
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "multi_window_enabled"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public setPackageVerifierState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 3018
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 3020
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3022
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "package_verifier_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3024
    const/4 v2, 0x0

    .line 3029
    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3030
    return v2

    .line 3022
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3025
    :catch_0
    move-exception v1

    .line 3026
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPackageVerifierState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
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

    .line 1015
    const/4 v4, -0x6

    .line 1016
    .local v4, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1018
    .local v0, "callingUid":I
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "sealedState"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1019
    .local v1, "currentStatus":Z
    if-eqz v1, :cond_4

    .line 1020
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "prokioskPinCode"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1021
    .local v5, "storedPassCode":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v3, v6

    .line 1022
    .local v3, "passCodeOk":Z
    :goto_0
    if-nez v3, :cond_0

    .line 1023
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "sealedPinCode"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1024
    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    .line 1026
    :cond_0
    :goto_1
    if-eqz v3, :cond_3

    .line 1028
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "prokioskPinCode"

    invoke-virtual {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1029
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedPinCode"

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1030
    const/4 v4, 0x0

    .line 1043
    .end local v1    # "currentStatus":Z
    .end local v3    # "passCodeOk":Z
    .end local v5    # "storedPassCode":Ljava/lang/String;
    :goto_2
    return v4

    .restart local v1    # "currentStatus":Z
    .restart local v5    # "storedPassCode":Ljava/lang/String;
    :cond_1
    move v3, v7

    .line 1021
    goto :goto_0

    .restart local v3    # "passCodeOk":Z
    :cond_2
    move v3, v7

    .line 1024
    goto :goto_1

    .line 1032
    :cond_3
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setPassCode() - Invalid passcode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/16 v4, -0x20

    goto :goto_2

    .line 1036
    .end local v3    # "passCodeOk":Z
    .end local v5    # "storedPassCode":Ljava/lang/String;
    :cond_4
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setPassCode() - Not in ProKiosk Mode "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    const/4 v4, -0x2

    goto :goto_2

    .line 1039
    .end local v1    # "currentStatus":Z
    :catch_0
    move-exception v2

    .line 1040
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPassCode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
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
    .line 6396
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6397
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsLocal(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public setPowerDialogCustomItemsState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 6345
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6346
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setPowerDialogItems(I)I
    .locals 7
    .param p1, "value"    # I

    .prologue
    .line 2554
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 2555
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 2557
    .local v2, "result":I
    if-ltz p1, :cond_0

    const/16 v3, 0x3ff

    if-le p1, v3, :cond_1

    .line 2558
    :cond_0
    const/16 v2, -0x32

    .line 2572
    :goto_0
    return v2

    .line 2560
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedPowerDialogItems"

    invoke-virtual {v3, v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 2563
    const/4 v2, 0x0

    goto :goto_0

    .line 2565
    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    .line 2568
    :catch_0
    move-exception v1

    .line 2569
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerDialogItems() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerDialogOptionMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1128
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1131
    .local v2, "result":I
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    if-nez p1, :cond_1

    .line 1132
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    const/4 v2, 0x0

    .line 1141
    :goto_0
    return v2

    .line 1135
    :cond_1
    const/16 v2, -0x2b

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v1

    .line 1138
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerMenuLockedState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 4316
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4317
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4320
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "powerMenuLockedState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4321
    const/4 v2, 0x0

    .line 4326
    :goto_0
    return v2

    .line 4322
    :catch_0
    move-exception v1

    .line 4323
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerMenuLockedState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerSavingMode(I)I
    .locals 14
    .param p1, "mode"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 3513
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 3514
    .local v0, "callingUid":I
    const/4 v6, -0x6

    .line 3516
    .local v6, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3519
    .local v8, "token":J
    if-nez p1, :cond_1

    .line 3521
    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "powersaving_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3525
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "low_power"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3526
    const/4 v6, 0x0

    .line 3579
    :cond_0
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3580
    return v6

    .line 3527
    :cond_1
    if-ne p1, v5, :cond_2

    .line 3529
    :try_start_1
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "powersaving_switch"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3533
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "low_power"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3534
    const/4 v6, 0x0

    goto :goto_0

    .line 3535
    :cond_2
    const/4 v11, 0x2

    if-ne p1, v11, :cond_3

    .line 3537
    :try_start_2
    const-string v10, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3538
    .local v3, "em":Ljava/lang/Class;
    const-string/jumbo v10, "supportUltraPowerSavingMode"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 3539
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

    .line 3540
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3541
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "enabled"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3542
    const-string/jumbo v10, "flag"

    const/16 v11, 0x200

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3543
    const-string/jumbo v10, "skipdialog"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3544
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3545
    const/4 v6, 0x0

    goto :goto_0

    .line 3549
    .end local v3    # "em":Ljava/lang/Class;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "supported":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 3550
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_3
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "setPowerSavingMode() failed - ultra power mode not supported"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3574
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3575
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPowerSavingMode() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 3552
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v11, 0x3

    if-ne p1, v11, :cond_6

    .line 3554
    :try_start_4
    iget-object v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ultra_powersaving_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_4

    .line 3557
    .local v5, "isUltraPowerSavingEnabled":Z
    :goto_1
    if-eqz v5, :cond_5

    .line 3558
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3559
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v10, "enabled"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3560
    const-string/jumbo v10, "flag"

    const/16 v11, 0x200

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3561
    const-string/jumbo v10, "skipdialog"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3562
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3563
    const/4 v6, 0x0

    .line 3564
    goto/16 :goto_0

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "isUltraPowerSavingEnabled":Z
    :cond_4
    move v5, v10

    .line 3554
    goto :goto_1

    .line 3566
    .restart local v5    # "isUltraPowerSavingEnabled":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3572
    .end local v5    # "isUltraPowerSavingEnabled":Z
    :cond_6
    const/16 v6, -0x32

    goto/16 :goto_0

    .line 3568
    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method

.method public setProKioskState(ZLjava/lang/String;)I
    .locals 17
    .param p1, "status"    # Z
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    .line 908
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v2

    .line 911
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 912
    .local v10, "token":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v6

    .line 913
    .local v6, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v5

    .line 915
    .local v5, "isRestricted":Z
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 916
    if-eqz v5, :cond_0

    .line 917
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - eSDK kiosk mode already enabled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v8, -0x7

    .line 978
    :goto_0
    return v8

    .line 921
    :cond_0
    const/4 v8, -0x1

    .line 924
    .local v8, "result":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 925
    .local v3, "currentStatus":Z
    if-eqz p1, :cond_3

    .line 926
    if-eqz v3, :cond_1

    .line 927
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Already in ProKiosk mode - Passcode not changed"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v8, -0x3

    goto :goto_0

    .line 931
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    .line 932
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 933
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "prokioskPinCode"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 934
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedPinCode"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V

    .line 936
    const/4 v8, 0x0

    .line 939
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V

    .line 942
    const-string/jumbo v13, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 943
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

    .line 974
    .end local v3    # "currentStatus":Z
    .end local v12    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 975
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setProKioskState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 945
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "currentStatus":Z
    :cond_2
    :try_start_1
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Invalid passcode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/16 v8, -0x20

    goto/16 :goto_0

    .line 950
    :cond_3
    if-eqz v3, :cond_8

    .line 951
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "prokioskPinCode"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 952
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

    .line 953
    .local v7, "passCodeOk":Z
    :goto_1
    if-nez v7, :cond_4

    .line 954
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedPinCode"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 955
    if-eqz v9, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v7, 0x1

    .line 957
    :cond_4
    :goto_2
    if-eqz v7, :cond_7

    .line 958
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 959
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->stopProKioskMode()V

    .line 960
    const/4 v8, 0x0

    .line 963
    const-string/jumbo v13, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 964
    .restart local v12    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 952
    .end local v7    # "passCodeOk":Z
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 955
    .restart local v7    # "passCodeOk":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 966
    :cond_7
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Invalid passcode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/16 v8, -0x20

    goto/16 :goto_0

    .line 970
    .end local v7    # "passCodeOk":Z
    .end local v9    # "storedPassCode":Ljava/lang/String;
    :cond_8
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Not in ProKiosk Mode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 971
    const/4 v8, -0x2

    goto/16 :goto_0
.end method

.method public setProKioskString(ILjava/lang/String;)I
    .locals 6
    .param p1, "stringType"    # I
    .param p2, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1178
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1180
    .local v2, "result":I
    packed-switch p1, :pswitch_data_0

    .line 1209
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "setProKioskString() failed - unrecognized type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/16 v2, -0x29

    .line 1213
    :goto_0
    return v2

    .line 1183
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOn"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    const/4 v2, 0x0

    goto :goto_0

    .line 1185
    :catch_0
    move-exception v1

    .line 1186
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_ON_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v2, -0x1

    .line 1189
    goto :goto_0

    .line 1192
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOff"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1193
    const/4 v2, 0x0

    goto :goto_0

    .line 1194
    :catch_1
    move-exception v1

    .line 1195
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_OFF_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const/4 v2, -0x1

    .line 1198
    goto :goto_0

    .line 1201
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOption"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1202
    const/4 v2, 0x0

    goto :goto_0

    .line 1203
    :catch_2
    move-exception v1

    .line 1204
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_OPTION_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const/4 v2, -0x1

    .line 1207
    goto :goto_0

    .line 1180
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

    .line 8854
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8855
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 8856
    .local v2, "result":I
    if-ltz p1, :cond_0

    const/4 v7, 0x7

    if-le p1, v7, :cond_1

    .line 8857
    :cond_0
    const/16 v3, -0x32

    .line 8873
    :goto_0
    return v3

    .line 8860
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8861
    .local v4, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "quickPanelQuickConnect"

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_2

    move v7, v3

    :goto_1
    invoke-virtual {v8, v0, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8863
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "quickPanelSFinder"

    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_3

    move v7, v3

    :goto_2
    invoke-virtual {v8, v0, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8865
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "quickPanelBrightness"

    and-int/lit8 v10, p1, 0x4

    if-eqz v10, :cond_4

    :goto_3
    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8867
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8868
    const/4 v2, 0x0

    .end local v4    # "token":J
    :goto_4
    move v3, v2

    .line 8873
    goto :goto_0

    .restart local v4    # "token":J
    :cond_2
    move v7, v6

    .line 8861
    goto :goto_1

    :cond_3
    move v7, v6

    .line 8863
    goto :goto_2

    :cond_4
    move v3, v6

    .line 8865
    goto :goto_3

    .line 8869
    .end local v4    # "token":J
    :catch_0
    move-exception v1

    .line 8870
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setQuickPanelButtons() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8871
    const/4 v2, -0x1

    goto :goto_4
.end method

.method public setQuickPanelEditMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 8512
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8513
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 8514
    .local v2, "result":I
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_0

    .line 8515
    const/16 v3, -0x2b

    .line 8524
    :goto_0
    return v3

    .line 8518
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "quickPanelEditMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8519
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 8524
    goto :goto_0

    .line 8520
    :catch_0
    move-exception v1

    .line 8521
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setQuickPanelEditMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8522
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setQuickPanelItems(Ljava/lang/String;)I
    .locals 10
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    .line 8546
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8547
    .local v0, "callingUid":I
    const/4 v7, -0x6

    .line 8548
    .local v7, "result":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 8549
    .local v3, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 8550
    new-instance v3, Ljava/util/LinkedList;

    .end local v3    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8553
    .restart local v3    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 8554
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

    .line 8555
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 8556
    .local v6, "qpItem":I
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemString(I)Ljava/lang/String;

    move-result-object v4

    .line 8557
    .local v4, "itemString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 8558
    const/16 v8, -0x32

    .line 8562
    .end local v2    # "item":Ljava/lang/String;
    .end local v4    # "itemString":Ljava/lang/String;
    .end local v6    # "qpItem":I
    :goto_1
    return v8

    .line 8560
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

    .line 8561
    goto :goto_0

    .line 8562
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
    .line 3275
    const/4 v2, -0x6

    .line 3276
    .local v2, "result":I
    const/4 v0, 0x0

    .line 3278
    .local v0, "callingUid":I
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceRubensFeaturesPermission()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3283
    :goto_0
    if-eqz p1, :cond_0

    .line 3284
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3285
    const/16 v3, -0x21

    .line 3296
    :goto_1
    return v3

    .line 3279
    :catch_0
    move-exception v1

    .line 3280
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    goto :goto_0

    .line 3290
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3291
    const/4 v2, 0x0

    :goto_2
    move v3, v2

    .line 3296
    goto :goto_1

    .line 3292
    :catch_1
    move-exception v1

    .line 3293
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public setRecentLongPressMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 3327
    const/4 v2, -0x6

    .line 3328
    .local v2, "result":I
    const/4 v0, 0x0

    .line 3330
    .local v0, "callingUid":I
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceRubensFeaturesPermission()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3335
    :goto_0
    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    .line 3336
    :cond_0
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressMode() failed - Invalid Mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    const/16 v3, -0x2b

    .line 3346
    :goto_1
    return v3

    .line 3331
    :catch_0
    move-exception v1

    .line 3332
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    goto :goto_0

    .line 3340
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3341
    const/4 v2, 0x0

    :goto_2
    move v3, v2

    .line 3346
    goto :goto_1

    .line 3342
    :catch_1
    move-exception v1

    .line 3343
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public setScreenOffOnHomeLongPressState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4725
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4726
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4728
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnHomeLongPressState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4729
    const/4 v2, 0x0

    .line 4734
    :goto_0
    return v2

    .line 4730
    :catch_0
    move-exception v1

    .line 4731
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffOnHomeLongPressState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4763
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4764
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4766
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnStatusBarDoubleTapState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4767
    const/4 v2, 0x0

    .line 4772
    :goto_0
    return v2

    .line 4768
    :catch_0
    move-exception v1

    .line 4769
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffOnStatusBarDoubleTapState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenPowerSavingState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2170
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2173
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2174
    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "psm_display"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2177
    if-eqz p1, :cond_2

    .line 2179
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "powersaving_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2193
    :cond_0
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2195
    return v6

    :cond_1
    move v4, v6

    .line 2174
    goto :goto_0

    .line 2184
    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_cpu_clock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2185
    .local v1, "screenSetting":I
    if-nez v1, :cond_0

    .line 2187
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "powersaving_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public setScreenTimeout(I)I
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    const/16 v2, -0x2d

    .line 2249
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2251
    .local v0, "callingUid":I
    const v5, 0x20c49b

    if-lt p1, v5, :cond_1

    .line 2269
    :cond_0
    :goto_0
    return v2

    .line 2254
    :cond_1
    const/4 v5, 0x5

    if-lt p1, v5, :cond_0

    .line 2258
    mul-int/lit16 v4, p1, 0x3e8

    .line 2259
    .local v4, "timeout_val":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2260
    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "screen_off_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2261
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2262
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2263
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2264
    const/4 v2, 0x0

    .local v2, "result":I
    goto :goto_0

    .line 2265
    .end local v2    # "result":I
    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :catch_0
    move-exception v1

    .line 2266
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setScreenTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setScreenWakeupOnPowerState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4551
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4552
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4555
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenWakeupOnPowerState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4556
    const/4 v2, 0x0

    .line 4561
    :goto_0
    return v2

    .line 4557
    :catch_0
    move-exception v1

    .line 4558
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenWakeupOnPowerState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSealedNotificationMessagesState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 1896
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1897
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1900
    .local v2, "result":I
    if-eqz p1, :cond_0

    .line 1901
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setHideNotificationMessages(I)I

    move-result v2

    .line 1909
    :goto_0
    return v2

    .line 1903
    :cond_0
    const/16 v3, 0x1f

    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setHideNotificationMessages(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1905
    :catch_0
    move-exception v1

    .line 1906
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
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
    .line 2660
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 2661
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsLocal(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public setSealedPowerDialogCustomItemsState(Z)I
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2585
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 2586
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setSealedStatusBarClockState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1350
    .local v0, "callingUid":I
    const/4 v1, 0x4

    .line 1351
    .local v1, "mode":I
    if-eqz p1, :cond_0

    .line 1352
    const/4 v1, 0x2

    .line 1354
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarClockModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedStatusBarIconsState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 1379
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1380
    .local v0, "callingUid":I
    const/4 v1, 0x4

    .line 1381
    .local v1, "mode":I
    if-eqz p1, :cond_0

    .line 1382
    const/4 v1, 0x2

    .line 1384
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarIconsModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedStatusBarMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1319
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1320
    .local v0, "callingUid":I
    move v1, p1

    .line 1321
    .local v1, "sealedMode":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1322
    const/4 v1, 0x4

    .line 1324
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedUsbMassStorageState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1411
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
    .line 1466
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1467
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setSealedUsbNetState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1440
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
    .line 3923
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3925
    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/16 v5, 0x3f

    if-le p2, v5, :cond_1

    .line 3927
    :cond_0
    const/16 v4, -0x32

    .line 3948
    :goto_0
    return v4

    .line 3929
    :cond_1
    const/4 v4, -0x6

    .line 3932
    .local v4, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sensorDisabled"

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3933
    .local v1, "currentElements":I
    if-eqz p1, :cond_3

    .line 3935
    or-int v3, v1, p2

    .line 3940
    .local v3, "newElements":I
    :goto_1
    if-eq v3, v1, :cond_2

    .line 3941
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sensorDisabled"

    invoke-virtual {v5, v0, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3943
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 3938
    .end local v3    # "newElements":I
    :cond_3
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_1

    .line 3944
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_0
    move-exception v2

    .line 3945
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSensorDisabled() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public setSettingsEnabledItems(ZI)I
    .locals 10
    .param p1, "state"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 6192
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 6194
    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/4 v5, 0x7

    if-le p2, v5, :cond_1

    .line 6195
    :cond_0
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsEnabledItems() failed - Invalid Settings type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6196
    const/16 v4, -0x32

    .line 6222
    :goto_0
    return v4

    .line 6198
    :cond_1
    const/4 v4, -0x6

    .line 6199
    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6202
    .local v6, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "sealedModeSettingsState"

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6203
    .local v1, "currentElements":I
    if-eqz p1, :cond_3

    .line 6205
    or-int v3, v1, p2

    .line 6210
    .local v3, "newElements":I
    :goto_1
    if-eq v3, v1, :cond_2

    .line 6211
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "sealedModeSettingsState"

    invoke-virtual {v5, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6214
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6216
    :cond_2
    const/4 v4, 0x0

    .line 6221
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 6208
    .restart local v1    # "currentElements":I
    :cond_3
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_1

    .line 6217
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_0
    move-exception v2

    .line 6218
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsEnabledItems() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6219
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setSettingsHiddenState(ZI)I
    .locals 10
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 2808
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2810
    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/16 v5, 0x7ff

    if-le p2, v5, :cond_1

    .line 2811
    :cond_0
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsHiddenState() failed - Invalid Settings type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const/16 v4, -0x32

    .line 2838
    :goto_0
    return v4

    .line 2814
    :cond_1
    const/4 v4, -0x6

    .line 2815
    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2818
    .local v6, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "settingsState"

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2819
    .local v1, "currentElements":I
    if-eqz p1, :cond_3

    .line 2821
    or-int v3, v1, p2

    .line 2826
    .local v3, "newElements":I
    :goto_1
    if-eq v3, v1, :cond_2

    .line 2827
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "settingsState"

    invoke-virtual {v5, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 2830
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2832
    :cond_2
    const/4 v4, 0x0

    .line 2837
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2824
    .restart local v1    # "currentElements":I
    :cond_3
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_1

    .line 2833
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_0
    move-exception v2

    .line 2834
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setShutdownAnimation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .param p1, "shutdownAnimationFilePath"    # Ljava/lang/String;
    .param p2, "shutdownSoundFilePath"    # Ljava/lang/String;

    .prologue
    .line 7764
    const/4 v11, 0x0

    .line 7765
    .local v11, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v5

    .line 7766
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 7769
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

    .line 7774
    .local v10, "isDelete":Z
    :goto_0
    if-nez v10, :cond_3

    .line 7775
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 7776
    if-eqz v11, :cond_3

    move v15, v11

    .line 7840
    :goto_1
    return v15

    .line 7769
    .end local v10    # "isDelete":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 7782
    .restart local v10    # "isDelete":Z
    :cond_3
    new-instance v7, Ljava/io/File;

    const-string v15, "/data/b2b"

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7783
    .local v7, "dir":Ljava/io/File;
    const/4 v6, 0x0

    .line 7784
    .local v6, "created":Z
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    .line 7785
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v6

    .line 7786
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7789
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_5

    if-eqz v6, :cond_c

    .line 7790
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7791
    new-instance v9, Ljava/io/File;

    const-string v15, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7794
    .local v9, "fileInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 7795
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7798
    :cond_6
    if-eqz v10, :cond_7

    .line 7800
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7801
    const/4 v15, 0x0

    goto :goto_1

    .line 7804
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 7805
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7812
    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7813
    .local v4, "animationFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 7814
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

    .line 7815
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

    .line 7817
    .local v12, "shutdownAnimTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 7818
    const/4 v15, -0x1

    goto/16 :goto_1

    .line 7807
    .end local v4    # "animationFileName":Ljava/lang/String;
    .end local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .end local v14    # "soundFileName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 7809
    .local v8, "e":Ljava/io/IOException;
    const/16 v15, -0x32

    goto/16 :goto_1

    .line 7820
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

    .line 7821
    const/4 v15, -0x1

    goto/16 :goto_1

    .line 7823
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 7824
    const/4 v15, -0x1

    goto/16 :goto_1

    .line 7826
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 7827
    const/4 v15, -0x1

    goto/16 :goto_1

    .line 7830
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7831
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7833
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 7835
    const/4 v11, -0x1

    move v15, v11

    .line 7836
    goto/16 :goto_1

    .line 7839
    .end local v4    # "animationFileName":Ljava/lang/String;
    .end local v9    # "fileInfo":Ljava/io/File;
    .end local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .end local v14    # "soundFileName":Ljava/lang/String;
    :cond_c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v11

    .line 7840
    goto/16 :goto_1
.end method

.method public setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "animFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "soundFD"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v10, -0x1

    .line 7844
    const/4 v5, 0x0

    .line 7845
    .local v5, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7846
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 7848
    .local v8, "token":J
    iget-boolean v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    if-eqz v11, :cond_0

    .line 7850
    const/4 v5, -0x6

    .line 7907
    .end local v5    # "result":I
    :goto_0
    return v5

    .line 7853
    .restart local v5    # "result":I
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 7854
    :cond_1
    const/16 v5, -0x32

    goto :goto_0

    .line 7857
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v11, "/data/b2b"

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7858
    .local v2, "dir":Ljava/io/File;
    const/4 v1, 0x0

    .line 7859
    .local v1, "created":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 7860
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 7862
    if-nez v1, :cond_3

    .line 7863
    const-string v11, "KnoxCustomManagerService"

    const-string v12, "/data/b2b directory creating fail"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v10

    .line 7864
    goto :goto_0

    .line 7867
    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7870
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz v1, :cond_b

    .line 7871
    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7872
    new-instance v4, Ljava/io/File;

    const-string v11, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7875
    .local v4, "fileInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 7876
    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7879
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 7880
    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7887
    const-string v6, "/data/b2b/shutdownanimation.qmg"

    .line 7888
    .local v6, "shutdownAnimTargetPath":Ljava/lang/String;
    const-string v7, "/data/b2b/shutdownsound.ogg"

    .line 7890
    .local v7, "shutdownSoundTargetPath":Ljava/lang/String;
    invoke-direct {p0, v4, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    move v5, v10

    .line 7891
    goto :goto_0

    .line 7882
    .end local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 7883
    .local v3, "e":Ljava/io/IOException;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v10

    .line 7884
    goto :goto_0

    .line 7893
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .restart local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v4, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    move v5, v10

    .line 7894
    goto :goto_0

    .line 7896
    :cond_8
    invoke-direct {p0, p1, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    move v5, v10

    .line 7897
    goto :goto_0

    .line 7899
    :cond_9
    invoke-direct {p0, p2, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    move v5, v10

    .line 7900
    goto :goto_0

    .line 7903
    :cond_a
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7904
    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7906
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
    .line 6543
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6544
    .local v0, "callingUid":I
    const/4 v1, 0x3

    .line 6545
    .local v1, "mode":I
    if-eqz p1, :cond_0

    .line 6546
    const/4 v1, 0x2

    .line 6548
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarClockModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setStatusBarIconsState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 6610
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6611
    .local v0, "callingUid":I
    const/4 v1, 0x3

    .line 6612
    .local v1, "mode":I
    if-eqz p1, :cond_0

    .line 6613
    const/4 v1, 0x2

    .line 6615
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarIconsModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setStatusBarMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 6459
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6460
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarModeLocal(II)I

    move-result v1

    return v1
.end method

.method public setStatusBarNotificationsState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 6679
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6680
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 6682
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarNotificationsState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 6683
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enableStatusBarNotificationsLocal(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 6688
    :goto_0
    return v2

    .line 6684
    :catch_0
    move-exception v1

    .line 6685
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6686
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setStatusBarText(Ljava/lang/String;II)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I

    .prologue
    .line 4164
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4165
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 4167
    .local v2, "result":I
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    .line 4169
    const/16 v3, -0x29

    .line 4182
    :goto_0
    return v3

    .line 4171
    :cond_0
    if-eqz p3, :cond_2

    const/4 v3, 0x4

    if-lt p3, v3, :cond_1

    const/16 v3, 0x20

    if-le p3, v3, :cond_2

    .line 4172
    :cond_1
    const/16 v3, -0x32

    goto :goto_0

    .line 4174
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4175
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4176
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4177
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->refreshStatusbar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4178
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 4182
    goto :goto_0

    .line 4179
    :catch_0
    move-exception v1

    .line 4180
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarText() failed - persistence problem "

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
    .line 6752
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6753
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 6755
    .local v2, "result":I
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    .line 6757
    const/16 v3, -0x29

    .line 6774
    :goto_0
    return v3

    .line 6759
    :cond_0
    if-eqz p3, :cond_2

    const/4 v3, 0x4

    if-lt p3, v3, :cond_1

    const/16 v3, 0x20

    if-le p3, v3, :cond_2

    .line 6760
    :cond_1
    const/16 v3, -0x32

    goto :goto_0

    .line 6762
    :cond_2
    if-eqz p4, :cond_4

    const/16 v3, 0xa

    if-lt p4, v3, :cond_3

    const/16 v3, 0x140

    if-le p4, v3, :cond_4

    .line 6763
    :cond_3
    const/16 v3, -0x33

    goto :goto_0

    .line 6765
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6766
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6767
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6768
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextScroll"

    invoke-virtual {v3, v0, v4, v5, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6769
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->refreshStatusbar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6770
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 6774
    goto :goto_0

    .line 6771
    :catch_0
    move-exception v1

    .line 6772
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarTextScrollWidth() failed - persistence problem "

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
    .line 3150
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 3152
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3154
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "stay_on_while_plugged_in"

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3157
    const/4 v2, 0x0

    .line 3162
    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3163
    return v2

    .line 3154
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3158
    :catch_0
    move-exception v1

    .line 3159
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setStayAwakeState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
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

    .line 2438
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .line 2441
    .local v1, "callingUid":I
    const/4 v5, 0x0

    .line 2442
    .local v5, "locale":Ljava/util/Locale;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 2443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2444
    .local v8, "token":J
    if-nez p2, :cond_1

    .line 2445
    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 2449
    .restart local v5    # "locale":Ljava/util/Locale;
    :goto_0
    if-nez v5, :cond_2

    .line 2468
    .end local v8    # "token":J
    :cond_0
    :goto_1
    return v7

    .line 2447
    .restart local v8    # "token":J
    :cond_1
    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 2452
    :cond_2
    const/4 v10, 0x0

    .line 2453
    .local v10, "valid":Z
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v6

    .line 2454
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

    .line 2455
    .local v3, "l":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2456
    const/4 v10, 0x1

    .line 2454
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2459
    .end local v3    # "l":Ljava/util/Locale;
    :cond_4
    if-eqz v10, :cond_0

    .line 2462
    invoke-static {v5}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 2463
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2464
    const/4 v7, 0x0

    .line 2465
    .local v7, "result":I
    goto :goto_1

    .line 2466
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
    .line 2484
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2487
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2488
    .local v8, "token":J
    new-instance v6, Landroid/media/RingtoneManager;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 2489
    .local v6, "rm":Landroid/media/RingtoneManager;
    const/4 v10, 0x1

    if-eq p1, v10, :cond_0

    const/4 v10, 0x2

    if-eq p1, v10, :cond_0

    const/4 v10, 0x4

    if-eq p1, v10, :cond_0

    .line 2492
    const/16 v2, -0x22

    .line 2519
    .local v2, "result":I
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2521
    .end local v2    # "result":I
    :goto_1
    return v2

    .line 2494
    :cond_0
    if-nez p2, :cond_1

    .line 2495
    const/16 v2, -0x23

    goto :goto_1

    .line 2497
    :cond_1
    const/4 v1, 0x0

    .line 2498
    .local v1, "found":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 2499
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, p1, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2500
    const/4 v1, 0x1

    .line 2513
    :cond_2
    if-eqz v1, :cond_5

    .line 2514
    const/4 v2, 0x0

    .restart local v2    # "result":I
    goto :goto_0

    .line 2502
    .end local v2    # "result":I
    :cond_3
    invoke-virtual {v6, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 2503
    invoke-virtual {v6}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 2504
    .local v5, "ringtones":I
    const/4 v7, 0x0

    .local v7, "tone":I
    :goto_2
    if-ge v7, v5, :cond_2

    if-nez v1, :cond_2

    .line 2505
    invoke-virtual {v6, v7}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v3

    .line 2506
    .local v3, "ringtone":Landroid/media/Ringtone;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2507
    invoke-virtual {v6, v7}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 2508
    .local v4, "ringtoneUri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2509
    const/4 v1, 0x1

    .line 2504
    .end local v4    # "ringtoneUri":Landroid/net/Uri;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2516
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

    .line 8907
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8908
    .local v0, "callingUid":I
    if-eq p1, v6, :cond_0

    if-eqz p1, :cond_0

    .line 8909
    const/16 v2, -0x2b

    .line 8944
    :goto_0
    return v2

    .line 8912
    :cond_0
    if-ltz p2, :cond_1

    const/16 v7, 0x3f

    if-le p2, v7, :cond_2

    .line 8913
    :cond_1
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsEnabledState() failed - Invalid System Sounds type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8914
    const/16 v2, -0x32

    goto :goto_0

    .line 8916
    :cond_2
    const/4 v2, -0x6

    .line 8917
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8919
    .local v4, "token":J
    and-int/lit8 v7, p2, 0x1

    if-ne v7, v6, :cond_3

    .line 8920
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "dtmf_tone"

    if-ne p1, v6, :cond_a

    move v7, v6

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8922
    :cond_3
    and-int/lit8 v7, p2, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 8923
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sound_effects_enabled"

    if-ne p1, v6, :cond_b

    move v7, v6

    :goto_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8925
    :cond_4
    and-int/lit8 v7, p2, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 8926
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "lockscreen_sounds_enabled"

    if-ne p1, v6, :cond_c

    move v7, v6

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8928
    :cond_5
    and-int/lit8 v7, p2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    .line 8929
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "haptic_feedback_enabled"

    if-ne p1, v6, :cond_d

    move v7, v6

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8931
    :cond_6
    and-int/lit8 v7, p2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_8

    .line 8932
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sip_key_feedback_sound"

    if-ne p1, v6, :cond_7

    move v3, v6

    :cond_7
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8934
    :cond_8
    and-int/lit8 v3, p2, 0x20

    const/16 v7, 0x20

    if-ne v3, v7, :cond_9

    .line 8935
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pen_detachment_notification"

    if-ne p1, v6, :cond_e

    const-string v3, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_5
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8938
    :cond_9
    const/4 v2, 0x0

    .line 8943
    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_a
    move v7, v3

    .line 8920
    goto :goto_1

    :cond_b
    move v7, v3

    .line 8923
    goto :goto_2

    :cond_c
    move v7, v3

    .line 8926
    goto :goto_3

    :cond_d
    move v7, v3

    .line 8929
    goto :goto_4

    .line 8935
    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    .line 8939
    :catch_0
    move-exception v1

    .line 8940
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsEnabledState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8941
    const/4 v2, -0x1

    goto :goto_6
.end method

.method public setSystemSoundsSilent()I
    .locals 8

    .prologue
    .line 2989
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2991
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2993
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "dtmf_tone"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2994
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "sound_effects_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2995
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "lockscreen_sounds_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2996
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "haptic_feedback_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2997
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "sip_key_feedback_sound"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2998
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "pen_detachment_notification"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2999
    const/4 v2, 0x0

    .line 3004
    .local v2, "result":I
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3005
    return v2

    .line 3000
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 3001
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsSilent() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setToastEnabledState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 4590
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4591
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4594
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4595
    const/4 v2, 0x0

    .line 4600
    :goto_0
    return v2

    .line 4596
    :catch_0
    move-exception v1

    .line 4597
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastGravity(III)I
    .locals 7
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 5417
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5421
    .local v0, "callingUid":I
    const v3, 0x118000ff

    .line 5425
    .local v3, "validGravity":I
    const v4, -0x11800100

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 5427
    const/16 v2, -0x32

    .line 5440
    :goto_0
    return v2

    .line 5430
    :cond_0
    const/4 v2, -0x6

    .line 5432
    .local v2, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravity"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5433
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravityXOffset"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5434
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravityYOffset"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5435
    const/4 v2, 0x0

    goto :goto_0

    .line 5436
    :catch_0
    move-exception v1

    .line 5437
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setToastGravity() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastGravityEnabledState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 5376
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5377
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 5379
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5380
    const/4 v2, 0x0

    .line 5385
    :goto_0
    return v2

    .line 5381
    :catch_0
    move-exception v1

    .line 5382
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastGravityEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5383
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastShowPackageNameState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 4630
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4631
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4634
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastShowPackageNameState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4635
    const/4 v2, 0x0

    .line 4640
    :goto_0
    return v2

    .line 4636
    :catch_0
    move-exception v1

    .line 4637
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastShowPackageNameState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4638
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setTorchOnVolumeButtonsState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 4291
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4293
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4295
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "torchlight_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4297
    const/4 v2, 0x0

    .line 4302
    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4303
    return v2

    .line 4295
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 4298
    :catch_0
    move-exception v1

    .line 4299
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTorchOnVolumeButtonsState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
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

    .line 1591
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1594
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1595
    .local v2, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v4

    .line 1596
    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1597
    if-eqz v1, :cond_1

    .line 1598
    const-string v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUnknownSourcesState() - eSDK non market app not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const/4 v5, -0x7

    .line 1606
    :goto_1
    return v5

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v5

    .line 1595
    goto :goto_0

    .line 1602
    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1603
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "install_non_market_apps"

    if-eqz p1, :cond_2

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1604
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_2
    move v4, v5

    .line 1603
    goto :goto_2
.end method

.method public setUnlockSimOnBootState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 6254
    const/4 v2, -0x6

    .line 6255
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6257
    .local v0, "callingUid":I
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6259
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockOnBoot"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6260
    const/4 v2, 0x0

    .line 6266
    :cond_0
    :goto_0
    return v2

    .line 6261
    :catch_0
    move-exception v1

    .line 6262
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUnlockSimOnBootState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6263
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setUnlockSimPin(Ljava/lang/String;)I
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 6297
    const/4 v2, -0x6

    .line 6298
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6300
    .local v0, "callingUid":I
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6302
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 6303
    const/16 v2, -0x32

    :cond_0
    :goto_0
    move v3, v2

    .line 6315
    :goto_1
    return v3

    .line 6304
    :cond_1
    const-string v3, "[0-9]+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6305
    const/16 v3, -0x32

    goto :goto_1

    .line 6307
    :cond_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockPin"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6308
    const/4 v2, 0x0

    goto :goto_0

    .line 6310
    :catch_0
    move-exception v1

    .line 6311
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUnlockSimOnBoot() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6312
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I
    .locals 10
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "applicationPackage"    # Ljava/lang/String;
    .param p3, "applicationUid"    # I

    .prologue
    .line 1497
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .line 1498
    .local v1, "callingUid":I
    const/4 v3, -0x6

    .line 1500
    .local v3, "result":I
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1501
    const/16 v5, -0x21

    .line 1526
    :goto_0
    return v5

    .line 1503
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1505
    .local v6, "token":J
    if-eqz p1, :cond_2

    .line 1506
    if-lez p3, :cond_1

    .line 1508
    :try_start_0
    const-string/jumbo v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1509
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 1510
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, p1, p2, v5}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 1511
    invoke-interface {v4, p1, p3}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    const/4 v3, 0x0

    .line 1525
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v3

    .line 1526
    goto :goto_0

    .line 1514
    :cond_1
    :try_start_1
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setUsbDeviceDefaultPackage() failed - Application UID not specified "

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/16 v3, -0x2e

    goto :goto_1

    .line 1518
    :cond_2
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setUsbDeviceDefaultPackage() failed - USB device not specified "

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1519
    const/16 v3, -0x2f

    goto :goto_1

    .line 1521
    :catch_0
    move-exception v2

    .line 1522
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUsbDeviceDefaultPackage() failed - permission problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setUsbMassStorageState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 6996
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6997
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
    .line 7128
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7129
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setUsbNetState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 7062
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7063
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

    .line 2290
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2291
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 2292
    .local v2, "result":I
    const v8, 0x20c49b

    if-lt p1, v8, :cond_1

    .line 2313
    :cond_0
    :goto_0
    return v5

    .line 2295
    :cond_1
    if-ltz p1, :cond_0

    .line 2299
    mul-int/lit16 v4, p1, 0x3e8

    .line 2300
    .local v4, "timeout_val":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2301
    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "user_activity_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2304
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2305
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2306
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2307
    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :goto_1
    move v5, v2

    .line 2313
    goto :goto_0

    .line 2308
    :catch_0
    move-exception v1

    .line 2309
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUserInactivityTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setVibrationIntensity(II)I
    .locals 6
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    .line 7415
    const/4 v1, -0x6

    .line 7416
    .local v1, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7418
    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/4 v4, 0x5

    if-le p2, v4, :cond_1

    .line 7419
    :cond_0
    const/16 v4, -0x32

    .line 7440
    :goto_0
    return v4

    .line 7421
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7422
    .local v2, "token":J
    packed-switch p1, :pswitch_data_0

    .line 7436
    const/16 v1, -0x2b

    .line 7439
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 7440
    goto :goto_0

    .line 7424
    :pswitch_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7425
    const/4 v1, 0x0

    .line 7426
    goto :goto_1

    .line 7428
    :pswitch_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7429
    const/4 v1, 0x0

    .line 7430
    goto :goto_1

    .line 7432
    :pswitch_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7433
    const/4 v1, 0x0

    .line 7434
    goto :goto_1

    .line 7422
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
    .line 4358
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4359
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4362
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeButtonRotationState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4363
    const/4 v2, 0x0

    .line 4369
    :goto_0
    return v2

    .line 4364
    :catch_0
    move-exception v1

    .line 4365
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumeButtonRotationState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setVolumeControlStream(I)I
    .locals 7
    .param p1, "streamType"    # I

    .prologue
    .line 4101
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    .line 4102
    .local v1, "callingUid":I
    const/4 v3, -0x6

    .line 4103
    .local v3, "result":I
    if-ltz p1, :cond_1

    const/4 v4, 0x4

    if-gt p1, v4, :cond_1

    .line 4105
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4106
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 4108
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "volumeControlStream"

    invoke-virtual {v4, v1, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4109
    const/4 v3, 0x0

    .line 4118
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return v3

    .line 4110
    .restart local v0    # "am":Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .line 4111
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    const/4 v3, -0x1

    goto :goto_0

    .line 4116
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
    .line 4401
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 4402
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4404
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeKeyAppState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4405
    const/4 v2, 0x0

    .line 4410
    :goto_0
    return v2

    .line 4406
    :catch_0
    move-exception v1

    .line 4407
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumeKeyAppState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
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

    .line 4445
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v2

    .line 4446
    .local v2, "callingUid":I
    const/4 v6, -0x6

    .line 4448
    .local v6, "result":I
    const/4 v1, 0x0

    .line 4449
    .local v1, "appsStr":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 4450
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4474
    :cond_0
    :goto_0
    return v7

    .line 4454
    :cond_1
    const-string v5, "(?i)^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[a-z0-9_]$"

    .line 4455
    .local v5, "regex":Ljava/lang/String;
    const-string v1, ""

    .line 4456
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 4457
    if-lez v4, :cond_2

    .line 4458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4459
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4460
    .local v0, "appName":Ljava/lang/String;
    const-string v8, "(?i)^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[a-z0-9_]$"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4456
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4468
    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "regex":Ljava/lang/String;
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "volumeKeyAppsList"

    invoke-virtual {v7, v2, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4469
    const/4 v6, 0x0

    :goto_2
    move v7, v6

    .line 4474
    goto :goto_0

    .line 4470
    :catch_0
    move-exception v3

    .line 4471
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setVolumeKeyAppsList() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    const/4 v6, -0x1

    goto :goto_2
.end method

.method public setVolumePanelEnabledState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4052
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4053
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4056
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumePanelEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4057
    const/4 v2, 0x0

    .line 4063
    :goto_0
    return v2

    .line 4058
    :catch_0
    move-exception v1

    .line 4059
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumePanelEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchDelay(I)I
    .locals 6
    .param p1, "delay"    # I

    .prologue
    .line 4888
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4889
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4891
    .local v2, "result":I
    if-lez p1, :cond_0

    const/16 v3, 0x258

    if-gt p1, v3, :cond_0

    .line 4892
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchDelay"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4893
    const/4 v2, 0x0

    .line 4901
    :goto_0
    return v2

    .line 4895
    :cond_0
    const/16 v2, -0x32

    goto :goto_0

    .line 4897
    :catch_0
    move-exception v1

    .line 4898
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchDelay() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4805
    const/4 v2, -0x6

    .line 4806
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4809
    .local v0, "callingUid":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4810
    const/4 v2, 0x0

    .line 4815
    :goto_0
    return v2

    .line 4811
    :catch_0
    move-exception v1

    .line 4812
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4813
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchThreshold(I)I
    .locals 6
    .param p1, "threshold"    # I

    .prologue
    .line 4845
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4846
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4848
    .local v2, "result":I
    if-gez p1, :cond_0

    const/16 v3, -0xc8

    if-lt p1, v3, :cond_0

    .line 4849
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchThreshold"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4850
    const/4 v2, 0x0

    .line 4858
    :goto_0
    return v2

    .line 4852
    :cond_0
    const/16 v2, -0x32

    goto :goto_0

    .line 4854
    :catch_0
    move-exception v1

    .line 4855
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchThreshold() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiConnectedMessageState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 4250
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4251
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4254
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiConnectedMessageState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4255
    const/4 v2, 0x0

    .line 4260
    :goto_0
    return v2

    .line 4256
    :catch_0
    move-exception v1

    .line 4257
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiConnectedMessageState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiConnectionMonitorState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 2940
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2942
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2944
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_watchdog_poor_network_test_enabled"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2946
    const/4 v2, 0x0

    .line 2951
    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2952
    return v2

    .line 2944
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2947
    :catch_0
    move-exception v1

    .line 2948
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWifiConnectionMonitorState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
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

    .line 7197
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 7198
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 7200
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7203
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 7204
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez p1, :cond_0

    .line 7205
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7206
    const/4 v2, 0x0

    .line 7225
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7226
    return v2

    .line 7207
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    if-ne p1, v8, :cond_1

    .line 7209
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 7210
    const/4 v2, 0x0

    goto :goto_0

    .line 7214
    :cond_1
    if-ne p1, v9, :cond_2

    .line 7215
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7216
    const/4 v2, 0x0

    goto :goto_0

    .line 7218
    :cond_2
    const/16 v2, -0x32

    goto :goto_0

    .line 7220
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 7221
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPowerSavingMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7222
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiHotspotEnabledState(I)I
    .locals 18
    .param p1, "state"    # I

    .prologue
    .line 8022
    const/4 v6, -0x6

    .line 8023
    .local v6, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    .line 8026
    .local v2, "callingUid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.telephony"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 8027
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "connectivity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 8028
    .local v3, "cm":Landroid/net/ConnectivityManager;
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 8029
    const/4 v15, -0x6

    .line 8090
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v15

    .line 8034
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 8035
    .local v7, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 8036
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 8037
    const/16 v15, -0x38

    goto :goto_0

    .line 8041
    :cond_1
    const/4 v15, 0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_2

    if-eqz p1, :cond_2

    .line 8042
    const/16 v15, -0x2b

    goto :goto_0

    .line 8044
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 8046
    .local v8, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 8047
    .local v14, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 8048
    .local v11, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v10

    .line 8049
    .local v10, "wifiApState":I
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_7

    .line 8050
    const/16 v15, 0xc

    if-eq v10, v15, :cond_3

    const/16 v15, 0xd

    if-ne v10, v15, :cond_5

    .line 8053
    :cond_3
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 8054
    .local v5, "msg":Landroid/os/Message;
    const/16 v15, 0xc5

    iput v15, v5, Landroid/os/Message;->what:I

    .line 8055
    iput-object v11, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8056
    invoke-virtual {v14, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8084
    .end local v5    # "msg":Landroid/os/Message;
    :cond_4
    :goto_1
    const/4 v6, 0x0

    .line 8089
    .end local v10    # "wifiApState":I
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "wm":Landroid/net/wifi/WifiManager;
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v6

    .line 8090
    goto :goto_0

    .line 8058
    .restart local v10    # "wifiApState":I
    .restart local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "wm":Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v15, 0x1

    :try_start_1
    invoke-virtual {v14, v11, v15}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 8060
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v13

    .line 8061
    .local v13, "wifiState":I
    const/4 v15, 0x2

    if-eq v13, v15, :cond_6

    const/4 v15, 0x3

    if-ne v13, v15, :cond_4

    .line 8063
    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 8064
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_saved_state"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 8085
    .end local v10    # "wifiApState":I
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "wifiState":I
    .end local v14    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v4

    .line 8086
    .local v4, "e":Ljava/lang/Exception;
    const-string v15, "KnoxCustomManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setWifiHotspotEnabledState() failed - persistence problem "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8087
    const/4 v6, -0x1

    goto :goto_2

    .line 8068
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v10    # "wifiApState":I
    .restart local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "wm":Landroid/net/wifi/WifiManager;
    :cond_7
    const/16 v15, 0xc

    if-eq v10, v15, :cond_8

    const/16 v15, 0xd

    if-ne v10, v15, :cond_4

    .line 8070
    :cond_8
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_2
    invoke-virtual/range {v14 .. v16}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8072
    const/4 v12, 0x0

    .line 8074
    .local v12, "wifiSavedState":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_saved_state"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v12

    .line 8078
    :goto_3
    const/4 v15, 0x1

    if-ne v12, v15, :cond_4

    .line 8079
    const/4 v15, 0x1

    :try_start_4
    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 8080
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_saved_state"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 8075
    :catch_1
    move-exception v15

    goto :goto_3
.end method

.method public setWifiNetworkNotificationState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 2965
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2967
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2969
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_networks_available_notification_on"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2971
    const/4 v2, 0x0

    .line 2976
    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2977
    return v2

    .line 2969
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2972
    :catch_0
    move-exception v1

    .line 2973
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWifiNetworkNotificationState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
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

    .line 1658
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1661
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1662
    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1663
    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v8}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1664
    .local v2, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1665
    if-eqz v2, :cond_1

    .line 1666
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - eSDK wifi disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const/4 v4, -0x7

    .line 1713
    :goto_1
    return v4

    .end local v2    # "isRestricted":Z
    :cond_0
    move v2, v8

    .line 1663
    goto :goto_0

    .line 1670
    .restart local v2    # "isRestricted":Z
    :cond_1
    const/4 v4, -0x6

    .line 1672
    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1674
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 1675
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    .line 1676
    if-eqz v5, :cond_6

    .line 1677
    if-eqz p1, :cond_5

    .line 1679
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 1680
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - ssid == null && password != null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const/16 v4, -0x28

    .line 1704
    :goto_2
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "WifiState"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1683
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    if-eqz p2, :cond_3

    .line 1684
    :try_start_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1685
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, p2, p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    :cond_3
    :goto_4
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1696
    const/4 v4, 0x0

    goto :goto_2

    .line 1687
    :cond_4
    const/4 v8, 0x1

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    .line 1688
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    .line 1689
    sput-object p2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    .line 1690
    const/4 v8, 0x0

    sput-object v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    .line 1691
    sput-object p3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1708
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 1709
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const/4 v4, -0x1

    goto :goto_3

    .line 1700
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1701
    const/4 v4, 0x0

    goto :goto_2

    .line 1706
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
    .line 1726
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v4

    .line 1729
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1730
    .local v10, "token":J
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 1731
    .local v8, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v6, 0x1

    .line 1732
    .local v6, "isRestricted":Z
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1733
    if-eqz v6, :cond_1

    .line 1734
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setWifiState() - eSDK wifi disabled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/4 v9, -0x7

    .line 1786
    :goto_1
    return v9

    .line 1731
    .end local v6    # "isRestricted":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1738
    .restart local v6    # "isRestricted":Z
    :cond_1
    const/4 v9, -0x6

    .line 1740
    .local v9, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1742
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 1743
    .local v12, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v13, 0x0

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    if-eqz v12, :cond_8

    .line 1745
    if-eqz p1, :cond_7

    .line 1748
    const/4 v7, 0x0

    .line 1749
    .local v7, "ok":Z
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 1750
    const/4 v7, 0x1

    .line 1754
    :cond_2
    :goto_2
    if-nez v7, :cond_4

    .line 1755
    const/16 v9, -0x28

    .line 1784
    .end local v7    # "ok":Z
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1751
    .restart local v7    # "ok":Z
    .restart local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 1752
    const/4 v7, 0x1

    goto :goto_2

    .line 1757
    :cond_4
    :try_start_1
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1758
    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    .line 1759
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    :cond_5
    :goto_4
    const/4 v9, 0x0

    goto :goto_3

    .line 1762
    :cond_6
    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    .line 1763
    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    .line 1764
    sput-object p2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    .line 1765
    sput-object p3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    .line 1766
    sput-object p4, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    .line 1768
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1780
    .end local v7    # "ok":Z
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v5

    .line 1781
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setWifiState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/4 v9, -0x1

    goto :goto_3

    .line 1774
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_7
    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1775
    const/4 v9, 0x0

    goto :goto_3

    .line 1778
    :cond_8
    const/4 v9, -0x1

    goto :goto_3
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V

    .line 289
    return-void
.end method
