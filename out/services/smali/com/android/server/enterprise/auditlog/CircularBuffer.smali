.class public Lcom/android/server/enterprise/auditlog/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# static fields
.field private static final ADAYINMILLISEC:J = 0x5265c00L

.field private static final BUFFERREADSIZE:I = 0x10000

.field private static final EDM_AUDIT_LOG_FILENAME:Ljava/lang/String; = "/data/system/"

.field private static final TOTALNUMBEROFFILES:I = 0x8fc

.field private static mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isWriting:Z

.field private mAdminCriticalSize:F

.field private mAdminDirectoryPath:Ljava/lang/String;

.field private mAdminMaximumSize:F

.field private mBufferLimitSize:J

.field private volatile mCircularBufferSize:J

.field private mContext:Landroid/content/Context;

.field private mCriticalIntent:Z

.field private mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

.field private mDumpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFullBuffer:F

.field private mFullIntent:Z

.field private volatile mIsBootCompleted:Z

.field private volatile mIsDumping:Z

.field private mIsFirstNode:Z

.field private volatile mLastDumpedFile:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMaximumIntent:Z

.field private volatile mNumberOfDeprecatedFiles:I

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntentErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private mTailTimestamp:J

.field private mTotalDirectoryOccupation:J

.field private volatile mTypeOfDump:Z

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "CircularBuffer"

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    .line 109
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->isWriting:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsFirstNode:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    .line 115
    sget-object v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 116
    iput p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 117
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    .line 118
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    .line 119
    const/high16 v0, 0x42c20000    # 97.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    .line 120
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 121
    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 122
    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 126
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getBufferLogSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 127
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getNumberOfDeprecatedFiles()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->populateCircularBuffer()V

    .line 132
    return-void
.end method

.method private addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .locals 4

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->checkCriticalSizes()V

    .line 306
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->totalNumberFiles()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->cleanBuffer()V

    .line 312
    :cond_1
    new-instance v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private checkCriticalSizes()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    .line 530
    const/4 v7, 0x0

    .line 532
    .local v7, "intent":Landroid/content/Intent;
    const-wide/16 v0, 0x64

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    mul-long/2addr v0, v4

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v0, v4

    long-to-int v8, v0

    .line 534
    .local v8, "threshold":I
    int-to-float v0, v8

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 535
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    if-nez v0, :cond_0

    .line 536
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "mdm.intent.action.audit.log.critical.size"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v0, "admin_uid"

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 540
    .local v10, "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 541
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 542
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    .line 544
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "CircularBuffer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AuditLog has reached its critical size. Percentage is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 554
    .end local v10    # "token":J
    :cond_0
    :goto_0
    int-to-float v0, v8

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 555
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    if-nez v0, :cond_1

    .line 556
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "mdm.intent.action.audit.log.maximum.size"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v0, "admin_uid"

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 560
    .restart local v10    # "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 561
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    .line 569
    .end local v10    # "token":J
    :cond_1
    :goto_1
    int-to-float v0, v8

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 570
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    if-nez v0, :cond_2

    .line 571
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "mdm.intent.action.audit.log.full.size"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v0, "admin_uid"

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 575
    .restart local v10    # "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 576
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 577
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    .line 578
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v1, "Full Size Reached!"

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .end local v10    # "token":J
    :cond_2
    :goto_2
    return-void

    .line 550
    :cond_3
    iput-boolean v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    goto :goto_0

    .line 565
    :cond_4
    iput-boolean v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    goto :goto_1

    .line 581
    :cond_5
    iput-boolean v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    goto :goto_2
.end method

.method private cleanBuffer()V
    .locals 10

    .prologue
    .line 586
    const/4 v3, 0x0

    .line 588
    .local v3, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v5

    .line 589
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 591
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v6, v4

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->totalNumberFiles()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    .line 592
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v3, v0

    .line 594
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    .line 600
    :goto_1
    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 601
    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    iget-wide v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 602
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 603
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 605
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 597
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_0
    :try_start_1
    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    goto :goto_1

    .line 605
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    return-void
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .locals 9
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 648
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 651
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_1

    .line 652
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 653
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory is deleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "files":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 663
    .local v5, "temp":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 666
    .local v1, "fileDelete":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 661
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 670
    .end local v1    # "fileDelete":Ljava/io/File;
    .end local v5    # "temp":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    .line 671
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 672
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory is deleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 680
    const-string v6, "CircularBuffer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File is deleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;
    .locals 4
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 215
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .line 217
    .local v1, "lastFile":Ljava/io/File;
    if-nez v0, :cond_2

    move-object v0, v2

    .line 218
    goto :goto_0

    .line 220
    :cond_2
    new-instance v3, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;-><init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 227
    array-length v3, v0

    if-lez v3, :cond_4

    .line 228
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 230
    goto :goto_0
