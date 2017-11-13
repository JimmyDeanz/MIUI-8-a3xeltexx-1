.class public final Lcom/samsung/android/desktop/DesktopManager;
.super Ljava/lang/Object;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktop/DesktopManager$3;,
        Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;,
        Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;,
        Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;,
        Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;
    }
.end annotation


# static fields
.field private static final BACKUP_FILE_NAME:Ljava/lang/String; = "backupinfo"

.field static final HEADSUP_NOTI_ID:I

.field public static final LAUNCHER_APPNAME:Ljava/lang/String; = "DesktopLauncher"

.field public static final LAUNCHER_CLSNAME:Ljava/lang/String; = "com.android.launcher2.Launcher"

.field public static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final MSG_SAVE_CURRENT_HOME_STATE:I = 0x3e9

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CLASS_NAME:Ljava/lang/String; = "class-name"

.field private static final TAG_PACKAGE_NAME:Ljava/lang/String; = "package-name"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesktopDockObserver:Landroid/os/FileObserver;

.field private mDesktopLauncherComponent:Landroid/content/ComponentName;

.field private mDesktopState:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

.field private mEventListners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasExternalDisplay:Z

.field private mIsBTKeyboardConnected:Z

.field private mIsBTMouseConnected:Z

.field private mIsDeskDockConnected:Z

.field private mIsInstalledLauncher:Z

.field private mIsUSBKeyboardConnected:Z

.field private mIsUSBMouseConnected:Z

.field private final mLock:Ljava/lang/Object;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mService:Lcom/samsung/android/desktop/IDesktop;

