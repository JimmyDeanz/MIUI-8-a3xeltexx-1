.class public abstract Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.super Ljava/lang/Object;
.source "AbsCocktailBarStatePolicy.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailBarStateHandler:Landroid/os/Handler;

.field private mCocktailBarStateThread:Landroid/os/HandlerThread;

.field protected mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

.field private final mLockMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

.field protected mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findModeLock(I)Landroid/util/SparseBooleanArray;
    .locals 2
    .param p1, "key"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .local v0, "modeLock":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    .end local v0    # "modeLock":Landroid/util/SparseBooleanArray;
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .restart local v0    # "modeLock":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected cancelHideTimer()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected clearMessageChangeVisibility()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected clearMessageUpdateStateFromSystemDelayed()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, ""

    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[LockState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CocktailBarWindowType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WindowType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    return-object v0
.end method

.method public getLockState()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    return v0
.end method

.method public getWindowType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    return v0
.end method

.method public abstract handleChangeVisibility(I)V
.end method

.method public abstract handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
.end method

.method public abstract handleNotifyState(I)V
.end method

.method public abstract handleRefreshState()V
.end method

.method public abstract handleUpdateActivate(Z)V
.end method

.method public abstract handleUpdateCocktailBarWindowType(ILjava/lang/String;)V
.end method

.method public abstract handleUpdatePosition(I)V
.end method

.method public abstract handleUpdateState(ZZ)V
.end method

.method public abstract handleUpdateStateFromSystem(IZ)V
.end method

.method public abstract handleUpdateVisibility(I)V
.end method

.method protected hasMessageUpdateStateFromSystemDelayed()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CocktailBarVisibility"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyStateToBinder(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected refreshHideTimer(I)Z
    .locals 2
    .param p1, "duration"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->cancelHideTimer()V

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->startHideTimer(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshState()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected sendMessageChangeVisibility(IJ)V
    .locals 6
    .param p1, "visibility"    # I
    .param p2, "delayMills"    # J

    .prologue
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected sendMessageUpdateStateFromSystemDelayed(IJ)V
    .locals 6
    .param p1, "windowType"    # I
    .param p2, "delayMills"    # J

    .prologue
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLockState(IZ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "flagOn"    # Z

    .prologue
    invoke-virtual {p0, p1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->setLockState(IZI)V

    return-void
.end method

.method public setLockState(IZI)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "flagOn"    # Z
    .param p3, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->findModeLock(I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .local v0, "modeLock":Landroid/util/SparseBooleanArray;
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    or-int/2addr v2, p1

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    goto :goto_0
.end method

.method protected startHideTimer(I)V
    .locals 6
    .param p1, "duration"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateActivate(Z)V
    .locals 6
    .param p1, "activate"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v4, 0x31

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCocktailBarWindowType(ILjava/lang/String;)V
    .locals 5
    .param p1, "windowType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updatePosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateState(ZZ)V
    .locals 7
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v5, v6, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v4

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateStateFromSystem(I)V
    .locals 5
    .param p1, "windowType"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateVisibility(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
