.class Lcom/android/server/wifi/WifiServiceImpl$LockList;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiServiceImpl$WifiLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 1

    .prologue
    .line 5074
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    .line 5076
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiServiceImpl$1;

    .prologue
    .line 5071
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/WifiServiceImpl$LockList;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$LockList;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 5071
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/WifiServiceImpl$LockList;Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$LockList;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .prologue
    .line 5071
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->addLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$LockList;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 5071
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/WifiServiceImpl$LockList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$LockList;

    .prologue
    .line 5071
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$LockList;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 5071
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    move-result-object v0

    return-object v0
.end method

.method private addLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 1
    .param p1, "lock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .prologue
    .line 5105
    iget-object v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_0

    .line 5106
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5108
    :cond_0
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 5131
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .line 5132
    .local v1, "l":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5133
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 5135
    .end local v1    # "l":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :cond_0
    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 5122
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 5123
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5124
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mBinder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 5127
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 5123
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5127
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 5111
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    .line 5112
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 5113
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .line 5114
    .local v1, "ret":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->unlinkDeathRecipient()V

    .line 5117
    .end local v1    # "ret":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized getStrongestLockMode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5083
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 5095
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 5087
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$5200(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$5300(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 5088
    const/4 v0, 0x3

    goto :goto_0

    .line 5091
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$5400(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$5500(Lcom/android/server/wifi/WifiServiceImpl;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-gt v1, v2, :cond_0

    .line 5095
    const/4 v0, 0x2

    goto :goto_0

    .line 5083
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasLocks()Z
    .locals 1

    .prologue
    .line 5079
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateWorkSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 5099
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5100
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5102
    :cond_0
    monitor-exit p0

    return-void

    .line 5099
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
