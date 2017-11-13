.class Lcom/android/incallui/VideoPauseController;
.super Ljava/lang/Object;
.source "VideoPauseController.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoPauseController$CallContext;
    }
.end annotation


# static fields
.field private static VIDEO_PAUSE_MODE_DISABLED:I

.field private static VIDEO_PAUSE_MODE_ENABLED:I

.field private static sVideoPauseController:Lcom/android/incallui/VideoPauseController;


# instance fields
.field private mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private mIsInBackground:Z

.field private mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

.field private mVideoPauseMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/VideoPauseController;->VIDEO_PAUSE_MODE_DISABLED:I

    .line 99
    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/VideoPauseController;->VIDEO_PAUSE_MODE_ENABLED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    .line 90
    sget v0, Lcom/android/incallui/VideoPauseController;->VIDEO_PAUSE_MODE_DISABLED:I

    iput v0, p0, Lcom/android/incallui/VideoPauseController;->mVideoPauseMode:I

    .line 102
    const-string v0, "persist.radio.videopause.mode"

    sget v1, Lcom/android/incallui/VideoPauseController;->VIDEO_PAUSE_MODE_DISABLED:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoPauseController;->mVideoPauseMode:I

    .line 104
    iget v0, p0, Lcom/android/incallui/VideoPauseController;->mVideoPauseMode:I

    sget v1, Lcom/android/incallui/VideoPauseController;->VIDEO_PAUSE_MODE_ENABLED:I

    if-eq v0, v1, :cond_0

    .line 105
    sget v0, Lcom/android/incallui/VideoPauseController;->VIDEO_PAUSE_MODE_DISABLED:I

    iput v0, p0, Lcom/android/incallui/VideoPauseController;->mVideoPauseMode:I

    .line 107
    :cond_0
    return-void
.end method

