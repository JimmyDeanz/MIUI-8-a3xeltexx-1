.class public Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.super Landroid/os/Binder;
.source "KiesUsbObserver.java"


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String;

.field public static isTwiceReset:Z

.field public static isbootcomplete:Z

.field private static mSystemReady:Z


# instance fields
.field private CDFS_ADB_FUNCTION_STRING:Ljava/lang/String;

.field private CDFS_FUNCTION_STRING:Ljava/lang/String;

.field public final br:Landroid/content/BroadcastReceiver;

.field public final mBr:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCDFSEventObserver:Landroid/os/UEventObserver;

.field private final mContext:Landroid/content/Context;

.field private mFileObserver:Landroid/os/FileObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-class v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    .line 48
    sput-boolean v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mSystemReady:Z

    .line 56
    sput-boolean v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    .line 57
    sput-boolean v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    iput-object v6, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mFileObserver:Landroid/os/FileObserver;

    .line 51
    iput-object v6, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 53
    const-string/jumbo v4, "mass_storage"

    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->CDFS_FUNCTION_STRING:Ljava/lang/String;

    .line 54
    const-string/jumbo v4, "mass_storage,adb"

    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->CDFS_ADB_FUNCTION_STRING:Ljava/lang/String;

    .line 95
    new-instance v4, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;

    invoke-direct {v4, p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V

    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mBr:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v4, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;

    invoke-direct {v4, p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V

    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->br:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v4, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;

    invoke-direct {v4, p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V

    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    new-instance v4, Lcom/android/server/KiesConnectivity/KiesUsbObserver$4;

    invoke-direct {v4, p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver$4;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V

    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mCDFSEventObserver:Landroid/os/UEventObserver;

    .line 60
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mContext:Landroid/content/Context;

    .line 61
    new-instance v4, Lcom/android/server/KiesConnectivity/KiesUsbManager;

    iget-object v5, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/KiesConnectivity/KiesUsbManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .line 62
    iget-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v4}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mHandler:Landroid/os/Handler;

    .line 63
    iget-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mCDFSEventObserver:Landroid/os/UEventObserver;

    const-string v5, "SWITCH_NAME=USB_MESSAGE"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v4, "usb"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 67
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v3, "lIntentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 71
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, "DIfilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mBr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    const/4 v1, 0x0

    .line 90
    .local v1, "config":Ljava/lang/String;
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->getUsbCDFSMode()I

    move-result v0

    return v0
.end method

.method private getUsbCDFSMode()I
    .locals 5

    .prologue
    .line 248
    const-string/jumbo v2, "sys.usb.config"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "config":Ljava/lang/String;
    sget-object v2, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbMode() -> sys.usb.config : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string/jumbo v2, "mass_storage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mass_storage,adb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    const/16 v1, 0x7d0

    .line 258
    .local v1, "usbMode":I
    :goto_0
    return v1

    .line 255
    .end local v1    # "usbMode":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "usbMode":I
    goto :goto_0
.end method

.method private getUsbMode()I
    .locals 5

    .prologue
    .line 231
    const-string/jumbo v2, "sys.usb.config"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "config":Ljava/lang/String;
    sget-object v2, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbMode() -> sys.usb.config : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string/jumbo v2, "mass_storage,mtp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mass_storage,mtp,adb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    :cond_0
    const/16 v1, 0x7d0

    .line 241
    .local v1, "usbMode":I
    :goto_0
    return v1

    .line 238
    .end local v1    # "usbMode":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "usbMode":I
    goto :goto_0
.end method

.method private isAdbEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "enabled":I
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 268
    if-ne v0, v1, :cond_0

    .line 271
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private sendMsg(II)V
    .locals 4
    .param p1, "usbState"    # I
    .param p2, "usbMode"    # I

    .prologue
    const/4 v1, -0x1

    .line 279
    move v0, p2

    .line 281
    .local v0, "arg1":I
    if-eq p1, v1, :cond_0

    if-ne p2, v1, :cond_1

    .line 282
    :cond_0
    sget-object v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendMsg -> wrong argument"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return-void

    .line 286
    :cond_1
    const/16 v1, 0x7d0

    if-eq p2, v1, :cond_2

    .line 287
    sget-object v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendMsg -> UsbMode is not mtp"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 293
    if-nez p1, :cond_3

    .line 294
    const/4 v0, 0x0

    .line 296
    :cond_3
    sget-object v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMsg ->usbState is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UsbMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 300
    :cond_4
    sget-object v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendMsg -> mHandler is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized systemReady()V
    .locals 3

    .prologue
    .line 343
    const-class v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mSystemReady:Z

    .line 344
    sget-object v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "systemReady done"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit v1

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
