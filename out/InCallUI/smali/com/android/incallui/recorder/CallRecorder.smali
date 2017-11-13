.class public Lcom/android/incallui/recorder/CallRecorder;
.super Ljava/lang/Object;
.source "CallRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;
    }
.end annotation


# instance fields
.field private mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

.field private mContext:Landroid/content/Context;

.field private mMediaRecorder:Lmiui/media/Mp3Recorder;

.field private mOutFilePath:Ljava/lang/String;

.field private mStorageMonitor:Lcom/android/incallui/recorder/StorageMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/incallui/recorder/CallRecorder;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private supportCallStreamRecording(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getRecordingTimeInMillis()J
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder;->getRecordingTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public isCallRecording()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallRecordStateListener(Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    .line 44
    return-void
.end method

.method public startCallRecord(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "callerNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "callerNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 47
    const-string v5, "CallRecorder"

    const-string v8, "startCallRecord()"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mStorageMonitor:Lcom/android/incallui/recorder/StorageMonitor;

    if-nez v5, :cond_0

    .line 50
    new-instance v5, Lcom/android/incallui/recorder/StorageMonitor;

    iget-object v8, p0, Lcom/android/incallui/recorder/CallRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/incallui/recorder/StorageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mStorageMonitor:Lcom/android/incallui/recorder/StorageMonitor;

    .line 52
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mStorageMonitor:Lcom/android/incallui/recorder/StorageMonitor;

    new-instance v8, Lcom/android/incallui/recorder/CallRecorder$1;

    invoke-direct {v8, p0}, Lcom/android/incallui/recorder/CallRecorder$1;-><init>(Lcom/android/incallui/recorder/CallRecorder;)V

    invoke-virtual {v5, v8}, Lcom/android/incallui/recorder/StorageMonitor;->startMonitor(Lcom/android/incallui/recorder/StorageMonitor$Listener;)I

    move-result v1

    .line 59
    .local v1, "error":I
    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mStorageMonitor:Lcom/android/incallui/recorder/StorageMonitor;

    invoke-virtual {v5}, Lcom/android/incallui/recorder/StorageMonitor;->isUsingExternalStorage()Z

    move-result v5

    if-nez v5, :cond_5

    .line 60
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mStorageMonitor:Lcom/android/incallui/recorder/StorageMonitor;

    invoke-virtual {v5}, Lcom/android/incallui/recorder/StorageMonitor;->stopMonitor()V

    .line 61
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    if-eqz v5, :cond_2

    .line 62
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mStorageMonitor:Lcom/android/incallui/recorder/StorageMonitor;

    invoke-virtual {v5}, Lcom/android/incallui/recorder/StorageMonitor;->isUsingExternalStorage()Z

    move-result v5

    if-nez v5, :cond_3

    .line 63
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    invoke-interface {v5, v11}, Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;->onCallRecordFailed(I)V

    .line 132
    :cond_2
    :goto_0
    return-void

    .line 64
    :cond_3
    if-ne v1, v10, :cond_4

    .line 65
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    invoke-interface {v5, v10}, Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;->onCallRecordFailed(I)V

    goto :goto_0

    .line 67
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    const/4 v8, 0x6

    invoke-interface {v5, v8}, Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;->onCallRecordFailed(I)V

    goto :goto_0

    .line 73
    :cond_5
    const-string v3, "/MIUI/sound_recorder/call_rec"

    .line 74
    .local v3, "recordPathOfMIUI":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v4, "sampleDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 77
    invoke-static {v4, v9, v9, v9}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v5

    if-nez v5, :cond_6

    .line 78
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    invoke-interface {v5, v12}, Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;->onCallRecordFailed(I)V

    .line 79
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mStorageMonitor:Lcom/android/incallui/recorder/StorageMonitor;

    invoke-virtual {v5}, Lcom/android/incallui/recorder/StorageMonitor;->stopMonitor()V

    goto :goto_0

    .line 83
    :cond_6
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mContext:Landroid/content/Context;

    const-string v8, ".mp3"

    invoke-static {v5, p1, p2, v8}, Lmiui/util/RecordingNameUtils;->generatCallRecordingName(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v2, "recordFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mOutFilePath:Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    if-eqz v5, :cond_7

    .line 88
    :try_start_0
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v5}, Lmiui/media/Mp3Recorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v5}, Lmiui/media/Mp3Recorder;->release()V

    .line 94
    :cond_7
    new-instance v5, Lmiui/media/Mp3Recorder;

    invoke-direct {v5}, Lmiui/media/Mp3Recorder;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    .line 95
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/incallui/recorder/CallRecorder;->supportCallStreamRecording(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 96
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v5, v12}, Lmiui/media/Mp3Recorder;->setAudioSource(I)V

    .line 100
    :goto_2
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "omega"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "nikel"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 101
    :cond_8
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Lmiui/media/Mp3Recorder;->setAudioChannel(I)V

    .line 102
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    const/16 v8, 0x3e80

    invoke-virtual {v5, v8}, Lmiui/media/Mp3Recorder;->setAudioSamplingRate(I)V

    .line 103
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    const/16 v8, 0x18

    invoke-virtual {v5, v8}, Lmiui/media/Mp3Recorder;->setOutBitRate(I)V

    .line 108
    :goto_3
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v5, v11}, Lmiui/media/Mp3Recorder;->setQuality(I)V

    .line 109
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    iget-object v8, p0, Lcom/android/incallui/recorder/CallRecorder;->mOutFilePath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lmiui/media/Mp3Recorder;->setOutputFile(Ljava/lang/String;)V

    .line 110
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    new-instance v8, Lcom/android/incallui/recorder/CallRecorder$2;

    invoke-direct {v8, p0}, Lcom/android/incallui/recorder/CallRecorder$2;-><init>(Lcom/android/incallui/recorder/CallRecorder;)V

    invoke-virtual {v5, v8}, Lmiui/media/Mp3Recorder;->setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V

    .line 117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 119
    .local v6, "token":J
    :try_start_1
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v5}, Lmiui/media/Mp3Recorder;->prepare()V

    .line 120
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v5}, Lmiui/media/Mp3Recorder;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    const-string v5, "CallRecorder"

    const-string v8, "Call record started!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    if-eqz v5, :cond_2

    .line 130
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    invoke-interface {v5}, Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;->onCallRecordStarted()V

    goto/16 :goto_0

    .line 89
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CallRecorder"

    const-string v8, "Error when stop call recording"

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v5, v10}, Lmiui/media/Mp3Recorder;->setAudioSource(I)V

    goto :goto_2

    .line 105
    :cond_a
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    const/16 v8, 0x1f40

    invoke-virtual {v5, v8}, Lmiui/media/Mp3Recorder;->setAudioSamplingRate(I)V

    .line 106
    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Lmiui/media/Mp3Recorder;->setOutBitRate(I)V

    goto :goto_3

    .line 121
    .restart local v6    # "token":J
    :catch_1
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "CallRecorder"

    const-string v8, "Error when start call recording"

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/incallui/recorder/CallRecorder;->stopCallRecord(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public stopCallRecord()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/recorder/CallRecorder;->stopCallRecord(I)V

    .line 136
    return-void
.end method

.method public declared-synchronized stopCallRecord(I)V
    .locals 6
    .param p1, "errCode"    # I

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    const-string v3, "CallRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRecording("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    if-eqz v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/media/Mp3Recorder;->setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V

    .line 142
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mStorageMonitor:Lcom/android/incallui/recorder/StorageMonitor;

    invoke-virtual {v3}, Lcom/android/incallui/recorder/StorageMonitor;->stopMonitor()V

    .line 143
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->getRecordingTimeInMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 145
    .local v0, "duration":J
    :try_start_1
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->release()V

    .line 150
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mMediaRecorder:Lmiui/media/Mp3Recorder;

    .line 151
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorder;->mOutFilePath:Ljava/lang/String;

    invoke-interface {v3, p1, v4}, Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;->onCallRecordStoped(ILjava/lang/String;)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mCallRecordStateListener:Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;

    invoke-interface {v3, p1}, Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;->onCallRecordFailed(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorder;->mOutFilePath:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lmiui/provider/Recordings;->notifyRecording(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    :goto_1
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/android/incallui/recorder/CallRecorder;->mOutFilePath:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    .end local v0    # "duration":J
    :cond_1
    monitor-exit p0

    return-void

    .line 146
    .restart local v0    # "duration":J
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "CallRecorder"

    const-string v4, "Error when stop call recording"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "duration":J
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 159
    .restart local v0    # "duration":J
    :catch_1
    move-exception v2

    .line 160
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "CallRecorder"

    const-string v4, "Error when notify call recording"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method
