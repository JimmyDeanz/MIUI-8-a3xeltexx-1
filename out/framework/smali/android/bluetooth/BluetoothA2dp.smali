.class public final Landroid/bluetooth/BluetoothA2dp;
.super Ljava/lang/Object;
.source "BluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_AVRCP_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.AVRCP_CONNECTION_STATE_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_CP_TYPE:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.CP_TYPE"

.field public static final ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

.field public static final CP_TYPE_COPY_FREE:I = 0xd

.field public static final CP_TYPE_COPY_NEVER:I = 0xb

.field public static final CP_TYPE_COPY_ONCE:I = 0xc

.field public static final CP_TYPE_DISABLED:I = 0xa

.field private static final DBG:Z

.field public static final EXTRA_CP_TYPE:Ljava/lang/String; = "android.bluetooth.a2dp.profile.extra.CP_TYPE"

.field public static final STATE_NOT_PLAYING:I = 0xb

.field public static final STATE_PLAYING:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dp"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothA2dp;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/bluetooth/BluetoothA2dp;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v2, Landroid/bluetooth/BluetoothA2dp$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dp$1;-><init>(Landroid/bluetooth/BluetoothA2dp;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 697
    new-instance v2, Landroid/bluetooth/BluetoothA2dp$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dp$2;-><init>(Landroid/bluetooth/BluetoothA2dp;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mConnection:Landroid/content/ServiceConnection;

    .line 223
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 225
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 226
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 227
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 229
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->doBind()Z

    .line 236
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothA2dp"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Landroid/bluetooth/BluetoothA2dp;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothA2dp;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 721
    if-nez p1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v0

    .line 723
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 728
    const-string v0, "BluetoothA2dp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 679
    packed-switch p0, :pswitch_data_0

    .line 693
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 681
    :pswitch_1
    const-string v0, "disconnected"

    goto :goto_0

    .line 683
    :pswitch_2
    const-string v0, "connecting"

    goto :goto_0

    .line 685
    :pswitch_3
    const-string v0, "connected"

    goto :goto_0

    .line 687
    :pswitch_4
    const-string v0, "disconnecting"

    goto :goto_0

    .line 689
    :pswitch_5
    const-string/jumbo v0, "playing"

    goto :goto_0

    .line 691
    :pswitch_6
    const-string/jumbo v0, "not playing"

    goto :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public adjustAvrcpAbsoluteVolume(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 598
    sget-boolean v1, Landroid/bluetooth/BluetoothA2dp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothA2dp"

    const-string v2, "adjustAvrcpAbsoluteVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 601
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_1
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, "Error talking to BT service in adjustAvrcpAbsoluteVolume()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 608
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v1, :cond_1

    const-string v1, "BluetoothA2dp"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method close()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 277
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 278
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 279
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 281
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothA2dp;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 288
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 290
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    .line 291
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothA2dp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothA2dp"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 293
    .local v2, "re":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BluetoothA2dp"

    const-string v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 296
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 326
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "deviceInfo":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothA2dp -- connect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called by PID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 341
    :cond_0
    :goto_1
    return v2

    .line 326
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    .restart local v0    # "deviceInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothA2dp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v3, :cond_0

    const-string v3, "BluetoothA2dp"

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 371
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "deviceInfo":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothA2dp -- disconnect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called by PID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 385
    :cond_0
    :goto_1
    return v2

    .line 371
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    .restart local v0    # "deviceInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothA2dp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 384
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v3, :cond_0

    const-string v3, "BluetoothA2dp"

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method doBind()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 239
    new-instance v2, Landroid/content/Intent;

    const-class v8, Landroid/bluetooth/IBluetoothA2dp;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 241
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 244
    .local v0, "bindAsuser":Landroid/os/UserHandle;
    sget-object v8, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v8}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 245
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 246
    .local v6, "userId":I
    const-string v8, "BluetoothA2dp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doBind(): CallingUid(myUserHandle) = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v8, 0x64

    if-lt v6, v8, :cond_2

    const/16 v8, 0xc8

    if-gt v6, v8, :cond_2

    .line 248
    const/4 v3, 0x0

    .line 249
    .local v3, "isBtEnabled":Z
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v4

    .line 250
    .local v4, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v4, :cond_0

    .line 252
    :try_start_0
    invoke-interface {v4, v6}, Landroid/sec/enterprise/IEDMProxy;->isKnoxBluetoothEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 257
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 258
    const-string v8, "BluetoothA2dp"

    const-string v9, "doBind(): Bluetooth for this container is disabled!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v3    # "isBtEnabled":Z
    .end local v4    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v6    # "userId":I
    :goto_1
    return v7

    .line 253
    .restart local v3    # "isBtEnabled":Z
    .restart local v4    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .restart local v6    # "userId":I
    :catch_0
    move-exception v5

    .line 254
    .local v5, "re":Landroid/os/RemoteException;
    const-string v8, "BluetoothA2dp"

    const-string v9, "doBind(): isKnoxBluetoothEnabled on EDMProxy failed! "

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 261
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_1
    iget-object v8, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v2, v8, v7, v7}, Landroid/content/Intent;->resolveSystemServiceAsUser(Landroid/content/pm/PackageManager;II)Landroid/content/ComponentName;

    move-result-object v1

    .line 262
    new-instance v0, Landroid/os/UserHandle;

    .end local v0    # "bindAsuser":Landroid/os/UserHandle;
    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 263
    .restart local v0    # "bindAsuser":Landroid/os/UserHandle;
    const-string v8, "BluetoothA2dp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doBind(): comp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; bindAsuser = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v3    # "isBtEnabled":Z
    .end local v4    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v6    # "userId":I
    :cond_2
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 269
    if-eqz v1, :cond_3

    iget-object v8, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/bluetooth/BluetoothA2dp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v2, v9, v7, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 270
    :cond_3
    const-string v8, "BluetoothA2dp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not bind to Bluetooth A2DP Service with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 273
    :cond_4
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 429
    sget-boolean v2, Landroid/bluetooth/BluetoothA2dp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "getActiveStreamDevice()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 430
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 432
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dp;->getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 439
    :cond_1
    :goto_0
    return-object v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothA2dp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v2, :cond_1

    const-string v2, "BluetoothA2dp"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dp;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 460
    :goto_0
    return-object v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "BluetoothA2dp"

    const-string/jumbo v2, "mService is null in getConnectedDevices"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v1, "BluetoothA2dpmService is null in getConnectedDevices"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 459
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v1, :cond_1

    const-string v1, "BluetoothA2dp"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 484
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "deviceInfo":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 486
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 489
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 496
    :cond_0
    :goto_1
    return v2

    .line 484
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 490
    .restart local v0    # "deviceInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothA2dp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 495
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v3, :cond_0

    const-string v3, "BluetoothA2dp"

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 477
    :goto_0
    return-object v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v1, :cond_1

    const-string v1, "BluetoothA2dp"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 549
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "deviceInfo":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPriority("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 551
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 554
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 561
    :cond_0
    :goto_1
    return v2

    .line 549
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 555
    .restart local v0    # "deviceInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothA2dp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 560
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v3, :cond_0

    const-string v3, "BluetoothA2dp"

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 639
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 642
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 649
    :cond_0
    :goto_0
    return v1

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothA2dp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 648
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v2, :cond_0

    const-string v2, "BluetoothA2dp"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAvrcpAbsoluteVolumeSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 571
    sget-boolean v2, Landroid/bluetooth/BluetoothA2dp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothA2dp"

    const-string/jumbo v3, "isAvrcpAbsoluteVolumeSupported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 574
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dp;->isAvrcpAbsoluteVolumeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 581
    :cond_1
    :goto_0
    return v1

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothA2dp"

    const-string v3, "Error talking to BT service in isAvrcpAbsoluteVolumeSupported()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 580
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v2, :cond_1

    const-string v2, "BluetoothA2dp"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public selectstream(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 402
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "deviceInfo":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectstream("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 404
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothA2dp;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 414
    :cond_0
    :goto_1
    return v2

    .line 402
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    .restart local v0    # "deviceInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothA2dp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 413
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v3, :cond_0

    const-string v3, "BluetoothA2dp"

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setAvrcpAbsoluteVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 618
    sget-boolean v1, Landroid/bluetooth/BluetoothA2dp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothA2dp"

    const-string/jumbo v2, "setAvrcpAbsoluteVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :cond_1
    :goto_0
    return-void

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, "Error talking to BT service in setAvrcpAbsoluteVolume()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 628
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v1, :cond_1

    const-string v1, "BluetoothA2dp"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    const/4 v2, 0x0

    .line 515
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "deviceInfo":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPriority("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 517
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 519
    if-eqz p2, :cond_2

    const/16 v3, 0x64

    if-eq p2, v3, :cond_2

    .line 531
    :cond_0
    :goto_1
    return v2

    .line 515
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 524
    .restart local v0    # "deviceInfo":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v3, p1, p2}, Landroid/bluetooth/IBluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 525
    :catch_0
    move-exception v1

    .line 526
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothA2dp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 530
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    if-nez v3, :cond_0

    const-string v3, "BluetoothA2dp"

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public shouldSendVolumeKeys(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 659
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 660
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 661
    .local v4, "uuids":[Landroid/os/ParcelUuid;
    if-nez v4, :cond_1

    .line 669
    .end local v4    # "uuids":[Landroid/os/ParcelUuid;
    :cond_0
    :goto_0
    return v5

    .line 663
    .restart local v4    # "uuids":[Landroid/os/ParcelUuid;
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/ParcelUuid;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 664
    .local v3, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 665
    const/4 v5, 0x1

    goto :goto_0

    .line 663
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
