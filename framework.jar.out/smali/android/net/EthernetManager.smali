.class public Landroid/net/EthernetManager;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetManager$Listener;
    }
.end annotation


# static fields
.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final ETH_DEVICE_SCAN_RESULT_READY:I = 0x0

.field public static final ETH_ENABLE_TRAFFIC_STATS_POLL:I = 0x4

.field public static final ETH_STATE_CHANGED_ACTION:Ljava/lang/String; = "samsung.net.ethernet.ETH_STATE_CHANGED"

.field public static final ETH_STATE_CONNECTOR_ADD_ACTION:Ljava/lang/String; = "android.net.ethernet.STATE_CONNECTOR_ADD"

.field public static final ETH_STATE_CONNECTOR_REMOVE_ACTION:Ljava/lang/String; = "android.net.ethernet.STATE_CONNECTOR_REMOVE"

.field public static final ETH_STATE_DISABLED:I = 0x1

.field public static final ETH_STATE_ENABLED:I = 0x2

.field public static final ETH_STATE_ENABLING:I = 0x3

.field public static final ETH_STATE_UNKNOWN:I = 0x0

.field public static final ETH_TRAFFIC_STATS_POLL:I = 0x5

.field public static final EXTRA_ETH_STATE:Ljava/lang/String; = "eth_state"

.field public static final EXTRA_LAN_CABLE_STATE:Ljava/lang/String; = "lan_cable_state"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_PREVIOUS_ETH_STATE:Ljava/lang/String; = "previous_eth_state"

.field private static final MSG_AVAILABILITY_CHANGED:I = 0x3e8

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/EthernetManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IEthernetManager;

.field private final mServiceListener:Landroid/net/IEthernetServiceListener$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IEthernetManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IEthernetManager;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/net/EthernetManager$1;

    invoke-direct {v0, p0}, Landroid/net/EthernetManager$1;-><init>(Landroid/net/EthernetManager;)V

    iput-object v0, p0, Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Landroid/net/EthernetManager$2;

    invoke-direct {v0, p0}, Landroid/net/EthernetManager$2;-><init>(Landroid/net/EthernetManager;)V

    iput-object v0, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    .line 140
    iput-object p1, p0, Landroid/net/EthernetManager;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    .line 142
    return-void
.end method

.method static synthetic access$000(Landroid/net/EthernetManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/net/EthernetManager;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/EthernetManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/net/EthernetManager;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public UpdateEthDevInfo(Landroid/net/EthernetDevInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/EthernetDevInfo;

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/IEthernetManager;->UpdateEthDevInfo(Landroid/net/EthernetDevInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not update ethernet device info"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addListener(Landroid/net/EthernetManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/EthernetManager$Listener;

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 432
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    iget-object v1, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    invoke-interface {v0, v1}, Landroid/net/IEthernetManager;->addListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public ethConfigured()Z
    .locals 2

    .prologue
    .line 268
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->isEthConfigured()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ethSetDefaultConf()V
    .locals 2

    .prologue
    .line 416
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    const-string v1, "dhcp"

    invoke-interface {v0, v1}, Landroid/net/IEthernetManager;->setEthMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCheckConnecting()I
    .locals 2

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getCheckConnecting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 352
    :goto_0
    return v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfiguration()Landroid/net/IpConfiguration;
    .locals 2

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getConfiguration()Landroid/net/IpConfiguration;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getConnectorConnected()Z
    .locals 3

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getConnectorConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 329
    :goto_0
    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not getConnectorConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getDeviceNameList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    :goto_0
    return-object v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEthState()I
    .locals 2

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getEthState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEthernetServiceMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 187
    :try_start_0
    iget-object v2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v2}, Landroid/net/IEthernetManager;->getEthernetServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 191
    :goto_0
    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public getHWConnected()Z
    .locals 2

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getHWConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 396
    :goto_0
    return v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSavedEthConfig()Landroid/net/EthernetDevInfo;
    .locals 3

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getSavedEthConfig()Landroid/net/EthernetDevInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not get eth config"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackConnected()Z
    .locals 2

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getStackConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 374
    :goto_0
    return v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTotalInterface()I
    .locals 2

    .prologue
    .line 405
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getTotalInterface()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 407
    :goto_0
    return v1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserDisabled()Z
    .locals 3

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getUserDisabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 317
    :goto_0
    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 174
    :goto_0
    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isEthConfigured()Z
    .locals 3

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->isEthConfigured()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    :goto_0
    return v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not check eth config state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEthReset()Z
    .locals 3

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->isEthReset()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Landroid/net/EthernetManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/EthernetManager$Listener;

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    iget-object v1, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    invoke-interface {v0, v1}, Landroid/net/IEthernetManager;->removeListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_1
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setCheckConnecting(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/IEthernetManager;->setCheckConnecting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not setCheckConnecting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setConfiguration(Landroid/net/IpConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/IpConfiguration;

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0, p1}, Landroid/net/IEthernetManager;->setConfiguration(Landroid/net/IpConfiguration;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setEthEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 235
    :try_start_0
    iget-object v2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-interface {v2, v1}, Landroid/net/IEthernetManager;->setEthState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    return-void

    .line 235
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setEthernetState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/IEthernetManager;->setEthState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHWConnected(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 383
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/IEthernetManager;->setHWConnected(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not setHWConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStackConnected(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/IEthernetManager;->setStackConnected(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not setStackConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUserDisabled(Z)V
    .locals 3
    .param p1, "newState"    # Z

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/IEthernetManager;->setUserDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
