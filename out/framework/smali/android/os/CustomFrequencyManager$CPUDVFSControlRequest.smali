.class Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUDVFSControlRequest"
.end annotation


# instance fields
.field mCPUDVFSReleaser:Ljava/lang/Runnable;

.field mCallingID:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 6
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 501
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 502
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 493
    const/4 v3, -0x1

    iput v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    .line 495
    new-instance v3, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$1;

    invoke-direct {v3, p0}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$1;-><init>(Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;)V

    iput-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    .line 504
    packed-switch p2, :pswitch_data_0

    .line 509
    const-string v3, "CustomFrequencyManager"

    const-string v4, "CustomFrequencyManager : CPUDVFSControlRequest : invalid type"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iput-boolean v5, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mInvalidParam:Z

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 514
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    .line 515
    .local v2, "supportedFrequency":[I
    if-nez v2, :cond_1

    .line 516
    const-string v3, "CustomFrequencyManager"

    const-string v4, "CustomFrequencyManager : CPUDVFSControlRequest : getSupportedFrequency : null"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iput-boolean v5, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mInvalidParam:Z

    goto :goto_0

    .line 522
    :cond_1
    const/4 v0, 0x0

    .line 523
    .local v0, "bFound":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 524
    aget v3, v2, v1

    if-ne p3, v3, :cond_2

    .line 525
    const/4 v0, 0x1

    .line 523
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 528
    :cond_3
    if-nez v0, :cond_0

    .line 529
    const-string v3, "CustomFrequencyManager"

    const-string v4, "CustomFrequencyManager : CPUDVFSControlRequest : invalid frequency"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iput-boolean v5, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mInvalidParam:Z

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized cancelFrequencyRequest(I)V
    .locals 3
    .param p1, "callingID"    # I

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Landroid/os/ICustomFrequencyManager;->releasePersistentDVFSLock(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :goto_0
    monitor-exit p0

    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public cancelFrequencyRequestImpl()V
    .locals 5

    .prologue
    .line 565
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 567
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 573
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_0

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized doFrequencyRequest(I)V
    .locals 5
    .param p1, "callingID"    # I

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mType:I

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mFrequency:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, v4}, Landroid/os/ICustomFrequencyManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :goto_0
    monitor-exit p0

    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .locals 8

    .prologue
    .line 536
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPUDVFSControlRequest : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 540
    :try_start_0
    iget v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 541
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mType:I

    iget v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mFrequency:I

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/ICustomFrequencyManager;->acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 542
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 543
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x1

    # setter for: Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z
    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$902(Landroid/os/CustomFrequencyManager;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    return-void

    .line 545
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_0

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 548
    :cond_1
    :try_start_4
    iget v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    invoke-virtual {p0, v1}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->doFrequencyRequest(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
