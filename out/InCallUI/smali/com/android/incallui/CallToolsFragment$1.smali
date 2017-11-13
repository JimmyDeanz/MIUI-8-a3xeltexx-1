.class Lcom/android/incallui/CallToolsFragment$1;
.super Ljava/lang/Object;
.source "CallToolsFragment.java"

# interfaces
.implements Lcom/android/incallui/recorder/CallRecorderToolsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallToolsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallToolsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallToolsFragment;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callRecordingFailed()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->isInCallToolPanelContentInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->onCallRecordingStoped()V

    .line 249
    :cond_0
    return-void
.end method

.method public callRecordingStarted()V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->isInCallToolPanelContentInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/CallToolsFragment;->onCallRecordingStarted(J)V

    .line 235
    :cond_0
    return-void
.end method

.method public callRecordingStopped(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->isInCallToolPanelContentInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->onCallRecordingStoped()V

    .line 242
    :cond_0
    return-void
.end method

.method public callStartWaitingRecord()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->isInCallToolPanelContentInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->startWaitingRecord()V

    .line 283
    :cond_0
    return-void
.end method

.method public recordTimeCallback(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->isInCallToolPanelContentInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    # getter for: Lcom/android/incallui/CallToolsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallToolsFragment;->access$000(Lcom/android/incallui/CallToolsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/CallToolsFragment$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/CallToolsFragment$1$1;-><init>(Lcom/android/incallui/CallToolsFragment$1;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    :cond_0
    return-void
.end method

.method public stopManualAutoRecordIfNotStartedCallback()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->isInCallToolPanelContentInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->stopManualAutoRecordIfNotStarted()V

    .line 276
    :cond_0
    return-void
.end method

.method public waitingToRecordCallback(Z)V
    .locals 1
    .param p1, "record"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->isInCallToolPanelContentInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/incallui/CallToolsFragment$1;->this$0:Lcom/android/incallui/CallToolsFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallToolsFragment;->waitingToRecord(Z)V

    .line 269
    :cond_0
    return-void
.end method