.field private mSupportMultiDensityAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSystemResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/desktop/DesktopManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    const-class v0, Lcom/samsung/android/desktop/DesktopManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/samsung/android/desktop/DesktopManager;->HEADSUP_NOTI_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/desktop/IDesktop;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/desktop/IDesktop;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.desktoplauncher"

    const-string v6, "com.android.launcher2.Launcher"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mLock:Ljava/lang/Object;

    iput-object v8, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    iput-object v8, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    iput-boolean v7, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z

    iput-boolean v7, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsInstalledLauncher:Z

    iput-boolean v7, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsBTMouseConnected:Z

    iput-boolean v7, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsBTKeyboardConnected:Z

    iput-boolean v7, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsUSBMouseConnected:Z

    iput-boolean v7, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsUSBKeyboardConnected:Z

    iput-boolean v7, p0, Lcom/samsung/android/desktop/DesktopManager;->mHasExternalDisplay:Z

    new-instance v4, Lcom/samsung/android/desktop/DesktopManager$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/desktop/DesktopManager$2;-><init>(Lcom/samsung/android/desktop/DesktopManager;)V

    iput-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->NONE:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    iput-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopState:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mEventListners:Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mSystemResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mSystemResources:Landroid/content/res/Resources;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "System Resources is not ready."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v3, Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;

    invoke-direct {v3, p0, v8}, Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;-><init>(Lcom/samsung/android/desktop/DesktopManager;Lcom/samsung/android/desktop/DesktopManager$1;)V

    .local v3, "packageStateReceiver":Lcom/samsung/android/desktop/DesktopManager$PackageStateReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, "filterPackage":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;

    invoke-direct {v0, p0, v8}, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;-><init>(Lcom/samsung/android/desktop/DesktopManager;Lcom/samsung/android/desktop/DesktopManager$1;)V

    .local v0, "deviceConnectReceiver":Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "filterDevice":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->checkDesktopLauncher()V

    iget-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mPowerManager:Landroid/os/PowerManager;

    new-instance v4, Lcom/samsung/android/desktop/DesktopManager$1;

    const-string v5, "/dev/"

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/desktop/DesktopManager$1;-><init>(Lcom/samsung/android/desktop/DesktopManager;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopDockObserver:Landroid/os/FileObserver;

    iget-object v4, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopDockObserver:Landroid/os/FileObserver;

    invoke-virtual {v4}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/android/desktop/DesktopManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/desktop/DesktopManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsBTKeyboardConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/desktop/DesktopManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/desktop/DesktopManager;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/desktop/DesktopManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/desktop/DesktopManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/desktop/DesktopManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/desktop/DesktopManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->checkDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/desktop/DesktopManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/desktop/DesktopManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->updateKnoxDesktopModeState()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/desktop/DesktopManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/desktop/DesktopManager;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsInstalledLauncher:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/desktop/DesktopManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/desktop/DesktopManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsInstalledLauncher:Z

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/android/desktop/DesktopManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/desktop/DesktopManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsUSBMouseConnected:Z

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/android/desktop/DesktopManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/desktop/DesktopManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsUSBKeyboardConnected:Z

    return p1
.end method

.method static synthetic access$902(Lcom/samsung/android/desktop/DesktopManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/desktop/DesktopManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsBTMouseConnected:Z

    return p1
.end method

.method private checkDesktopLauncher()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsInstalledLauncher:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "com.sec.android.app.desktoplauncher"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsInstalledLauncher:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private checkDevice()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    invoke-interface {v2}, Lcom/samsung/android/desktop/IDesktop;->checkDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private disableKnoxDesktopMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.KNOXDESKTOP_DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KNOXDESKTOP_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.KNOXDESKTOP_CHANGED_BY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desktop_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private enableKnoxDesktopMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.KNOXDESKTOP_DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KNOXDESKTOP_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.KNOXDESKTOP_CHANGED_BY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desktop_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private getButton()B
    .locals 3

    .prologue
    const/4 v1, -0x1

    .local v1, "ret":B
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    invoke-interface {v2}, Lcom/samsung/android/desktop/IDesktop;->readData()B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private hasEventListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .prologue
    const/4 v2, 0x0

    .local v2, "ret":Z
    iget-object v3, p0, Lcom/samsung/android/desktop/DesktopManager;->mEventListners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .local v0, "cb":Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "cb":Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;
    :cond_1
    return v2
.end method

.method private isFactoryBinary()Z
    .locals 3

    .prologue
    const-string v0, "factory"

    const-string v1, "ro.factory.factory_binary"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPhoneDevice()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "deviceType":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "defaultValue":I
    if-eqz v1, :cond_1

    const-string v3, "tablet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ne v0, v2, :cond_2

    :goto_1
    return v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.folder_type"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private loadCurrentHome()Landroid/content/ComponentName;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/String;

    .local v2, "items":[Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string v6, "com.sec.android.app.desktoplauncher"

    invoke-static {v6}, Landroid/os/Environment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .local v0, "cacheDirs":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "backupinfo"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "path":Ljava/lang/String;
    new-instance v4, Landroid/util/JsonReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .local v4, "reader":Landroid/util/JsonReader;
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .local v5, "tag":Ljava/lang/String;
    const-string v6, "package-name"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "cacheDirs":[Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "reader":Landroid/util/JsonReader;
    .end local v5    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    aget-object v6, v2, v10

    if-eqz v6, :cond_1

    aget-object v6, v2, v11

    if-eqz v6, :cond_1

    aget-object v6, v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, v2, v11

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    const/4 v6, 0x0

    :goto_2
    return-object v6

    .restart local v0    # "cacheDirs":[Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "reader":Landroid/util/JsonReader;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v6, "class-name"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "cacheDirs":[Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "reader":Landroid/util/JsonReader;
    .end local v5    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .restart local v0    # "cacheDirs":[Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "reader":Landroid/util/JsonReader;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .end local v5    # "tag":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "cacheDirs":[Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "reader":Landroid/util/JsonReader;
    :cond_5
    new-instance v6, Landroid/content/ComponentName;

    aget-object v7, v2, v10

    aget-object v8, v2, v11

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private removeAllTasksToRelaunch()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->removeTask(II)Z

    :cond_0
    return-void
.end method

.method private setFan(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    invoke-interface {v1, p1}, Lcom/samsung/android/desktop/IDesktop;->writeData(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private showHeadsUpNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, "notificationManager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "err"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .local v0, "notificationBuilder":Landroid/app/Notification$Builder;
    sget v2, Lcom/samsung/android/desktop/DesktopManager;->HEADSUP_NOTI_ID:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :array_0
    .array-data 8
        0x1
        0x1
        0x1
    .end array-data
.end method

.method private updateKnoxDesktopModeState()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsBTMouseConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsUSBMouseConnected:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->enableKnoxDesktopMode()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->disableKnoxDesktopMode()V

    goto :goto_0
.end method


# virtual methods
.method public changeToGalaxyDesktopLauncher()Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v12, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .local v9, "pm":Landroid/content/pm/PackageManager;
    if-nez v9, :cond_0

    :goto_0
    return v10

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "allHomeCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "currentLauncherComponent":Landroid/content/ComponentName;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    new-array v5, v12, [Landroid/content/ComponentName;

    .local v5, "homeComponentSet":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .local v2, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v8, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "activityName":Landroid/content/ComponentName;
    aput-object v0, v5, v7

    if-nez v3, :cond_1

    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v13, "com.sec.android.app.easylauncher"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object v3, v0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v2    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    aput-object v13, v5, v12

    if-nez v3, :cond_3

    sget-object v11, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    const-string v12, "changeToGalaxyDesktopLauncher() : Failed to get current Launcher"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/android/desktop/DesktopManager;->saveCurrentHome(Landroid/content/ComponentName;)V

    sget-object v10, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "changeToGalaxyDesktopLauncher() currentLauncher = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v6, "homeFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    const/high16 v10, 0x100000

    iget-object v12, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    invoke-virtual {v9, v6, v10, v5, v12}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    move v10, v11

    goto/16 :goto_0

    .end local v6    # "homeFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "DesktopLauncher is not installed"

    const-string v12, "Please install DesktopLauncher"

    invoke-direct {p0, v10, v12}, Lcom/samsung/android/desktop/DesktopManager;->showHeadsUpNotification(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    goto/16 :goto_0
.end method

.method public isDeskDockConnected()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->checkDevice()Z

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

.method public isEmergencyMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public isInstalledDesktopLauncher()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mIsInstalledLauncher:Z

    return v0
.end method

.method public isKnoxDesktopMode()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .local v2, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_4

    iget v5, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0xe

    if-eqz v5, :cond_1

    move v1, v3

    .local v1, "checkByUiMode":Z
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "desktop_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .local v0, "checkBySetting":Z
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/desktop/DesktopManager;->isDeskDockConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    .end local v0    # "checkBySetting":Z
    .end local v1    # "checkByUiMode":Z
    :cond_0
    :goto_2
    return v3

    :cond_1
    move v1, v4

    goto :goto_0

    .restart local v1    # "checkByUiMode":Z
    :cond_2
    move v0, v4

    goto :goto_1

    .restart local v0    # "checkBySetting":Z
    :cond_3
    move v3, v4

    goto :goto_2

    .end local v0    # "checkBySetting":Z
    .end local v1    # "checkByUiMode":Z
    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method public registerListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .prologue
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/desktop/DesktopManager;->hasEventListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)Z

    move-result v0

    .local v0, "hasCallback":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mEventListners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "hasCallback":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restoreToPreviousLauncher()Z
    .locals 15

    .prologue
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-nez v10, :cond_0

    :goto_0
    return v11

    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->loadCurrentHome()Landroid/content/ComponentName;

    move-result-object v4

    .local v4, "currentLauncherComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    :cond_1
    sget-object v12, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restoreToPreviousLauncher() select other launcher, currentLauncher = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4    # "currentLauncherComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "currentLauncherComponent":Landroid/content/ComponentName;
    :cond_2
    sget-object v11, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreToPreviousLauncher() currentLauncher = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "allHomeCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v6, v11, [Landroid/content/ComponentName;

    .local v6, "homeComponentSet":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_3

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .local v2, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v9, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "activityName":Landroid/content/ComponentName;
    aput-object v0, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v2    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    new-instance v7, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v7, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v7, "homeFilter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.category.HOME"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    const/high16 v11, 0x100000

    invoke-virtual {v10, v7, v11, v6, v4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public saveCurrentHome(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDesktopState(Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    .prologue
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopState:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    if-eq v2, p1, :cond_1

    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopState:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    sget-object v2, Lcom/samsung/android/desktop/DesktopManager$3;->$SwitchMap$com$samsung$android$desktop$DesktopManager$DESKTOP_STATE:[I

    invoke-virtual {p1}, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    const-string v3, "setDesktopState(), unknown state"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mEventListners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .local v0, "cb":Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mDesktopState:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    invoke-interface {v0, v2}, Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;->onChangeState(Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;)V

    sget-object v2, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_DISCONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DESKTOPMODE_EXIT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    invoke-interface {v0, v2}, Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;->onChangeState(Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;)V

    goto :goto_1

    .end local v0    # "cb":Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_0
    sget-object v2, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    const-string v3, "setDesktopState(), DOCK_CONNECT"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    const-string v3, "setDesktopState(), DOCK_DISCONNECT"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    const-string v3, "setDesktopState(), DESKTOPMODE_ENTER"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->removeAllTasksToRelaunch()V

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    const-string v3, "setDesktopState(), DESKTOPMODE_EXIT"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/desktop/DesktopManager;->removeAllTasksToRelaunch()V

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public turnOnMainLCD(Z)V
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setForceUnblankDisplay(Z)V

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .prologue
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/desktop/DesktopManager;->hasEventListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)Z

    move-result v0

    .local v0, "hasCallback":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mEventListners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "hasCallback":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
