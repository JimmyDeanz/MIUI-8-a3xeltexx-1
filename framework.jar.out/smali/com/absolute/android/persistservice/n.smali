.class Lcom/absolute/android/persistservice/n;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/l;

.field private b:Ljava/util/Hashtable;

.field private c:Lcom/absolute/android/persistservice/o;


# direct methods
.method protected constructor <init>(Lcom/absolute/android/persistservice/l;)V
    .locals 1

    .prologue
    .line 629
    iput-object p1, p0, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    .line 630
    const-string v0, "RunningServicesWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/n;->b:Ljava/util/Hashtable;

    .line 633
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/n;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->b:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 656
    monitor-enter p0

    .line 657
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Lcom/absolute/android/persistservice/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 660
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    :try_start_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    iget-object v1, v1, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    const-string v2, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 666
    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 703
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    monitor-exit p0

    return-void

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Lcom/absolute/android/persistservice/o;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/absolute/android/persistservice/o;->removeMessages(ILjava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->b:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    iget-object v0, v0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting running services monitoring check for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Lcom/absolute/android/persistservice/o;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/absolute/android/persistservice/o;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->c:Lcom/absolute/android/persistservice/o;

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/absolute/android/persistservice/o;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    monitor-exit p0

    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 715
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 641
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 643
    monitor-enter p0

    .line 644
    :try_start_0
    new-instance v0, Lcom/absolute/android/persistservice/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/o;-><init>(Lcom/absolute/android/persistservice/n;Lcom/absolute/android/persistservice/m;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Lcom/absolute/android/persistservice/o;

    .line 647
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 648
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 650
    return-void

    .line 648
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
