.class Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MMCBurstControlRequest"
.end annotation


# instance fields
.field mMCBurstModeReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 2
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 589
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 590
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 593
    new-instance v0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest$1;-><init>(Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mMCBurstModeReleaser:Ljava/lang/Runnable;

    .line 591
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .locals 4

    .prologue
    .line 617
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 619
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mMCBurstModeReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 620
    const-string v1, "CustomFrequencyManager"

    const-string v3, "MMCBurstControlRequest.cancelFrequencyRequest"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/os/ICustomFrequencyManager;->restoreMMCBurstRate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 626
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_0

    .line 625
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .locals 8

    .prologue
    .line 602
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMCBurstControlRequest : doFrequencyRequest:: mFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTimeoutMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 606
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mFrequency:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 607
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mMCBurstModeReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 614
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_0

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
