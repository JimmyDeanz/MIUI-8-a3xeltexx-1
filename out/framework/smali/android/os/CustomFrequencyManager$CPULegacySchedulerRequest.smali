.class public Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CPULegacySchedulerRequest"
.end annotation


# instance fields
.field mCPULegacySchedulerReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 2
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 678
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 679
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 672
    new-instance v0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest$1;-><init>(Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mCPULegacySchedulerReleaser:Ljava/lang/Runnable;

    .line 680
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .locals 5

    .prologue
    .line 698
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 700
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mCPULegacySchedulerReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 701
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->disableLegacyScheduler(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 706
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_0

    .line 705
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
    .line 683
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPULegacySchedulerRequest : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 687
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->enableLegacyScheduler(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 688
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mCPULegacySchedulerReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 695
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_0

    .line 694
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
