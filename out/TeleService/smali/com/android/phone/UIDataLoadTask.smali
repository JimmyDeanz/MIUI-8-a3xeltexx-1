.class public abstract Lcom/android/phone/UIDataLoadTask;
.super Landroid/os/AsyncTask;
.source "UIDataLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/UIDataLoadTask;->mReference:Ljava/lang/ref/WeakReference;

    .line 19
    return-void
.end method

.method private isExpired(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/UIDataLoadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 106
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :goto_0
    return v0

    .line 101
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 102
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    goto :goto_0

    .line 103
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_2
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 104
    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    check-cast p1, Landroid/app/Fragment;

    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_5
    move v0, v1

    .line 106
    goto :goto_0
.end method


# virtual methods
.method protected doCancelled()V
    .locals 0

    .prologue
    .line 90
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    return-void
.end method

.method protected doCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 87
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    return-void
.end method

.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 23
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    iget-object v1, p0, Lcom/android/phone/UIDataLoadTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0}, Lcom/android/phone/UIDataLoadTask;->isExpired(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 27
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/UIDataLoadTask;->doTask([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract doPrepare()V
.end method

.method protected doProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 93
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    return-void
.end method

.method protected abstract doTask([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected abstract doUI(Ljava/lang/Object;)V
.end method

.method public getReferenceObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    iget-object v0, p0, Lcom/android/phone/UIDataLoadTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 60
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    iget-object v1, p0, Lcom/android/phone/UIDataLoadTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0}, Lcom/android/phone/UIDataLoadTask;->isExpired(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UIDataLoadTask;->doCancelled()V

    goto :goto_0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 51
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    iget-object v1, p0, Lcom/android/phone/UIDataLoadTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0}, Lcom/android/phone/UIDataLoadTask;->isExpired(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/UIDataLoadTask;->doCancelled(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    iget-object v1, p0, Lcom/android/phone/UIDataLoadTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0}, Lcom/android/phone/UIDataLoadTask;->isExpired(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/UIDataLoadTask;->doUI(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    iget-object v1, p0, Lcom/android/phone/UIDataLoadTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0}, Lcom/android/phone/UIDataLoadTask;->isExpired(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UIDataLoadTask;->doPrepare()V

    goto :goto_0
.end method

.method protected onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 69
    .local p0, "this":Lcom/android/phone/UIDataLoadTask;, "Lcom/android/phone/UIDataLoadTask<TT;>;"
    iget-object v1, p0, Lcom/android/phone/UIDataLoadTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0}, Lcom/android/phone/UIDataLoadTask;->isExpired(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/UIDataLoadTask;->doProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0
.end method
