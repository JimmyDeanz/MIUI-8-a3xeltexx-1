.class Landroid/net/ConnectivityManager$CallbackHandler;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager.CallbackHandler"


# instance fields
.field private final mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p4, "refCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "cm"    # Landroid/net/ConnectivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Landroid/net/ConnectivityManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2872
    .local p3, "callbackMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;>;"
    iput-object p1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    .line 2873
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2874
    iput-object p3, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    .line 2875
    iput-object p4, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2876
    iput-object p5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCm:Landroid/net/ConnectivityManager;

    .line 2877
    return-void
.end method

.method private getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 4
    .param p1, "req"    # Landroid/net/NetworkRequest;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2988
    iget-object v2, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2989
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2990
    .local v0, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2991
    if-nez v0, :cond_0

    .line 2992
    const-string v1, "ConnectivityManager.CallbackHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_0
    return-object v0

    .line 2990
    .end local v0    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "c"    # Ljava/lang/Class;

    .prologue
    .line 2983
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2882
    const-class v6, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkRequest;

    .line 2883
    .local v5, "request":Landroid/net/NetworkRequest;
    const-class v6, Landroid/net/Network;

    invoke-direct {p0, p1, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Network;

    .line 2884
    .local v4, "network":Landroid/net/Network;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2980
    :cond_0
    :goto_0
    return-void

    .line 2886
    :pswitch_0
    const-string v6, "PRECHECK"

    invoke-direct {p0, v5, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2887
    .local v1, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_0

    .line 2888
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager$NetworkCallback;->onPreCheck(Landroid/net/Network;)V

    goto :goto_0

    .line 2893
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_1
    const-string v6, "AVAILABLE"

    invoke-direct {p0, v5, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2894
    .restart local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_0

    .line 2895
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    goto :goto_0

    .line 2900
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_2
    const-string v6, "LOSING"

    invoke-direct {p0, v5, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2901
    .restart local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_0

    .line 2902
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v6}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    goto :goto_0

    .line 2907
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_3
    const-string v6, "LOST"

    invoke-direct {p0, v5, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2908
    .restart local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_0

    .line 2909
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    goto :goto_0

    .line 2914
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_4
    const-string v6, "UNAVAIL"

    invoke-direct {p0, v5, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2915
    .restart local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_0

    .line 2916
    invoke-virtual {v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    goto :goto_0

    .line 2921
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_5
    const-string v6, "CAP_CHANGED"

    invoke-direct {p0, v5, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2922
    .restart local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_0

    .line 2923
    const-class v6, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 2926
    .local v2, "cap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v4, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    .line 2931
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v2    # "cap":Landroid/net/NetworkCapabilities;
    :pswitch_6
    const-string v6, "IP_CHANGED"

    invoke-direct {p0, v5, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2932
    .restart local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_0

    .line 2933
    const-class v6, Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 2936
    .local v3, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v1, v4, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    goto :goto_0

    .line 2941
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v3    # "lp":Landroid/net/LinkProperties;
    :pswitch_7
    const-string v6, "SUSPENDED"

    invoke-direct {p0, v5, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2942
    .restart local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_0

    .line 2943
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkSuspended(Landroid/net/Network;)V

    goto :goto_0

    .line 2948
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_8
    const-string v6, "RESUMED"

    invoke-direct {p0, v5, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallback(Landroid/net/NetworkRequest;Ljava/lang/String;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2949
    .restart local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_0

    .line 2950
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkResumed(Landroid/net/Network;)V

    goto :goto_0

    .line 2955
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_9
    const/4 v1, 0x0

    .line 2956
    .restart local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v7, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 2957
    :try_start_0
    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    move-object v1, v0

    .line 2958
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2959
    if-eqz v1, :cond_2

    .line 2960
    iget-object v7, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2961
    :try_start_1
    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v6

    if-nez v6, :cond_1

    .line 2962
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 2964
    :cond_1
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 2958
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 2966
    :cond_2
    const-string v6, "ConnectivityManager.CallbackHandler"

    const-string v7, "callback not found for RELEASED message"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2971
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    :pswitch_a
    const-string v6, "ConnectivityManager.CallbackHandler"

    const-string v7, "Listener quitting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 2976
    :pswitch_b
    iget-object v7, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkCapabilities;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V
    invoke-static {v7, v6, v8}, Landroid/net/ConnectivityManager;->access$700(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V

    goto/16 :goto_0

    .line 2884
    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
