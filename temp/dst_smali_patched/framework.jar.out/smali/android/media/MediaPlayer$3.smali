.class Landroid/media/MediaPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fFormat:Landroid/media/MediaFormat;

.field final synthetic val$fIs:Ljava/io/InputStream;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 10

    .prologue
    const/16 v5, 0x385

    iget-object v6, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v6}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v6}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v6

    iget-object v7, p0, Landroid/media/MediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v6, v7}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v4

    .local v4, "track":Landroid/media/SubtitleTrack;
    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .local v2, "scanner":Ljava/util/Scanner;
    const/4 v0, 0x0

    .local v0, "contents":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    iget-object v6, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    const-string v7, "UTF-8"

    invoke-direct {v3, v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_1
    const-string v6, "\\A"

    invoke-virtual {v3, v6}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v0

    iget-object v5, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6

    :try_start_2
    iget-object v5, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    iget-object v7, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v5, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_2
    iget-object v5, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    const/16 v5, 0x323

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    const-string v6, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v6, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;
    invoke-static {v6}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6

    :try_start_6
    iget-object v7, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;
    invoke-static {v7}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v7

    iget-object v8, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v5

    :goto_2
    iget-object v6, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;
    invoke-static {v6}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6

    :try_start_8
    iget-object v7, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;
    invoke-static {v7}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v7

    iget-object v8, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_3
    throw v5

    :catchall_3
    move-exception v5

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v5

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catchall_4
    move-exception v5

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v5

    :catchall_5
    move-exception v5

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_2

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    invoke-direct {p0}, Landroid/media/MediaPlayer$3;->addTrack()I

    move-result v1

    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method
