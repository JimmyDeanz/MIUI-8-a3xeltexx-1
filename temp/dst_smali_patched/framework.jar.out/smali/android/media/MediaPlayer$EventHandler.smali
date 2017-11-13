.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mNativeContext:J
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    const-string v12, "MediaPlayer"

    const-string v13, "mediaplayer went away with unhandled events"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    const-string v12, "MediaPlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown message type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/16 v13, 0x2c7

    if-eq v12, v13, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v12, v13}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/RuntimeException;
    const/16 v12, 0x64

    const/4 v13, 0x1

    const/16 v14, -0x3f2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .local v6, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "msg2":Landroid/os/Message;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v12, v13}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v13, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v12, v13}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;Z)V

    # getter for: Landroid/media/MediaPlayer;->MMFWContextAware:Z
    invoke-static {}, Landroid/media/MediaPlayer;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareSend:Z
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v13, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "TYPE"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "complete"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "URI"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    # getter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "ID"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static/range {v16 .. v16}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "PID"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    # getter for: Landroid/media/MediaPlayer;->mPid:I
    invoke-static/range {v16 .. v16}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v12, v13, v14}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v12, "MediaPlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(complete) - id("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v9

    .local v9, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v12, "MediaPlayer"

    const-string v13, "handleMessage MEDIA_STOPPED e : "

    invoke-static {v12, v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/NullPointerException;
    :sswitch_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v9

    .restart local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v9, :cond_0

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const/4 v13, 0x7

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v9, v12}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .end local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/NullPointerException;
    const-string v12, "MediaPlayer"

    const-string v13, "handleMessage MEDIA_STARTED or MEDIA_PAUSED e : "

    invoke-static {v12, v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .end local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v12, v13, v14}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v12, v13}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_5
    :sswitch_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v9

    .restart local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v12}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .end local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/NullPointerException;
    const-string v12, "MediaPlayer"

    const-string v13, "handleMessage MEDIA_SKIPPED e : "

    invoke-static {v12, v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/NullPointerException;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v12, v13, v14, v15}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_8

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v13, 0x1

    # setter for: Landroid/media/MediaPlayer;->mIsVideo:Z
    invoke-static {v12, v13}, Landroid/media/MediaPlayer;->access$1902(Landroid/media/MediaPlayer;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mIsStart:Z
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mAIAContext:Z
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v13, "android.media.IMediaPlayer.videoexist"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v12, v13, v14}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v12, "MediaPlayer"

    const-string v13, "sendBroadcast android.media.IMediaPlayer.videoexist"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v12, "MediaPlayer"

    const-string v13, "context is 1, don\'t send BroadcastIntent!!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v12, "MediaPlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Don\'t send intent. msg.arg1 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", msg.arg2 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_9
    const-string v12, "MediaPlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, "error_was_handled":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/16 v13, -0x31

    if-eq v12, v13, :cond_9

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/16 v13, -0x3c

    if-eq v12, v13, :cond_9

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/16 v13, -0x3d

    if-eq v12, v13, :cond_9

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/16 v13, -0x40

    if-ne v12, v13, :cond_d

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v12, :cond_c

    const-string v13, "MediaPlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PlayReadyAcquistion Failed \n sending onPlayReadyError "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move/from16 v0, v16

    invoke-interface {v13, v14, v15, v0, v12}, Landroid/media/MediaPlayer$OnPlayReadyErrorListener;->onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v4

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v12

    if-eqz v12, :cond_b

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v12, v13}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v13, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v12, v13}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_0

    :cond_c
    const-string v12, "MediaPlayer"

    const-string v13, "PlayReadyAcquistion Failed \n sending onPlayReadyError NULL"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v12, v13, v14, v15}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v4

    goto :goto_3

    :cond_d
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/16 v13, 0x12c

    if-ne v12, v13, :cond_e

    const-string v12, "MediaPlayer"

    const-string v13, "License Not Found, propagate error to MoviePlaybackService.java"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v12, v13, v14, v15}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v4

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v12, v13, v14, v15}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v4

    goto/16 :goto_3

    .end local v4    # "error_was_handled":Z
    :sswitch_a
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    sparse-switch v12, :sswitch_data_1

    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v12, v13, v14, v15}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    :sswitch_b
    const-string v12, "MediaPlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Info ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :sswitch_d
    const/16 v12, 0x322

    move-object/from16 v0, p1

    iput v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_4

    :catch_4
    move-exception v3

    .local v3, "e":Ljava/lang/RuntimeException;
    const/16 v12, 0x64

    const/4 v13, 0x1

    const/16 v14, -0x3f2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .restart local v6    # "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "msg2":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v9

    .restart local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v9, :cond_f

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/16 v13, 0x2bd

    if-ne v12, v13, :cond_10

    const/4 v12, 0x1

    :goto_6
    invoke-virtual {v9, v12}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto/16 :goto_4

    :cond_10
    const/4 v12, 0x0

    goto :goto_6

    .end local v9    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v12, v12, Landroid/os/Parcel;

    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Parcel;

    .local v7, "parcel":Landroid/os/Parcel;
    new-instance v8, Landroid/media/TimedText;

    invoke-direct {v8, v7}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .local v8, "text":Landroid/media/TimedText;
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v12, v13, v8}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .end local v7    # "parcel":Landroid/os/Parcel;
    .end local v8    # "text":Landroid/media/TimedText;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v12, v12, Landroid/os/Parcel;

    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Parcel;

    .restart local v7    # "parcel":Landroid/os/Parcel;
    new-instance v2, Landroid/media/SubtitleData;

    invoke-direct {v2, v7}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .local v2, "data":Landroid/media/SubtitleData;
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v12, v13, v2}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    goto/16 :goto_0

    .end local v2    # "data":Landroid/media/SubtitleData;
    .end local v7    # "parcel":Landroid/os/Parcel;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v12, v12, Landroid/os/Parcel;

    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Parcel;

    .restart local v7    # "parcel":Landroid/os/Parcel;
    invoke-static {v7}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v2

    .local v2, "data":Landroid/media/TimedMetaData;
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v12, v13, v2}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    goto/16 :goto_0

    .end local v2    # "data":Landroid/media/TimedMetaData;
    .end local v7    # "parcel":Landroid/os/Parcel;
    :sswitch_12
    # getter for: Landroid/media/MediaPlayer;->MMFWContextAware:Z
    invoke-static {}, Landroid/media/MediaPlayer;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v12, v12, Landroid/os/Parcel;

    if-eqz v12, :cond_13

    const-string v12, "MediaPlayer"

    const-string v13, "send context aware event"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Parcel;

    .restart local v7    # "parcel":Landroid/os/Parcel;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "type":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "uri":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "id":I
    const-string v12, "start"

    invoke-virtual {v10, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v13, 0x1

    # setter for: Landroid/media/MediaPlayer;->mContextAwareSend:Z
    invoke-static {v12, v13}, Landroid/media/MediaPlayer;->access$1102(Landroid/media/MediaPlayer;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v12, v5}, Landroid/media/MediaPlayer;->access$1302(Landroid/media/MediaPlayer;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static {v12, v11}, Landroid/media/MediaPlayer;->access$1202(Landroid/media/MediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v13, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "TYPE"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    const/4 v15, 0x2

    const-string v16, "URI"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object v11, v14, v15

    const/4 v15, 0x4

    const-string v16, "ID"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "PID"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    # getter for: Landroid/media/MediaPlayer;->mPid:I
    invoke-static/range {v16 .. v16}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v12, v13, v14}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    const-string v12, "MediaPlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") - id ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "id":I
    .end local v7    # "parcel":Landroid/os/Parcel;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mPendingCommand:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2800(Landroid/media/MediaPlayer;)I

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mPendingCommand:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$2800(Landroid/media/MediaPlayer;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v13, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "TYPE"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "pause"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "URI"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    # getter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "ID"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static/range {v16 .. v16}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "PID"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    # getter for: Landroid/media/MediaPlayer;->mPid:I
    invoke-static/range {v16 .. v16}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v12, v13, v14}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v12, "MediaPlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(pause) - id("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v13, 0x0

    # setter for: Landroid/media/MediaPlayer;->mPendingCommand:I
    invoke-static {v12, v13}, Landroid/media/MediaPlayer;->access$2802(Landroid/media/MediaPlayer;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v13, 0x0

    # setter for: Landroid/media/MediaPlayer;->mContextAwareSend:Z
    invoke-static {v12, v13}, Landroid/media/MediaPlayer;->access$1102(Landroid/media/MediaPlayer;Z)Z

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const-string v13, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "TYPE"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "stop"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "URI"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    # getter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "ID"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static/range {v16 .. v16}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "PID"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v16, v0

    # getter for: Landroid/media/MediaPlayer;->mPid:I
    invoke-static/range {v16 .. v16}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v12, v13, v14}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v12, "MediaPlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(stop) - id("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v14}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_7
        0x63 -> :sswitch_f
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
        0x12c -> :sswitch_12
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_e
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
