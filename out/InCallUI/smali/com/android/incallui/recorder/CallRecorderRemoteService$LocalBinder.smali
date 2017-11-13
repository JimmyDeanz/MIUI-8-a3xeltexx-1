.class public final Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;
.super Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;
.source "CallRecorderRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/recorder/CallRecorderRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalBinder"
.end annotation


# instance fields
.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/incallui/recorder/CallRecorderRemoteService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/incallui/recorder/CallRecorderRemoteService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/incallui/recorder/CallRecorderRemoteService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;->reference:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method


# virtual methods
.method public checkCallRecordTime(Ljava/lang/String;)J
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 88
    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;->getService()Lcom/android/incallui/recorder/CallRecorderRemoteService;

    move-result-object v2

    .line 89
    .local v2, "service":Lcom/android/incallui/recorder/CallRecorderRemoteService;
    if-nez v2, :cond_1

    .line 90
    const-string v3, "CallRecorderRemoteService"

    const-string v4, "checkCallRecordTime service is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return-wide v0

    .line 93
    :cond_1
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$000(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v2}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v2}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/recorder/CallRecorder;->isCallRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v2}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/recorder/CallRecorder;->getRecordingTimeInMillis()J

    move-result-wide v0

    .line 96
    .local v0, "duration":J
    invoke-virtual {v2, v0, v1}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->onCallRecordTimeCheck(J)V

    goto :goto_0
.end method

.method public getService()Lcom/android/incallui/recorder/CallRecorderRemoteService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/recorder/CallRecorderRemoteService;

    return-object v0
.end method

.method public isBound()Z
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;->getService()Lcom/android/incallui/recorder/CallRecorderRemoteService;

    move-result-object v0

    .line 131
    .local v0, "service":Lcom/android/incallui/recorder/CallRecorderRemoteService;
    if-nez v0, :cond_0

    .line 132
    const-string v1, "CallRecorderRemoteService"

    const-string v2, "isBound service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    .line 135
    :goto_0
    return v1

    :cond_0
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mBound:Z
    invoke-static {v0}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$300(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Z

    move-result v1

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/incallui/recorder/IRecorderCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/incallui/recorder/IRecorderCallback;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;->getService()Lcom/android/incallui/recorder/CallRecorderRemoteService;

    move-result-object v0

    .line 108
    .local v0, "service":Lcom/android/incallui/recorder/CallRecorderRemoteService;
    if-nez v0, :cond_1

    .line 109
    const-string v1, "CallRecorderRemoteService"

    const-string v2, "registerCallback service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    if-eqz p1, :cond_0

    .line 113
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$200(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0
.end method

.method public startCallRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;->getService()Lcom/android/incallui/recorder/CallRecorderRemoteService;

    move-result-object v4

    .line 48
    .local v4, "service":Lcom/android/incallui/recorder/CallRecorderRemoteService;
    if-nez v4, :cond_0

    .line 49
    const-string v5, "CallRecorderRemoteService"

    const-string v6, "startCallRecord service is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 52
    :cond_0
    # setter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallId:Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$002(Lcom/android/incallui/recorder/CallRecorderRemoteService;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v4}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v5

    if-nez v5, :cond_1

    .line 54
    const-string v5, "CallRecorderRemoteService"

    const-string v6, "can\'t record now"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "callerNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "callerNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v4}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/recorder/CallRecorder;->isCallRecording()Z

    move-result v5

    if-nez v5, :cond_2

    .line 62
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v4}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/android/incallui/recorder/CallRecorder;->startCallRecord(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 64
    :cond_2
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v4}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/recorder/CallRecorder;->getRecordingTimeInMillis()J

    move-result-wide v2

    .line 65
    .local v2, "duration":J
    const-string v5, "CallRecorderRemoteService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get duration when start record:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v4, v2, v3}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->onCallRecordTimeCheck(J)V

    goto :goto_0
.end method

.method public stopCallRecord()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;->getService()Lcom/android/incallui/recorder/CallRecorderRemoteService;

    move-result-object v1

    .line 73
    .local v1, "service":Lcom/android/incallui/recorder/CallRecorderRemoteService;
    if-nez v1, :cond_1

    .line 74
    const-string v2, "CallRecorderRemoteService"

    const-string v3, "stopCallRecord service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    :try_start_0
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v1}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/recorder/CallRecorder;->isCallRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorder:Lcom/android/incallui/recorder/CallRecorder;
    invoke-static {v1}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$100(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Lcom/android/incallui/recorder/CallRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/recorder/CallRecorder;->stopCallRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CallRecorderRemoteService"

    const-string v3, "stop call record error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/android/incallui/recorder/IRecorderCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/incallui/recorder/IRecorderCallback;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderRemoteService$LocalBinder;->getService()Lcom/android/incallui/recorder/CallRecorderRemoteService;

    move-result-object v0

    .line 120
    .local v0, "service":Lcom/android/incallui/recorder/CallRecorderRemoteService;
    if-nez v0, :cond_1

    .line 121
    const-string v1, "CallRecorderRemoteService"

    const-string v2, "unregisterCallback service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    if-eqz p1, :cond_0

    .line 125
    # getter for: Lcom/android/incallui/recorder/CallRecorderRemoteService;->mCallRecorderStateListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/incallui/recorder/CallRecorderRemoteService;->access$200(Lcom/android/incallui/recorder/CallRecorderRemoteService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0
.end method
