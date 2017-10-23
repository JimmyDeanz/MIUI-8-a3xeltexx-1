.class Lcom/android/server/FMRadioService$ScanThread;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanThread"
.end annotation


# instance fields
.field private scanCount:I

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    .prologue
    .line 3258
    iput-object p1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private doScan()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3264
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v2, v6, :cond_4

    .line 3265
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 3266
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v4, 0x1a5e0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 3273
    :goto_0
    iget v2, p0, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    .line 3275
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 3276
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J
    invoke-static {v2, v10, v11}, Lcom/android/server/FMRadioService;->access$3402(Lcom/android/server/FMRadioService;J)J

    .line 3277
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v2, v10, v11}, Lcom/android/server/FMRadioService;->access$3502(Lcom/android/server/FMRadioService;J)J

    .line 3279
    :cond_0
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3280
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/FMPlayerNative;->setScanning(Z)V

    .line 3282
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1500(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3284
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->searchAll()J

    move-result-wide v0

    .line 3285
    .local v0, "freq":J
    # getter for: Lcom/android/server/FMRadioService;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/server/FMRadioService;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3288
    :cond_2
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    if-eq v2, v9, :cond_5

    .line 3289
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3290
    # getter for: Lcom/android/server/FMRadioService;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/server/FMRadioService;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3268
    .end local v0    # "freq":J
    :cond_3
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v4, 0x155cc

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->tune(J)V

    goto/16 :goto_0

    .line 3271
    :cond_4
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v4, 0x128e0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->tune(J)V

    goto/16 :goto_0

    .line 3297
    .restart local v0    # "freq":J
    :cond_5
    cmp-long v2, v0, v10

    if-lez v2, :cond_f

    .line 3298
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1700(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-gtz v2, :cond_6

    .line 3299
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v2, v0, v1}, Lcom/android/server/FMRadioService;->access$1702(Lcom/android/server/FMRadioService;J)J

    .line 3302
    :cond_6
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    if-ne v2, v9, :cond_a

    .line 3303
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v2, v0, v1}, Lcom/android/server/FMRadioService;->access$3502(Lcom/android/server/FMRadioService;J)J

    .line 3304
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3400(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$3500(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    .line 3305
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 3309
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 3351
    .end local v0    # "freq":J
    :cond_7
    :goto_2
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3352
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/FMPlayerNative;->setScanning(Z)V

    .line 3353
    :cond_8
    return-void

    .line 3312
    .restart local v0    # "freq":J
    :cond_9
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3500(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J
    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->access$3402(Lcom/android/server/FMRadioService;J)J

    .line 3313
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3314
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 3315
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3317
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    .line 3318
    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 3319
    monitor-exit v3

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3323
    :cond_a
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3324
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 3325
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3327
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    .line 3328
    :try_start_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 3329
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3331
    :cond_b
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-eq v2, v6, :cond_c

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    :cond_c
    const-wide/32 v2, 0x1a5e0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v2, v8, :cond_1

    const-wide/32 v2, 0x15f90

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 3333
    :cond_e
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 3337
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    .line 3329
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 3343
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testmode Skipp value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3344
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 3347
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3359
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$4000(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;

    move-result-object v3

    const v4, 0x20000001

    const-string v5, "FMRadio Service Scan Thread"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 3361
    .local v2, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3362
    const-string v3, "Scan thread gets the dimmed screen lock"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3364
    :try_start_0
    const-string v3, "Scanning Thread started..."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3365
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 3367
    const-string v1, "fmradio_turnon=false"

    .line 3368
    .local v1, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3369
    const-string v3, "Scanning Thread started... - Turning off FM"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3371
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v4}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v4

    # setter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v3, v4, v5}, Lcom/android/server/FMRadioService;->access$1702(Lcom/android/server/FMRadioService;J)J

    .line 3373
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3374
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->access$3702(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3378
    :goto_0
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3380
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mRssi_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4100(Lcom/android/server/FMRadioService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mSnr_th:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4200(Lcom/android/server/FMRadioService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCnt_th:I
    invoke-static {v6}, Lcom/android/server/FMRadioService;->access$4300(Lcom/android/server/FMRadioService;)I

    move-result v6

    # invokes: Lcom/android/server/FMRadioService;->setSignalSetting(III)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/FMRadioService;->access$4400(Lcom/android/server/FMRadioService;III)V

    .line 3381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first scan no block channel with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mRssi_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4100(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mSnr_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4200(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCnt_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4300(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3384
    :cond_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3390
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v3, v7}, Lcom/android/server/FMRadioService;->access$1502(Lcom/android/server/FMRadioService;Z)Z

    .line 3391
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v3, v9}, Lcom/android/server/FMRadioService;->access$3802(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3393
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    # setter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->access$4502(Lcom/android/server/FMRadioService;I)I

    .line 3394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Thread resuming volume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3395
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3399
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3400
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3401
    const-string v3, "Scan thread released the dimmed screen lock"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3404
    .end local v1    # "keyValuePairs":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v3, "Scanning Thread work is done..."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3406
    return-void

    .line 3376
    .restart local v1    # "keyValuePairs":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3386
    .end local v1    # "keyValuePairs":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3388
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3390
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v3, v7}, Lcom/android/server/FMRadioService;->access$1502(Lcom/android/server/FMRadioService;Z)Z

    .line 3391
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v3, v9}, Lcom/android/server/FMRadioService;->access$3802(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3393
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    # setter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->access$4502(Lcom/android/server/FMRadioService;I)I

    .line 3394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Thread resuming volume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3395
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3399
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3400
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3401
    const-string v3, "Scan thread released the dimmed screen lock"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3390
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v4, v7}, Lcom/android/server/FMRadioService;->access$1502(Lcom/android/server/FMRadioService;Z)Z

    .line 3391
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v4, v9}, Lcom/android/server/FMRadioService;->access$3802(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3393
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    # setter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4, v5}, Lcom/android/server/FMRadioService;->access$4502(Lcom/android/server/FMRadioService;I)I

    .line 3394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scan Thread resuming volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3395
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v6}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3399
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3400
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3401
    const-string v4, "Scan thread released the dimmed screen lock"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_3
    throw v3
.end method
