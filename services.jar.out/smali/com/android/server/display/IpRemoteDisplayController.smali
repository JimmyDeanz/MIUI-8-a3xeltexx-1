.class final Lcom/android/server/display/IpRemoteDisplayController;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;,
        Lcom/android/server/display/IpRemoteDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "IpRemoteDisplayController"


# instance fields
.field private isRunningHomeSync:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mBridgeReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectState:I

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mContext:Landroid/content/Context;

.field private mDisconnectByUser:Z

.field private mHDMIConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

.field private mPrevNativeDisposeCompleted:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mRequestPendingSetup:Z

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private final mSupportsProtectedBuffers:Z

.field private mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

.field private mWfdUibcManager:Landroid/media/WFDUibcManager;

.field private mWifiDisplayOnSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/IpRemoteDisplayController$Listener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    .line 118
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    .line 204
    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$2;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mBridgeReceiver:Landroid/content/BroadcastReceiver;

    .line 874
    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$13;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$13;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    .line 121
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    .line 123
    iput-object p3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .line 125
    new-instance v3, Landroid/media/WFDUibcManager;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mBridgeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 137
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$1;

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/display/IpRemoteDisplayController$1;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 166
    .local v2, "settingsObserver":Landroid/database/ContentObserver;
    const-string/jumbo v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mSupportsProtectedBuffers:Z

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->disableWifiDisplay(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/IpRemoteDisplayController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/IpRemoteDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->requestPopup(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/IpRemoteDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 80
    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/IpRemoteDisplayController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayerByWBS(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->reportFeatureState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .locals 15
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I
    .param p6, "devicetype"    # I

    .prologue
    .line 676
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertiseDisplay = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " surface: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " display: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " flags: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 678
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    move-object/from16 v0, p2

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    .line 686
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 687
    .local v5, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 688
    .local v3, "oldSurface":Landroid/view/Surface;
    iget v7, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    .line 689
    .local v7, "oldDisplayWidth":I
    iget v8, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    .line 690
    .local v8, "oldDisplayHeight":I
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 691
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 692
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    .line 693
    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    .line 694
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    .line 696
    move/from16 v9, p6

    .line 697
    .local v9, "connectedMode":I
    iget-boolean v10, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    .line 699
    .local v10, "requestPendingSetup":Z
    iget-object v14, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$11;

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/display/IpRemoteDisplayController$11;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIIZIII)V

    invoke-virtual {v14, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 733
    .end local v3    # "oldSurface":Landroid/view/Surface;
    .end local v5    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v7    # "oldDisplayWidth":I
    .end local v8    # "oldDisplayHeight":I
    .end local v9    # "connectedMode":I
    .end local v10    # "requestPendingSetup":Z
    :cond_2
    return-void
.end method

.method private computeFeatureState()I
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 8
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v5, 0x0

    .line 750
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    move v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 3
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 201
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method private disableWifiDisplay(I)V
    .locals 4
    .param p1, "connectedMode"    # I

    .prologue
    .line 481
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableWifiDisplay currenct mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized disconnect()V
    .locals 2

    .prologue
    .line 636
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Disconnect is called with disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    .line 640
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayDisconnecting()V

    .line 643
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->stop()Z

    .line 644
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->broadcastWfdState(I)V

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    .line 653
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    .line 655
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "mRemoteDisplay.dispose() is finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    .line 659
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 661
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->unadvertiseDisplay()V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_1

    .line 668
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->unadvertiseDisplay()V

    .line 670
    :cond_1
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "finish disconnect : exit synchronized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    monitor-exit p0

    return-void

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableWifiDisplay(ILjava/net/InetAddress;)V
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 591
    if-gez p1, :cond_0

    .line 592
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Failed to enable WifiDisplay "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSourceState(I)V

    .line 603
    move v0, p1

    .line 605
    .local v0, "reqDevType":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$10;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/display/IpRemoteDisplayController$10;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 599
    .end local v0    # "reqDevType":I
    :cond_1
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridge is null, then failed to enable WifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v2, "enableWifiDisplay mRemoteDisplay already existed."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableWifiDisplay "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " deviceType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    .line 309
    const/4 v0, 0x4

    invoke-direct {p0, v8, v0}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    .line 311
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 313
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 314
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    .line 315
    :cond_1
    const/4 v2, 0x0

    iget v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .line 318
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$6;

    invoke-direct {v2, p0}, Lcom/android/server/display/IpRemoteDisplayController$6;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    invoke-static {v0, v2}, Landroid/media/RemoteDisplayCallback;->setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V

    .line 358
    invoke-virtual {p0, v8}, Lcom/android/server/display/IpRemoteDisplayController;->broadcastWfdState(I)V

    .line 361
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->start()Z

    .line 363
    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestEnable processing init option :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-nez p4, :cond_3

    .line 367
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 368
    .local v7, "initParam":Lorg/json/JSONObject;
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    invoke-direct {p0, v7, v0}, Lcom/android/server/display/IpRemoteDisplayController;->requestDataSetting(Lorg/json/JSONObject;I)V

    .line 369
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    .line 379
    .end local v7    # "initParam":Lorg/json/JSONObject;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 380
    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDIsplayInterface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$7;

    invoke-direct {v2, p0}, Lcom/android/server/display/IpRemoteDisplayController$7;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, p4}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 474
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 740
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchWfdPlayer(ILjava/net/InetAddress;)V
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 493
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchWfdPlayer deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/IpRemoteDisplayController$8;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method private launchWfdPlayerByWBS(ILjava/net/InetAddress;)V
    .locals 2
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 620
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    .line 621
    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Failed to launch WfdPlayer"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSinkState(I)V

    .line 632
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayer(ILjava/net/InetAddress;)V

    goto :goto_0

    .line 628
    :cond_2
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridge is null, then failed to launch WfdPlayer"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportFeatureState()V
    .locals 3

    .prologue
    .line 528
    const-string v1, "IpRemoteDisplayController"

    const-string/jumbo v2, "reportFeatureState"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->computeFeatureState()I

    move-result v0

    .line 530
    .local v0, "featureState":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$9;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 536
    return-void
.end method

.method private requestDataSetting(Lorg/json/JSONObject;I)V
    .locals 17
    .param p1, "initParam"    # Lorg/json/JSONObject;
    .param p2, "deviceType"    # I

    .prologue
    .line 779
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestDataSetting static : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    packed-switch p2, :pswitch_data_0

    .line 821
    :pswitch_0
    const/16 v7, 0x3c0

    const/16 v8, 0x21c

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 782
    :pswitch_1
    const/16 v3, 0x500

    const/16 v4, 0x2d0

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_0

    .line 786
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 787
    .local v16, "wm":Landroid/view/WindowManager;
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 788
    const/16 v3, 0x500

    .line 789
    .local v3, "wmWidth":I
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 790
    .local v4, "wmHeight":I
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device\'s window height:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    sparse-switch v4, :sswitch_data_0

    .line 798
    const/16 v4, 0x2d0

    .line 801
    :goto_1
    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_0

    .line 795
    :sswitch_0
    const/16 v4, 0x320

    .line 796
    goto :goto_1

    .line 805
    .end local v3    # "wmWidth":I
    .end local v4    # "wmHeight":I
    .end local v16    # "wm":Landroid/view/WindowManager;
    :pswitch_3
    const/16 v7, 0x780

    const/16 v8, 0x438

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_0

    .line 808
    :pswitch_4
    const/16 v7, 0x3c0

    const/16 v8, 0x21c

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_0

    .line 811
    :pswitch_5
    const/16 v7, 0x356

    const/16 v8, 0x1e0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_0

    .line 814
    :pswitch_6
    const/16 v7, 0x2d0

    const/16 v8, 0x1e0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xa

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_0

    .line 818
    :pswitch_7
    const/16 v7, 0x780

    const/16 v8, 0x438

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 792
    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_0
        0x640 -> :sswitch_0
    .end sparse-switch
.end method

.method private requestPopup(I)V
    .locals 4
    .param p1, "cause"    # I

    .prologue
    .line 547
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 549
    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "IpRemoteDisplayController"

    const-string/jumbo v3, "unable to start WfdBroker activity "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestScreenMirroringEnable(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 910
    return-void
.end method

.method private sendDisplayEventToExtendedListener(II)V
    .locals 2
    .param p1, "param"    # I
    .param p2, "event"    # I

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController$12;-><init>(Lcom/android/server/display/IpRemoteDisplayController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method

.method private setParamData(Lorg/json/JSONObject;IIIZZIZZI)V
    .locals 4
    .param p1, "initParam"    # Lorg/json/JSONObject;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I
    .param p5, "use_hdcp"    # Z
    .param p6, "use_audio"    # Z
    .param p7, "qoslevel"    # I
    .param p8, "use_uibc"    # Z
    .param p9, "use_pdm"    # Z
    .param p10, "deviceType"    # I

    .prologue
    .line 757
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParamData deviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :try_start_0
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 760
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 761
    const-string/jumbo v1, "fps"

    invoke-virtual {p1, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 762
    const-string/jumbo v1, "use_hdcp"

    invoke-virtual {p1, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 763
    const-string/jumbo v1, "use_audio"

    invoke-virtual {p1, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 764
    const-string/jumbo v1, "qoslevel"

    invoke-virtual {p1, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 765
    const-string/jumbo v1, "use_uibc"

    invoke-virtual {p1, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 766
    const-string/jumbo v1, "use_pdm"

    invoke-virtual {p1, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 767
    const-string/jumbo v1, "device_type"

    invoke-virtual {p1, v1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 768
    const-string/jumbo v1, "supportsProtectedBuffers"

    iget-boolean v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mSupportsProtectedBuffers:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "IpRemoteDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryCommunication(I)V
    .locals 3
    .param p1, "requestType"    # I

    .prologue
    .line 580
    move v0, p1

    .line 582
    .local v0, "requestDevType":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSource(I)I

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridgeServer is not avaiable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryCommunication(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 3
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "requestType"    # I

    .prologue
    .line 560
    move v0, p2

    .line 561
    .local v0, "requestDevType":I
    if-eqz p1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v1, :cond_0

    .line 563
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_2

    .line 571
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSink(Landroid/net/wifi/p2p/WifiP2pDevice;I)I

    .line 576
    :goto_0
    return-void

    .line 566
    :cond_1
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Wrong sinkDevice info. Check the parameter..."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    :cond_2
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridgeServer is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unadvertiseDisplay()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 736
    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .line 737
    return-void
.end method


# virtual methods
.method public broadcastWfdState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 888
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 890
    .local v0, "Intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 892
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 897
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 898
    return-void
.end method

.method public connectWfdBridgeServer(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "inet"    # Ljava/net/InetAddress;

    .prologue
    .line 913
    const-string v1, "IpRemoteDisplayController"

    const-string/jumbo v2, "connectWfdBridgeServer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    move-object v0, p1

    .line 921
    .local v0, "inetAddr":Ljava/net/InetAddress;
    return-void
.end method

.method public disconnectWfdBridgeServer()V
    .locals 2

    .prologue
    .line 924
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "disconnectWfdBridgeServer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    .line 926
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridgeServer stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->disconnect()V

    .line 928
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .line 933
    :goto_0
    return-void

    .line 931
    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridgeServer is already null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiDisplayOnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConnectedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplayInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplayConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplaySurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestPendingSetup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public getWifiDisplayBridgeStatus()I
    .locals 4

    .prologue
    .line 955
    const/4 v0, 0x0

    .line 957
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    const/4 v0, 0x1

    .line 961
    :cond_0
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWifiDisplayBridgeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return v0
.end method

.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x0

    return v0
.end method

.method public isWfdEngineRunning()Z
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v0

    .line 969
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WifiDisplayBridge is available"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v0, 0x1

    .line 950
    :goto_0
    return v0

    .line 949
    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WifiDisplayBridge is unavailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyBridgeStatus(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 973
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    .line 974
    return-void
.end method

.method public notifyEnterHomeSyncApp()V
    .locals 2

    .prologue
    .line 865
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Entering HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    .line 867
    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .locals 2

    .prologue
    .line 870
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Exiting HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    .line 872
    return-void
.end method

.method public requestDisableWifiDisplay(I)I
    .locals 2
    .param p1, "connectedMode"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/IpRemoteDisplayController$5;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public requestEnableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 2
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    .line 268
    packed-switch p2, :pswitch_data_0

    .line 280
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Wrong device Type! Check your device type"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 274
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->tryCommunication(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    goto :goto_0

    .line 277
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/display/IpRemoteDisplayController;->tryCommunication(I)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/IpRemoteDisplayController$3;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z

    .prologue
    .line 253
    iget-object v9, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$4;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, p5

    move/from16 v4, p7

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/IpRemoteDisplayController$4;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method

.method public requestPause()V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    .line 844
    :cond_0
    return-void
.end method

.method public requestResume()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    .line 855
    :cond_0
    return-void
.end method

.method public updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "client"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-nez v0, :cond_0

    .line 939
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "updateClientDevice mWfdBridgeServer is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_0
    return-void

    .line 941
    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "updateClientDevice SEC_PRODUCT_FEATURE_WLAN_WIFIDISPLAY_SINK is false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
