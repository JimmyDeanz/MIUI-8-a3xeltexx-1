.class public Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;
.super Ljava/lang/Object;
.source "CocktailBarFeedsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;


# instance fields
.field private mFeedsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;-><init>()V

    sput-object v0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->sInstance:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->sInstance:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    return-object v0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 6

    .prologue
    .line 145
    const-string v2, "[CocktailBarFeedManager]"

    .line 146
    .local v2, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    iget-object v4, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 148
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;

    .line 149
    .local v1, "listener":Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    goto :goto_0

    .line 152
    .end local v1    # "listener":Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    :cond_0
    monitor-exit v4

    .line 153
    return-object v2

    .line 152
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public registerFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 33
    if-nez p1, :cond_0

    .line 34
    sget-object v2, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerFeedsListenerCallback : binder is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return v1

    .line 37
    :cond_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;

    .line 39
    .local v0, "listener":Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    if-eqz v0, :cond_1

    .line 40
    iget-object v2, v0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    sget-object v2, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerFeedsListenerCallback : already registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    monitor-exit v8

    goto :goto_0

    .line 54
    .end local v0    # "listener":Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;-><init>(Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .restart local v0    # "listener":Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v8

    .line 55
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :catch_0
    move-exception v6

    .line 51
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerFeedsListenerCallback : exception in linkToDeath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public unregisterFeedsListenerCallback(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    sget-object v3, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterFeedsListenerCallback : binder is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "listenerInfo":Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;

    .line 66
    .local v1, "listener":Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    if-eqz v1, :cond_1

    .line 67
    iget-object v3, v1, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    move-object v2, v1

    goto :goto_1

    .line 72
    .end local v1    # "listener":Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    :cond_2
    if-nez v2, :cond_3

    .line 73
    sget-object v3, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unregisterFeedsListenerCallback : cannot find the matched listener"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    monitor-exit v4

    goto :goto_0

    .line 83
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 76
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 77
    iget-object v3, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_4
    if-eqz v2, :cond_5

    .line 80
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 82
    :cond_5
    iget-object v3, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 83
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateFeeds(ILjava/util/List;)V
    .locals 4
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    iget-object v3, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;

    .line 89
    .local v1, "listener":Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1, p1, p2}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->onFeedsUpdated(ILjava/util/List;)V

    goto :goto_0

    .line 93
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    return-void
.end method
