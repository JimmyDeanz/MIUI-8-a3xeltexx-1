.class Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;
.super Ljava/lang/Object;
.source "IPsecClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IPsecServiceConnection"
.end annotation


# static fields
.field private static final COMPONENT:Ljava/lang/String; = "IPsecRemoteConnection"

.field private static final TAG:Ljava/lang/String; = "IPSC"


# instance fields
.field final synthetic this$0:Lcom/ipsec/client/IPsecClient;


# direct methods
.method private constructor <init>(Lcom/ipsec/client/IPsecClient;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ipsec/client/IPsecClient;
    .param p2, "x1"    # Lcom/ipsec/client/IPsecClient$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;-><init>(Lcom/ipsec/client/IPsecClient;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onServiceConnected(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .local v3, "eventError":Lcom/ipsec/client/IPsecError;
    const/4 v1, 0x0

    .local v1, "eventData":Lcom/ipsec/client/IPsecEventData;
    const/4 v4, 0x0

    .local v4, "listener":Lcom/ipsec/client/IIPsecListener;
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    invoke-static {p2}, Lcom/ipsec/client/IPsecServiceInterface;->getInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecService;

    move-result-object v8

    # setter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v7, v8}, Lcom/ipsec/client/IPsecClient;->access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;

    const/4 v6, 0x0

    .local v6, "resultBundle":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, "parameterBundle":Landroid/os/Bundle;
    const-string v7, "version"

    const-string v8, "5"

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$400(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IIPsecService;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/ipsec/client/IIPsecService;->startService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$400(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IIPsecService;

    move-result-object v7

    iget-object v8, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IPsecServiceCallbackBinder;
    invoke-static {v8}, Lcom/ipsec/client/IPsecClient;->access$500(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IPsecServiceCallbackBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ipsec/client/IIPsecService;->registerCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v7, :cond_0

    if-nez v6, :cond_3

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    const/4 v8, 0x0

    # setter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v7, v8}, Lcom/ipsec/client/IPsecClient;->access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "onServiceConnected(): startService() failed: null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "listener":Lcom/ipsec/client/IIPsecListener;
    check-cast v4, Lcom/ipsec/client/IIPsecListener;

    .restart local v4    # "listener":Lcom/ipsec/client/IIPsecListener;
    :cond_1
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v7, :cond_5

    if-eqz v4, :cond_2

    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    invoke-interface {v4, v7, v12}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onServiceConnected(): startService() remote exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .end local v6    # "resultBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v7

    :goto_3
    iget-object v8, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v8}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    .restart local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v6    # "resultBundle":Landroid/os/Bundle;
    :cond_3
    :try_start_4
    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    const/4 v8, 0x0

    # setter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v7, v8}, Lcom/ipsec/client/IPsecClient;->access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;

    new-instance v2, Lcom/ipsec/client/IPsecEventData;

    invoke-direct {v2}, Lcom/ipsec/client/IPsecEventData;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "eventData":Lcom/ipsec/client/IPsecEventData;
    .local v2, "eventData":Lcom/ipsec/client/IPsecEventData;
    :try_start_5
    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onServiceConnected(): startService() failed: error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "error"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v2

    .end local v2    # "eventData":Lcom/ipsec/client/IPsecEventData;
    .restart local v1    # "eventData":Lcom/ipsec/client/IPsecEventData;
    goto/16 :goto_1

    :cond_4
    :try_start_6
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onServiceConnected(): startService(): version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "version"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {v4, v3, v1}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    :cond_6
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # invokes: Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;
    invoke-static {v7}, Lcom/ipsec/client/IPsecClient;->access$600(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IPsecError;

    goto/16 :goto_2

    .end local v1    # "eventData":Lcom/ipsec/client/IPsecEventData;
    .restart local v2    # "eventData":Lcom/ipsec/client/IPsecEventData;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "eventData":Lcom/ipsec/client/IPsecEventData;
    .restart local v1    # "eventData":Lcom/ipsec/client/IPsecEventData;
    goto/16 :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onServiceDisconnected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    const/4 v5, 0x0

    # setter for: Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;
    invoke-static {v4, v5}, Lcom/ipsec/client/IPsecClient;->access$702(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;)Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    const/4 v5, 0x0

    # setter for: Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    invoke-static {v4, v5}, Lcom/ipsec/client/IPsecClient;->access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .local v0, "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ipsec/client/IPsecConnection;

    .local v1, "c":Lcom/ipsec/client/IPsecConnection;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    .end local v1    # "c":Lcom/ipsec/client/IPsecConnection;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v5}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4

    .restart local v0    # "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v3, 0x0

    .local v3, "listener":Lcom/ipsec/client/IIPsecListener;
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;->this$0:Lcom/ipsec/client/IPsecClient;

    # getter for: Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/ipsec/client/IPsecClient;->access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "listener":Lcom/ipsec/client/IIPsecListener;
    check-cast v3, Lcom/ipsec/client/IIPsecListener;

    .restart local v3    # "listener":Lcom/ipsec/client/IIPsecListener;
    :cond_1
    if-eqz v3, :cond_2

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    invoke-interface {v3, v4, v8}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    :cond_2
    return-void
.end method
