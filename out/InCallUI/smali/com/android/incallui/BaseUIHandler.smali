.class public abstract Lcom/android/incallui/BaseUIHandler;
.super Landroid/os/Handler;
.source "BaseUIHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field mWeakReference:Ljava/lang/ref/WeakReference;
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
    .line 13
    .local p0, "this":Lcom/android/incallui/BaseUIHandler;, "Lcom/android/incallui/BaseUIHandler<TT;>;"
    .local p1, "thiz":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/BaseUIHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract doMainTask(Ljava/lang/Object;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 19
    .local p0, "this":Lcom/android/incallui/BaseUIHandler;, "Lcom/android/incallui/BaseUIHandler<TT;>;"
    iget-object v1, p0, Lcom/android/incallui/BaseUIHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 20
    .local v0, "thiz":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 21
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 22
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/BaseUIHandler;->doMainTask(Ljava/lang/Object;Landroid/os/Message;)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    instance-of v1, v0, Landroid/app/Fragment;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 26
    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/BaseUIHandler;->doMainTask(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/BaseUIHandler;->doMainTask(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0
.end method
