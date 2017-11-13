.class public Lcom/android/phone/NetworkQueryService;
.super Landroid/app/Service;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkQueryService$LocalBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/android/phone/INetworkQueryService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/INetworkQueryServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLocalBinder:Landroid/os/IBinder;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    new-instance v0, Lcom/android/phone/NetworkQueryService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$LocalBinder;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    .line 76
    new-instance v0, Lcom/android/phone/NetworkQueryService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$1;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 100
    new-instance v0, Lcom/android/phone/NetworkQueryService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$2;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkQueryService;)Lcom/android/phone/INetworkQueryService$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkQueryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/NetworkQueryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return p1
.end method

.method private broadcastQueryResults(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 200
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 201
    const/4 v3, -0x1

    :try_start_0
    iput v3, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 204
    if-nez p1, :cond_0

    .line 205
    const-string v3, "AsyncResult is null."

    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 206
    monitor-exit v4

    .line 227
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 212
    .local v1, "exception":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncResult has exception "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_2

    .line 216
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/INetworkQueryServiceCallback;

    .line 217
    .local v0, "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting results to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :try_start_1
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v0, v3, v1}, Lcom/android/phone/INetworkQueryServiceCallback;->onQueryComplete(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 211
    .end local v0    # "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    .end local v1    # "exception":I
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 225
    .restart local v1    # "exception":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 226
    monitor-exit v4

    goto :goto_0

    .end local v1    # "exception":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 220
    .restart local v0    # "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    .restart local v1    # "exception":I
    .restart local v2    # "i":I
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "NetworkQuery"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    const-string v0, "binding service implementation"

    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 173
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 180
    return-void
.end method
