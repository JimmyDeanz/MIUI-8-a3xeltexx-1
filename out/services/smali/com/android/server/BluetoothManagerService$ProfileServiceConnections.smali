.class final Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProfileServiceConnections"
.end annotation


# instance fields
.field mClassName:Landroid/content/ComponentName;

.field mIntent:Landroid/content/Intent;

.field mInvokingProxyCallbacks:Z

.field final mProxies:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothProfileServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V
    .locals 2
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1550
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    .line 1548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1551
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 1552
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 1553
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    .line 1554
    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .prologue
    .line 1541
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->bindService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 1541
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .prologue
    .line 1541
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeAllProxies()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 1541
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method private addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 4
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    const/16 v3, 0x191

    .line 1569
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1570
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    .line 1572
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    invoke-interface {p1, v2, v3}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothManagerService"

    const-string v3, "Unable to connect to proxy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1577
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v3, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1578
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1579
    .local v1, "msg":Landroid/os/Message;
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1580
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private bindService()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1557
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, p0, v1, v4}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1559
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1560
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1561
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1562
    const/4 v1, 0x1

    .line 1565
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    .line 1564
    :cond_0
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind with intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeAllProxies()V
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1601
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1602
    return-void
.end method

.method private removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 3
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 1586
    if-eqz p1, :cond_1

    .line 1587
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1589
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to disconnect proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1595
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "BluetoothManagerService"

    const-string v2, "Trying to remove a null proxy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 1671
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile service for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1677
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1678
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1679
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1680
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 1607
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x191

    invoke-virtual {v3, v4, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1608
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 1609
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 1611
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    if-eqz v3, :cond_0

    .line 1617
    const-string v3, "BluetoothManagerService"

    const-string v4, "Proxy callbacks already in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :goto_1
    return-void

    .line 1612
    :catch_0
    move-exception v0

    .line 1613
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to linkToDeath"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1620
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1622
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1624
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 1626
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v3, p1, p2}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1624
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1627
    :catch_1
    move-exception v0

    .line 1628
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to connect to proxy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1632
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1633
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    throw v3

    .line 1632
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1633
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1639
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-nez v3, :cond_0

    .line 1667
    :goto_0
    return-void

    .line 1641
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    :goto_1
    iput-object v7, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 1646
    iput-object v7, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 1648
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    if-eqz v3, :cond_1

    .line 1649
    const-string v3, "BluetoothManagerService"

    const-string v4, "Proxy callbacks already in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No death recipient registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1652
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1654
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1656
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1658
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1656
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1659
    :catch_1
    move-exception v0

    .line 1660
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to disconnect from proxy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1664
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1665
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    throw v3

    .line 1664
    :cond_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1665
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    goto :goto_0
.end method
