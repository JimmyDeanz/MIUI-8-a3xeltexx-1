.class Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolListenerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    .prologue
    .line 3745
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    .line 3746
    const-string v0, "SoundPoolListenerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3747
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3752
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3753
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 3755
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3756
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3757
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v2, Lcom/android/server/audio/AudioService$SoundPoolCallback;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioService$SoundPoolCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$2202(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 3758
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 3760
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3761
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3762
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3763
    return-void

    .line 3761
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
