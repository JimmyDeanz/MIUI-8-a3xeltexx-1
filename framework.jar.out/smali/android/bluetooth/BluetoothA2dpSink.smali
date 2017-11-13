.class public final Landroid/bluetooth/BluetoothA2dpSink;
.super Ljava/lang/Object;
.source "BluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_AUDIO_CONFIG_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.AUDIO_CONFIG_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.PLAYING_STATE_CHANGED"

.field private static final DBG:Z

.field public static final EXTRA_AUDIO_CONFIG:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.extra.AUDIO_CONFIG"

.field public static final STATE_NOT_PLAYING:I = 0xb

.field public static final STATE_PLAYING:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpSink"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothA2dpSink;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/bluetooth/BluetoothA2dpSink;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v2, Landroid/bluetooth/BluetoothA2dpSink$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dpSink$1;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 486
    new-instance v2, Landroid/bluetooth/BluetoothA2dpSink$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dpSink$2;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    .line 173
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 175
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 176
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 177
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 179
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dpSink;->doBind()Z

    .line 186
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothA2dpSink"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Landroid/bluetooth/BluetoothA2dpSink;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothA2dpSink;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothA2dpSink;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothA2dpSink;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothA2dpSink;

    .prologue
    .line 49
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothA2dpSink;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothA2dpSink;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 507
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

    .line 511
    if-nez p1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 513
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
    .line 518
    const-string v0, "BluetoothA2dpSink"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 468
    packed-switch p0, :pswitch_data_0

    .line 482
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

    .line 470
    :pswitch_1
    const-string v0, "disconnected"

    goto :goto_0

    .line 472
    :pswitch_2
    const-string v0, "connecting"

    goto :goto_0

    .line 474
    :pswitch_3
    const-string v0, "connected"

    goto :goto_0

    .line 476
    :pswitch_4
    const-string v0, "disconnecting"

    goto :goto_0

    .line 478
    :pswitch_5
    const-string/jumbo v0, "playing"

    goto :goto_0

    .line 480
    :pswitch_6
    const-string/jumbo v0, "not playing"

    goto :goto_0

    .line 468
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
.method close()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 227
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 228
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 229
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 231
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 238
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 240
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 241
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothA2dpSink"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 243
    .local v2, "re":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BluetoothA2dpSink"

    const-string v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 246
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

    .line 275
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 276
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

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 287
    :cond_0
    :goto_1
    return v2

    .line 275
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    .restart local v0    # "deviceInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothA2dpSink"

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

    .line 286
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v3, :cond_0

    const-string v3, "BluetoothA2dpSink"

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 317
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 318
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

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 329
    :cond_0
    :goto_1
    return v2

    .line 317
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 323
    .restart local v0    # "deviceInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothA2dpSink"

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

    .line 328
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v3, :cond_0

    const-string v3, "BluetoothA2dpSink"

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method doBind()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 189
    new-instance v2, Landroid/content/Intent;

    const-class v8, Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 191
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 194
    .local v0, "bindAsuser":Landroid/os/UserHandle;
    sget-object v8, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v8}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 195
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 196
    .local v6, "userId":I
    const-string v8, "BluetoothA2dpSink"

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

    .line 197
    const/16 v8, 0x64

    if-lt v6, v8, :cond_2

    const/16 v8, 0xc8

    if-gt v6, v8, :cond_2

    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "isBtEnabled":Z
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v4

    .line 200
    .local v4, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v4, :cond_0

    .line 202
    :try_start_0
    invoke-interface {v4, v6}, Landroid/sec/enterprise/IEDMProxy;->isKnoxBluetoothEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 207
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 208
    const-string v8, "BluetoothA2dpSink"

    const-string v9, "doBind(): Bluetooth for this container is disabled!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v3    # "isBtEnabled":Z
    .end local v4    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v6    # "userId":I
    :goto_1
    return v7

    .line 203
    .restart local v3    # "isBtEnabled":Z
    .restart local v4    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .restart local v6    # "userId":I
    :catch_0
    move-exception v5

    .line 204
    .local v5, "re":Landroid/os/RemoteException;
    const-string v8, "BluetoothA2dpSink"

    const-string v9, "doBind(): isKnoxBluetoothEnabled on EDMProxy failed! "

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 211
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_1
    iget-object v8, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v2, v8, v7, v7}, Landroid/content/Intent;->resolveSystemServiceAsUser(Landroid/content/pm/PackageManager;II)Landroid/content/ComponentName;

    move-result-object v1

    .line 212
    new-instance v0, Landroid/os/UserHandle;

    .end local v0    # "bindAsuser":Landroid/os/UserHandle;
    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 213
    .restart local v0    # "bindAsuser":Landroid/os/UserHandle;
    const-string v8, "BluetoothA2dpSink"

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

    .line 218
    .end local v3    # "isBtEnabled":Z
    .end local v4    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v6    # "userId":I
    :cond_2
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    if-eqz v1, :cond_3

    iget-object v8, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v2, v9, v7, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 220
    :cond_3
    const-string v8, "BluetoothA2dpSink"

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

    .line 223
    :cond_4
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    .line 251
    return-void
.end method

.method public getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 399
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "deviceInfo":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioConfig("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 411
    :cond_0
    :goto_1
    return-object v2

    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 399
    goto :goto_0

    .line 405
    .restart local v0    # "deviceInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothA2dpSink"

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

    .line 410
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v3, :cond_0

    const-string v3, "BluetoothA2dpSink"

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 5
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
    .line 337
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 348
    :goto_0
    return-object v2

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothA2dpSink"

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

    .line 342
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 344
    .local v1, "npe":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 347
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v2, :cond_1

    const-string v2, "BluetoothA2dpSink"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 372
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    .line 373
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

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 384
    :cond_0
    :goto_1
    return v2

    .line 372
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 378
    .restart local v0    # "deviceInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothA2dpSink"

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

    .line 383
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v3, :cond_0

    const-string v3, "BluetoothA2dpSink"

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
    .line 356
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 365
    :goto_0
    return-object v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dpSink"

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

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 364
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v1, :cond_1

    const-string v1, "BluetoothA2dpSink"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getPendingDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dpSink;->getPendingDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 434
    :cond_0
    :goto_0
    return-object v1

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothA2dpSink"

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

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v2, :cond_0

    const-string v2, "BluetoothA2dpSink"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processSetSuspend(Z)Z
    .locals 5
    .param p1, "setSuspend"    # Z

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->processSetSuspend(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    const/4 v1, 0x1

    .line 458
    :cond_0
    :goto_0
    return v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothA2dpSink"

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

    .line 457
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    if-nez v2, :cond_0

    const-string v2, "BluetoothA2dpSink"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
