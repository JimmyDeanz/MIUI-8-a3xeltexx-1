.class public Lcom/android/incallui/recorder/CallRecorderRemoteService;
.super Landroid/app/Service;
.source "CallRecorderRemoteService.java"

# interfaces
.implements Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/recorder/CallRecorderRemoteService$RecordPhoneStateListener;,
        Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;
    }
.end annotation


# instance fields
.field private mBound:Z

.field private mCallId:Ljava/lang/String;

.field private mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;

.field private mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/incallui/recorder/IRecorderCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalBinder:Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;

.field private mNotificationMgr:Lcom/android/incallui/recorder/RecorderNotificationMgr;

.field stateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    .line 32
    new-instance v0, Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;-><init>(Lcom/android/incallui/recorder/CallRecorderRemoteService;)V

    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mLocalBinder:Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;

    .line 257
    new-instance v0, Lcom/android/incallui/recorder/CallRecorderRemoteService$RecordPhoneStateListener;

    invoke-direct {v0, p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService$RecordPhoneStateListener;-><init>(Lcom/android/incallui/recorder/CallRecorderRemoteService;)V

    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->stateListener:Landroid/telephony/PhoneStateListener;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/recorder/CallRecorderRemoteService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/incallui/recorder/CallRecorderRemoteService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/recorder/CallRecorderRemoteService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/recorder/CallRecorderRemoteService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/recorder/CallRecorderRemoteService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/recorder/CallRecorderRemoteService;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mBound:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mBound:Z

    .line 161
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mLocalBinder:Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;

    return-object v0
.end method

.method public onCallRecordFailed(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    .line 194
    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 195
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 196
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 198
    :try_start_1
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/recorder/IRecorderCallback;

    invoke-interface {v3, p1}, Lcom/android/incallui/recorder/IRecorderCallback;->onCallRecorderError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CallRecorderRemoteService"

    const-string v5, "Callback onFmTurnedOn Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 204
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 203
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 204
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    return-void
.end method

.method public onCallRecordStarted()V
    .locals 6

    .prologue
    .line 178
    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 179
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 180
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 182
    :try_start_1
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/recorder/IRecorderCallback;

    invoke-interface {v3}, Lcom/android/incallui/recorder/IRecorderCallback;->onCallRecorderStarted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CallRecorderRemoteService"

    const-string v5, "Callback onFmTurnedOn Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 189
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 187
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mNotificationMgr:Lcom/android/incallui/recorder/RecorderNotificationMgr;

    invoke-virtual {v3}, Lcom/android/incallui/recorder/RecorderNotificationMgr;->notifyCallRecord()V

    .line 188
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 189
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    return-void
.end method

.method public onCallRecordStoped(ILjava/lang/String;)V
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 210
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 211
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 213
    :try_start_1
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/recorder/IRecorderCallback;

    invoke-interface {v3, p1, p2}, Lcom/android/incallui/recorder/IRecorderCallback;->onCallRecorderStoped(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CallRecorderRemoteService"

    const-string v5, "Callback onFmTurnedOn Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 239
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 218
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mNotificationMgr:Lcom/android/incallui/recorder/RecorderNotificationMgr;

    invoke-virtual {v3}, Lcom/android/incallui/recorder/RecorderNotificationMgr;->cancelCallRecord()V

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 238
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 239
    monitor-exit v4

    .line 240
    return-void

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$Telephony;->isRecordNotificationEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mNotificationMgr:Lcom/android/incallui/recorder/RecorderNotificationMgr;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0090

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, p2}, Lcom/android/incallui/recorder/RecorderNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 228
    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mNotificationMgr:Lcom/android/incallui/recorder/RecorderNotificationMgr;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0091

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, p2}, Lcom/android/incallui/recorder/RecorderNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 233
    :pswitch_2
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mNotificationMgr:Lcom/android/incallui/recorder/RecorderNotificationMgr;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0092

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, p2}, Lcom/android/incallui/recorder/RecorderNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCallRecordTimeCheck(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 244
    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 245
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 246
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 248
    :try_start_1
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/recorder/IRecorderCallback;

    invoke-interface {v3, p1, p2}, Lcom/android/incallui/recorder/IRecorderCallback;->onCheckRecordTime(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CallRecorderRemoteService"

    const-string v5, "Callback onFmTurnedOn Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 254
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 253
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 254
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 142
    const-string v0, "CallRecorderRemoteService"

    const-string v1, "start service CallRecorderRemoteService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/incallui/recorder/CallRecorder;

    invoke-direct {v0, p0}, Lcom/android/incallui/recorder/CallRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;

    .line 145
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;

    invoke-virtual {v0, p0}, Lcom/android/incallui/recorder/CallRecorder;->setCallRecordStateListener(Lcom/android/incallui/recorder/CallRecorder$CallRecordStateListener;)V

    .line 147
    :cond_0
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->stateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 148
    invoke-static {}, Lcom/android/incallui/recorder/RecorderNotificationMgr;->init()Lcom/android/incallui/recorder/RecorderNotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mNotificationMgr:Lcom/android/incallui/recorder/RecorderNotificationMgr;

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 154
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 155
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->stateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 156
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mBound:Z

    .line 168
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService;->mBound:Z

    .line 173
    const/4 v0, 0x1

    return v0
.end method
