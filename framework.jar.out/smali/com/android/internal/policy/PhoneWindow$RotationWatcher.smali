.class Lcom/android/internal/policy/PhoneWindow$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationWatcher"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsWatching:Z

.field private final mRotationChanged:Ljava/lang/Runnable;

.field private final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/PhoneWindow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 5643
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 5645
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;-><init>(Lcom/android/internal/policy/PhoneWindow$RotationWatcher;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    .line 5650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 4
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 5660
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v2

    .line 5661
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5663
    :try_start_1
    sget-object v1, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    .line 5664
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    .line 5665
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5670
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5671
    monitor-exit v2

    .line 5672
    return-void

    .line 5666
    :catch_0
    move-exception v0

    .line 5667
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v3, "Couldn\'t start watching for device rotation"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5671
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method dispatchRotationChanged()V
    .locals 5

    .prologue
    .line 5690
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v4

    .line 5691
    const/4 v0, 0x0

    .line 5692
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 5693
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 5694
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    .line 5695
    .local v2, "win":Lcom/android/internal/policy/PhoneWindow;
    if-eqz v2, :cond_0

    .line 5696
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->onOptionsPanelRotationChanged()V

    .line 5697
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5699
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5702
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/PhoneWindow;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5703
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5657
    return-void
.end method

.method public removeWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 5
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 5675
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v4

    .line 5676
    const/4 v0, 0x0

    .line 5677
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 5678
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 5679
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    .line 5680
    .local v2, "win":Lcom/android/internal/policy/PhoneWindow;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    .line 5681
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5686
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/PhoneWindow;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5683
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    .restart local v2    # "win":Lcom/android/internal/policy/PhoneWindow;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5686
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/PhoneWindow;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5687
    return-void
.end method