.end method

.method private formatIfEmptyOrCorrupted(Ljava/io/File;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/high16 v11, 0x10000

    .line 253
    const/4 v7, 0x0

    .line 257
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "rwd"

    invoke-direct {v8, p1, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .local v8, "raf":Ljava/io/RandomAccessFile;
    const/high16 v9, 0x10000

    :try_start_1
    new-array v0, v9, [B

    .line 259
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 260
    .local v1, "byteCounter":I
    const/4 v5, 0x0

    .line 261
    .local v5, "length":I
    const/4 v3, 0x0

    .line 262
    .local v3, "fileSize":I
    const/4 v6, 0x0

    .line 263
    .local v6, "lineJumpNumber":I
    const/4 v4, 0x0

    .line 264
    .local v4, "isCorrupted":Z
    :goto_0
    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    .line 265
    const/4 v6, 0x0

    .line 266
    add-int/lit8 v9, v5, -0x1

    aget-byte v9, v0, v9

    if-nez v9, :cond_5

    .line 267
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    .line 268
    aget-byte v9, v0, v1

    const/16 v10, 0xa

    if-ne v9, v10, :cond_0

    .line 269
    move v6, v1

    .line 271
    :cond_0
    aget-byte v9, v0, v1

    if-nez v9, :cond_4

    .line 272
    const/4 v4, 0x1

    .line 281
    :cond_1
    if-eqz v4, :cond_2

    .line 282
    mul-int v9, v3, v11

    add-int/2addr v9, v6

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    :cond_2
    if-eqz v8, :cond_7

    .line 290
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v8

    .line 296
    .end local v0    # "buffer":[B
    .end local v1    # "byteCounter":I
    .end local v3    # "fileSize":I
    .end local v4    # "isCorrupted":Z
    .end local v5    # "length":I
    .end local v6    # "lineJumpNumber":I
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_2
    return-void

    .line 267
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteCounter":I
    .restart local v3    # "fileSize":I
    .restart local v4    # "isCorrupted":Z
    .restart local v5    # "length":I
    .restart local v6    # "lineJumpNumber":I
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :catch_0
    move-exception v2

    .line 292
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CircularBuffer"

    const-string/jumbo v10, "formatIfEmptyOrCorrupted.IOException"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 293
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 284
    .end local v0    # "buffer":[B
    .end local v1    # "byteCounter":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fileSize":I
    .end local v4    # "isCorrupted":Z
    .end local v5    # "length":I
    .end local v6    # "lineJumpNumber":I
    :catch_1
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v9, "CircularBuffer"

    const-string/jumbo v10, "formatIfEmptyOrCorrupted.Exception"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    if-eqz v7, :cond_3

    .line 290
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 291
    :catch_2
    move-exception v2

    .line 292
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CircularBuffer"

    const-string/jumbo v10, "formatIfEmptyOrCorrupted.IOException"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 288
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v7, :cond_6

    .line 290
    :try_start_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 293
    :cond_6
    :goto_5
    throw v9

    .line 291
    :catch_3
    move-exception v2

    .line 292
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "CircularBuffer"

    const-string/jumbo v11, "formatIfEmptyOrCorrupted.IOException"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 288
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 284
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteCounter":I
    .restart local v3    # "fileSize":I
    .restart local v4    # "isCorrupted":Z
    .restart local v5    # "length":I
    .restart local v6    # "lineJumpNumber":I
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :cond_7
    move-object v7, v8

    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private getNumberOfDeprecatedFiles()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 192
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "auditNumberOfDepFiles"

    aput-object v3, v1, v6

    .line 193
    .local v1, "columns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 196
    .local v2, "depFiles":I
    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 198
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 199
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_0
    return v2
.end method

.method private isCompressed(Ljava/io/File;)Z
    .locals 7
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 687
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 688
    .local v1, "fileStream":Ljava/io/FileInputStream;
    new-array v0, v6, [B

    .line 690
    .local v0, "bytes":[B
    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v1, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 691
    if-eqz v0, :cond_0

    array-length v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v4, v6, :cond_3

    .line 700
    :cond_0
    if-eqz v1, :cond_1

    .line 702
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    move v2, v3

    .line 703
    :cond_2
    :goto_1
    return v2

    .line 697
    :cond_3
    const/4 v4, 0x0

    :try_start_2
    aget-byte v4, v0, v4

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    aget-byte v4, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v5, -0x75

    if-ne v4, v5, :cond_4

    .line 700
    :goto_2
    if-eqz v1, :cond_2

    .line 702
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 703
    :catch_0
    move-exception v3

    goto :goto_1

    :cond_4
    move v2, v3

    .line 697
    goto :goto_2

    .line 700
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    .line 702
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 703
    :cond_5
    :goto_3
    throw v2

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_3
.end method

.method private markDeprecatedFiles()V
    .locals 12

    .prologue
    .line 487
    const/4 v2, 0x0

    .line 488
    .local v2, "dumpDeprecated":Z
    const/4 v4, 0x0

    .line 490
    .local v4, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v6

    .line 492
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 493
    .local v3, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v4, v0

    .line 496
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v5

    if-nez v5, :cond_1

    .line 497
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 498
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 522
    .end local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 501
    .restart local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_1
    if-eqz v2, :cond_4

    .line 502
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 521
    :cond_2
    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    .line 522
    monitor-exit v6

    .line 523
    return-void

    .line 506
    :cond_3
    iget-wide v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 507
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    .line 508
    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    goto :goto_0

    .line 512
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 513
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 514
    const/4 v2, 0x1

    .line 515
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 516
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private populateCircularBuffer()V
    .locals 14

    .prologue
    .line 139
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 143
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 189
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, "allFiles":[Ljava/io/File;
    const/4 v8, 0x0

    .line 147
    .local v8, "node":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v2, 0x0

    .line 149
    .local v2, "counter":I
    if-eqz v0, :cond_7

    .line 150
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_6

    aget-object v5, v1, v6

    .line 151
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 152
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 183
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 150
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 158
    :cond_2
    new-instance v8, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .end local v8    # "node":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-direct {v8, v5, v9}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .restart local v8    # "node":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 161
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->isCompressed(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 162
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->formatIfEmptyOrCorrupted(Ljava/io/File;)V

    .line 163
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_4

    .line 164
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 170
    :catch_0
    move-exception v4

    .line 171
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "CircularBuffer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    if-le v2, v9, :cond_5

    .line 176
    iget-wide v10, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    goto :goto_2

    .line 167
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 179
    :cond_5
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    goto :goto_2

    .line 185
    .end local v5    # "f":Ljava/io/File;
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->reCalculateDirectoryAndBubbleSizes([Ljava/io/File;)V

    .line 187
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_7
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto/16 :goto_0
.end method

.method private reCalculateDirectoryAndBubbleSizes([Ljava/io/File;)V
    .locals 8
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    move-object v0, p1

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 245
    .local v1, "f":Ljava/io/File;
    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 250
    return-void
.end method

.method private setNumberOfDeprecatedFiles(I)V
    .locals 4
    .param p1, "depFiles"    # I

    .prologue
    .line 205
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "auditNumberOfDepFiles"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const-string v3, "AUDITLOG"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 208
    return-void
.end method

.method private totalNumberFiles()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x8fc

    .line 710
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 711
    const-wide/16 v0, 0x0

    .line 712
    .local v0, "bytesPerFile":J
    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    div-long v0, v4, v6

    .line 713
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 714
    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v2, v0

    .line 720
    .end local v0    # "bytesPerFile":J
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public closeFile()V
    .locals 2

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    .line 421
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 425
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 426
    monitor-exit v1

    .line 427
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createBubbleDir()V
    .locals 3

    .prologue
    .line 610
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_bubble"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 613
    :cond_0
    return-void
.end method

.method public deleteAllFiles()V
    .locals 6

    .prologue
    .line 446
    const/4 v2, 0x0

    .line 447
    .local v2, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    if-eqz v3, :cond_0

    .line 448
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 449
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 450
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 451
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v4

    .line 454
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 455
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v2, v0

    .line 457
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 458
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 460
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 451
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 460
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 461
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 462
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bubble/bubbleFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 463
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bubble"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 464
    return-void
.end method

.method public getBufferLogSize()J
    .locals 4

    .prologue
    .line 409
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .local v0, "filterValue":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    const-string v3, "auditLogBufferSize"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getCriticalLogSize()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentLogFileSize()I
    .locals 6

    .prologue
    const/16 v1, 0x64

    .line 392
    const-wide/16 v2, 0x64

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 393
    .local v0, "res":I
    if-le v0, v1, :cond_0

    .line 394
    .local v1, "ret":I
    :goto_0
    return v1

    .end local v1    # "ret":I
    :cond_0
    move v1, v0

    .line 393
    goto :goto_0
.end method

.method public getDumpFilesList()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v1

    .line 354
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLastTimestamp()J
    .locals 6

    .prologue
    .line 743
    const-wide/16 v2, 0x0

    .line 744
    .local v2, "timestamp":J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 745
    .local v0, "filterValue":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    const-string v5, "auditLogLastTimestamp"

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 749
    return-wide v2
.end method

.method public getMaximumLogSize()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    float-to-int v0, v0

    return v0
.end method

.method protected resizeBubbleFile(J)V
    .locals 7
    .param p1, "size"    # J

    .prologue
    .line 618
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_1

    .line 619
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_bubble/bubbleFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    const/4 v2, 0x0

    .line 625
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_bubble/bubbleFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "rws"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    long-to-int v4, p1

    add-int/lit8 v4, v4, -0x1

    :try_start_1
    new-array v0, v4, [B

    .line 628
    .local v0, "b":[B
    invoke-virtual {v3, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 630
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 635
    if-eqz v3, :cond_3

    .line 637
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 641
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 639
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 640
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CircularBuffer"

    const-string/jumbo v5, "resizeBubbleFile.IOException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 641
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 632
    .end local v0    # "b":[B
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "CircularBuffer"

    const-string/jumbo v5, "resizeBubbleFile.Exception"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 635
    if-eqz v2, :cond_0

    .line 637
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 639
    :catch_2
    move-exception v1

    .line 640
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CircularBuffer"

    const-string/jumbo v5, "resizeBubbleFile.IOException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 635
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 637
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 641
    :cond_2
    :goto_3
    throw v4

    .line 639
    :catch_3
    move-exception v1

    .line 640
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "CircularBuffer"

    const-string/jumbo v6, "resizeBubbleFile.IOException"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 635
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 632
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "b":[B
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method public setBootCompleted(Z)V
    .locals 5
    .param p1, "boot"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    .line 435
    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    if-eqz v1, :cond_1

    .line 436
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    monitor-enter v2

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 438
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :cond_1
    return-void
.end method

.method public setBufferLogSize(J)V
    .locals 1
    .param p1, "bufferSize"    # J

    .prologue
    .line 401
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 402
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    .line 403
    return-void
.end method

.method public setCriticalLogSize(I)V
    .locals 1
    .param p1, "criticalSize"    # I

    .prologue
    .line 362
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    .line 364
    return-void
.end method

.method public declared-synchronized setIsDumping(ZZ)V
    .locals 1
    .param p1, "dumping"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    .line 472
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    if-eqz v0, :cond_0

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    .line 474
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->markDeprecatedFiles()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :cond_0
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setLastTimestamp(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 726
    .local p1, "dumpFilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    .line 727
    .local v2, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 729
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 730
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .restart local v2    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    goto :goto_0

    .line 733
    :cond_0
    if-eqz v2, :cond_1

    .line 734
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 735
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "auditLogLastTimestamp"

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 736
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const-string v5, "AUDITLOG"

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 739
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public setMaximumLogSize(I)V
    .locals 1
    .param p1, "maximumSize"    # I

    .prologue
    .line 377
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    .line 379
    return-void
.end method

.method public setTypeOfDump(Z)V
    .locals 0
    .param p1, "isFull"    # Z

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    .line 480
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 319
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    .line 320
    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 321
    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 322
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 324
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 347
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 331
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    .line 332
    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 333
    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 335
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 336
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 338
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    .line 339
    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 341
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CircularBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
