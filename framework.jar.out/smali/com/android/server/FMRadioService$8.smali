.class Lcom/android/server/FMRadioService$8;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentVolume:J

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 2

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 770
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/FMRadioService$8;->currentVolume:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0xc8

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHandler(g.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 774
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    iget-wide v0, p0, Lcom/android/server/FMRadioService$8;->currentVolume:J

    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCurrentResumeVol:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$2300(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 777
    iget-wide v0, p0, Lcom/android/server/FMRadioService$8;->currentVolume:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/FMRadioService$8;->currentVolume:J

    .line 778
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    iget-wide v2, p0, Lcom/android/server/FMRadioService$8;->currentVolume:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 779
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v2, 0x64

    # invokes: Lcom/android/server/FMRadioService;->queueUpdate(IJ)V
    invoke-static {v0, v4, v2, v3}, Lcom/android/server/FMRadioService;->access$2400(Lcom/android/server/FMRadioService;IJ)V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$2500(Lcom/android/server/FMRadioService;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService$8;->currentVolume:J

    .line 782
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    iget-wide v2, p0, Lcom/android/server/FMRadioService$8;->currentVolume:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 783
    iput-wide v6, p0, Lcom/android/server/FMRadioService$8;->currentVolume:J

    goto :goto_0

    .line 786
    :cond_2
    iput-wide v6, p0, Lcom/android/server/FMRadioService$8;->currentVolume:J

    goto :goto_0
.end method
