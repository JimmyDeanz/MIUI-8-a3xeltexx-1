.class public Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CPUHotplugDisableRequest"
.end annotation


# instance fields
.field mCPUHotplugDisableReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 2
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 718
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 719
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 712
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest$1;-><init>(Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mCPUHotplugDisableReleaser:Ljava/lang/Runnable;

    .line 720
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .locals 5

    .prologue
    .line 738
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 740
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mCPUHotplugDisableReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 741
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->disableHotplugDisable(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 746
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_0

    .line 745
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
    .line 723
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPUHotplugDisableRequest : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 727
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->enableHotplugDisable(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 728
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mCPUHotplugDisableReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 735
    return-void

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_0

    .line 734
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