.method private static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "callContext"    # Lcom/android/incallui/VideoPauseController$CallContext;

    .prologue
    .line 333
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    .line 335
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/VideoPauseController$CallContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private bringToForeground()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "Bringing UI to foreground"

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string v0, "InCallPresenter is null. Cannot bring UI to foreground"

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 2
    .param p0, "callContext"    # Lcom/android/incallui/VideoPauseController$CallContext;

    .prologue
    .line 346
    invoke-static {p0}, Lcom/android/incallui/VideoPauseController;->isVideoCall(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 143
    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    .line 145
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/incallui/VideoPauseController;
    .locals 2

    .prologue
    .line 111
    const-class v1, Lcom/android/incallui/VideoPauseController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/android/incallui/VideoPauseController;

    invoke-direct {v0}, Lcom/android/incallui/VideoPauseController;-><init>()V

    sput-object v0, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;

    .line 114
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isOutgoing(Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/VideoPauseController$CallContext;

    .prologue
    .line 370
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVideoCall(Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 1
    .param p0, "callContext"    # Lcom/android/incallui/VideoPauseController$CallContext;

    .prologue
    .line 350
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoPausedEnabled()Z
    .locals 2

    .prologue
    .line 329
    iget v0, p0, Lcom/android/incallui/VideoPauseController;->mVideoPauseMode:I

    sget v1, Lcom/android/incallui/VideoPauseController;->VIDEO_PAUSE_MODE_DISABLED:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWaitingCall(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 362
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWaitingCall(Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/VideoPauseController$CallContext;

    .prologue
    .line 357
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallPauseController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallPauseController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method private onPause(Z)V
    .locals 2
    .param p1, "notify"    # Z

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause: notify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    .line 297
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v0, "onPause, Ignoring..."

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPrimaryCallChanged(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrimaryCallChanged: New call = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrimaryCallChanged: Old call = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrimaryCallChanged, IsInBackground="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {p1, v1}, Lcom/android/incallui/VideoPauseController;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 199
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 201
    .local v0, "canVideoPause":Z
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController;->isWaitingCall(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-nez v1, :cond_2

    .line 204
    invoke-direct {p0, p1, v2}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    .line 215
    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoPauseController;->updatePrimaryCallContext(Lcom/android/incallui/Call;)V

    .line 216
    return-void

    .end local v0    # "canVideoPause":Z
    :cond_1
    move v1, v3

    .line 198
    goto :goto_0

    .line 205
    .restart local v0    # "canVideoPause":Z
    :cond_2
    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->isWaitingCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    goto :goto_1

    .line 209
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController;->isOutgoing(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-nez v1, :cond_0

    .line 212
    invoke-direct {p0, p1, v2}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    goto :goto_1
.end method

.method private onResume(Z)V
    .locals 2
    .param p1, "notify"    # Z

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: notify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    .line 283
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string v0, "onResume. Ignoring..."

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendRequest(Lcom/android/incallui/Call;Z)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "resume"    # Z

    .prologue
    .line 319
    if-eqz p2, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending resume request, call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/CallUtils;->makeVideoUnPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending pause request, call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/CallUtils;->makeVideoPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0
.end method

.method private updatePrimaryCallContext(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoPauseController$CallContext;->update(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 238
    :cond_1
    new-instance v0, Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/VideoPauseController$CallContext;-><init>(Lcom/android/incallui/VideoPauseController;Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    goto :goto_0
.end method


# virtual methods
.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 274
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingCall, OldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NewState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {p3, v0}, Lcom/android/incallui/VideoPauseController;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/incallui/VideoPauseController;->onPrimaryCallChanged(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChange, OldState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NewState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "call":Lcom/android/incallui/Call;
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_0

    .line 158
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 169
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v0, v3}, Lcom/android/incallui/VideoPauseController;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x1

    .line 170
    .local v2, "hasPrimaryCallChanged":Z
    :goto_1
    invoke-static {v0}, Lcom/android/incallui/CallUtils;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 171
    .local v1, "canVideoPause":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChange, hasPrimaryCallChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChange, canVideoPause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChange, IsInBackground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 175
    if-eqz v2, :cond_5

    .line 176
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->onPrimaryCallChanged(Lcom/android/incallui/Call;)V

    .line 191
    :goto_2
    return-void

    .line 159
    .end local v1    # "canVideoPause":Z
    .end local v2    # "hasPrimaryCallChanged":Z
    :cond_0
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_1

    .line 160
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_1
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_2

    .line 162
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_2
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_3

    .line 164
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 180
    .restart local v1    # "canVideoPause":Z
    .restart local v2    # "hasPrimaryCallChanged":Z
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v3}, Lcom/android/incallui/VideoPauseController;->isOutgoing(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    iget-boolean v3, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v3, :cond_7

    .line 183
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->bringToForeground()V

    .line 190
    :cond_6
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->updatePrimaryCallContext(Lcom/android/incallui/Call;)V

    goto :goto_2

    .line 184
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v3}, Lcom/android/incallui/VideoPauseController;->isVideoCall(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v3, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v3, :cond_6

    .line 187
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->bringToForeground()V

    goto :goto_3
.end method

.method public onUiShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->isVideoPausedEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 252
    .local v0, "notify":Z
    :goto_1
    if-eqz p1, :cond_3

    .line 253
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->onResume(Z)V

    goto :goto_0

    .line 251
    .end local v0    # "notify":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 255
    .restart local v0    # "notify":Z
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->onPause(Z)V

    goto :goto_0
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 270
    return-void
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 261
    return-void
.end method

.method public onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 265
    return-void
.end method

.method public setUp(Lcom/android/incallui/InCallPresenter;)V
    .locals 1
    .param p1, "inCallPresenter"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->isVideoPausedEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v0, "setUp..."

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter;

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 124
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 126
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    goto :goto_0
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->isVideoPausedEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v0, "tearDown..."

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 138
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->clear()V

    goto :goto_0
.end method
