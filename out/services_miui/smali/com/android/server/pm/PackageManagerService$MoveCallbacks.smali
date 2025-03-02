.class Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveCallbacks"
.end annotation


# static fields
.field private static final MSG_CREATED:I = 0x1

.field private static final MSG_STATUS_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/IPackageMoveObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastStatus:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 16754
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16748
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 16751
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    .line 16755
    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 16744
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 16744
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;IIJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 16744
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(IIJ)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    .prologue
    .line 16744
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    .locals 6
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .param p2, "what"    # I
    .param p3, "args"    # Lcom/android/internal/os/SomeArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16782
    packed-switch p2, :pswitch_data_0

    .line 16792
    :goto_0
    return-void

    .line 16784
    :pswitch_0
    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p1, v1, v0}, Landroid/content/pm/IPackageMoveObserver;->onCreated(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 16788
    :pswitch_1
    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v1, v2, v4, v5}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V

    goto :goto_0

    .line 16782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyCreated(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 16795
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16797
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 16798
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 16799
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 16800
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 16801
    return-void
.end method

.method private notifyStatusChanged(II)V
    .locals 2
    .param p1, "moveId"    # I
    .param p2, "status"    # I

    .prologue
    .line 16804
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(IIJ)V

    .line 16805
    return-void
.end method

.method private notifyStatusChanged(IIJ)V
    .locals 5
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    .line 16808
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16810
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 16811
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 16812
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 16813
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 16814
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 16816
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    monitor-enter v2

    .line 16817
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16818
    monitor-exit v2

    .line 16819
    return-void

    .line 16818
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 16767
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 16768
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 16769
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 16770
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IPackageMoveObserver;

    .line 16772
    .local v1, "callback":Landroid/content/pm/IPackageMoveObserver;
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, v4, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16769
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16776
    .end local v1    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 16777
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 16778
    return-void

    .line 16773
    .restart local v1    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public register(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    .line 16758
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 16759
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    .line 16762
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 16763
    return-void
.end method
