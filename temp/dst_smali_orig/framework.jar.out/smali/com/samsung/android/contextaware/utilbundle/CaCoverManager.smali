.class public Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
.super Ljava/lang/Object;
.source "CaCoverManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
.implements Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;


# static fields
.field private static final COVER_TYPE_FLIP:I = 0x1

.field private static final COVER_TYPE_NONE:I = 0x0

.field private static final COVER_TYPE_VIEW:I = 0x2

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCurrentCoverState:Z

.field private mCurrentCoverType:I

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCurrentCoverState:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCurrentCoverType:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCurrentCoverState:Z

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCurrentCoverType:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->notifyObservers(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public static getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyObservers(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;

    .local v1, "observer":Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;->onCoverStatusChanged(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .end local v1    # "observer":Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;
    :cond_1
    return-void
.end method


# virtual methods
.method public bootCompleted()V
    .locals 4

    .prologue
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "looper null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCoverState()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCurrentCoverState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCurrentCoverState:Z

    return v0
.end method

.method public getCoverType()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCurrentCoverType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCurrentCoverType:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public initializeManager(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;)V

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public terminateManager()V
    .locals 4

    .prologue
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
