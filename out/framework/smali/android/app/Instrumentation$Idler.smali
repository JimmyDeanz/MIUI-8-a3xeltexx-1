.class final Landroid/app/Instrumentation$Idler;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Idler"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private mIdle:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 2026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2027
    iput-object p1, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    .line 2028
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    .line 2029
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2035
    :cond_0
    monitor-enter p0

    .line 2036
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    .line 2037
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2038
    monitor-exit p0

    .line 2039
    const/4 v0, 0x0

    return v0

    .line 2038
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForIdle()V
    .locals 1

    .prologue
    .line 2043
    monitor-enter p0

    .line 2044
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2046
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2047
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2050
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 2051
    return-void

    .line 2050
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
