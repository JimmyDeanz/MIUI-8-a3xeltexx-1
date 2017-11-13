.class Lcom/android/server/power/ShutdownDialog$SoundThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundThread"
.end annotation


# instance fields
.field private final completeSignal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    const-string v0, "ShutdownDialog"

    const-string v1, "!@onCompletion(MediaPlayer arg0) called !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ShutdownDialog"

    const-string v2, "MediaPlayer is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->running:Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const-string v1, "ShutdownDialog"

    const-string v2, "Start play sound file"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string v1, "ShutdownDialog"

    const-string v2, "Set sound complete audioParam"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "poweroff_sound=suspend"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const-string v1, "ShutdownDialog"

    const-string v2, "H/W workaround. wait a sec before power off"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->running:Z

    const-string v1, "ShutdownDialog"

    const-string v2, "Shutdown sound done"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "ShutdownDialog"

    const-string v2, "sound thread IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ShutdownDialog"

    const-string v2, "sound thread exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownDialog"

    const-string v2, "Wait fail"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
