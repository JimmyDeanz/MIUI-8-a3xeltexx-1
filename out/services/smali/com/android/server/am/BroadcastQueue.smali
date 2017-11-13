.class public final Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueue$AppNotResponding;,
        Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
    }
.end annotation


# static fields
.field static final BROADCAST_INTENT_MSG:I = 0xc8

.field static final BROADCAST_QUEUE_TYPE_BG:I = 0x3

.field static final BROADCAST_QUEUE_TYPE_DF:I = 0x5

.field static final BROADCAST_QUEUE_TYPE_FG:I = 0x2

.field static final BROADCAST_QUEUE_TYPE_SE:I = 0x1

.field static final BROADCAST_QUEUE_TYPE_SP:I = 0x4

.field static final BROADCAST_STATS_ENABLED:Z = false

.field static final BROADCAST_TIMEOUT_FOR_DELAYED:I = 0xbb8

.field static final BROADCAST_TIMEOUT_MSG:I = 0xc9

.field static final MAX_DELAYED_BROADCAST_HISTORY:I = 0x3

.field static final SCHEDULE_TEMP_WHITELIST_MSG:I = 0xca

.field static final SNN_MAX_EMPTY_PROC_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_MU:Ljava/lang/String; = "BroadcastQueue_MU"

.field static final TAG_SPLIT_INTENT:Ljava/lang/String; = "splitIntent"

.field static mDeferrableIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mReplaceableIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static quickbootWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final MAX_ABORTED_BROADCAST_HISTORY:I

.field final MAX_BROADCAST_HISTORY:I

.field final MAX_BROADCAST_SUMMARY_HISTORY:I

.field final mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field mAbortedHistoryNext:I

.field final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field final mBroadcastSummaryHistoryToString:[Ljava/lang/String;

.field mBroadcastsScheduled:Z

.field final mDelayBehindServices:Z

.field final mDelayedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field mDelayedHistoryNext:I

.field final mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

.field mHistoryNext:I

.field final mOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mParallelBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

.field mPendingBroadcastRecvIndex:I

.field mPendingBroadcastTimeoutMessage:Z

.field mPreviousSendTime:J

.field mQueueIdx:I

.field final mQueueName:Ljava/lang/String;

.field final mQueueType:I

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSummaryHistoryDispatchTime:[J

.field final mSummaryHistoryEnqueueTime:[J

.field final mSummaryHistoryFinishTime:[J

.field mSummaryHistoryNext:I

.field final mTimeoutPeriod:J

.field skipResultReceiver:Z

.field statDroppedBrCount:J

.field statEnqueuedBrCount:J

.field statEnqueuedRxCount:J

.field statMaxBrPendingTime:J

.field statMaxBrTime:J

.field statMaxEnqueuedBrCount:J

.field statTotalBrPendingTime:J

.field statTotalBrTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/BroadcastQueue;->quickbootWhiteList:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZI)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timeoutPeriod"    # J
    .param p6, "allowDelayBehindServices"    # Z
    .param p7, "type"    # I

    .prologue
    const/16 v0, 0xa

    const/16 v1, 0x19

    const/4 v3, 0x0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 164
    iput v3, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 166
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/android/server/am/BroadcastRecord;

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 167
    iput v3, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    .line 176
    iput v3, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 193
    iput-boolean v3, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 210
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 225
    iput v3, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    .line 282
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 283
    new-instance v2, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    .line 284
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 286
    iput p7, p0, Lcom/android/server/am/BroadcastQueue;->mQueueType:I

    .line 289
    const-string/jumbo v2, "foreground"

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "background"

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 290
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    .line 291
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 297
    :goto_2
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 298
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    .line 299
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    .line 300
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    .line 301
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    .line 303
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    .line 304
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 306
    iput-wide p4, p0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    .line 307
    iput-boolean p6, p0, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    .line 309
    const-class v1, Lcom/android/server/am/BroadcastQueue;

    monitor-enter v1

    .line 310
    :try_start_0
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mDeferrableIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 311
    invoke-static {}, Lcom/android/server/am/BroadcastQueue;->initializeDeferrableIntents()V

    .line 313
    :cond_1
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mReplaceableIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 314
    invoke-static {}, Lcom/android/server/am/BroadcastQueue;->initializeReplaceableIntents()V

    .line 316
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    return-void

    .line 290
    :cond_3
    const/16 v0, 0x32

    goto :goto_0

    .line 291
    :cond_4
    const/16 v0, 0x12c

    goto :goto_1

    .line 293
    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_3
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    .line 294
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_4
    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    goto :goto_2

    :cond_6
    move v0, v1

    .line 293
    goto :goto_3

    .line 294
    :cond_7
    const/16 v1, 0x64

    goto :goto_4

    .line 316
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 1881
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-gez v3, :cond_1

    .line 1949
    :cond_0
    :goto_0
    return-void

    .line 1885
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 1919
    const/4 v3, 0x5

    iget v4, p0, Lcom/android/server/am/BroadcastQueue;->mQueueType:I

    if-ne v3, v4, :cond_2

    .line 1920
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    .line 1921
    .local v2, "tmpreceivers":Ljava/util/List;
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object v3, p1, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    .line 1922
    iput-object v2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 1926
    .end local v2    # "tmpreceivers":Ljava/util/List;
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v4, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    aput-object p1, v3, v4

    .line 1927
    iget v3, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    iget v4, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    invoke-direct {p0, v3, v8, v4}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 1932
    const-wide/16 v0, 0x0

    .line 1933
    .local v0, "duration":J
    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 1934
    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long v0, v4, v6

    .line 1938
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/am/BroadcastQueue;->makeBroadcastSummaryToStringLocked(Landroid/content/Intent;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1939
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    iget v4, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v6, v3, v4

    .line 1940
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    iget v4, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v6, v3, v4

    .line 1941
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    iget v4, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 1942
    iget v3, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget v4, p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-direct {p0, v3, v8, v4}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 1944
    const-wide/16 v4, 0xbb8

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 1945
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v4, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    aput-object p1, v3, v4

    .line 1946
    iget v3, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    const/4 v4, 0x3

    invoke-direct {p0, v3, v8, v4}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    goto :goto_0

    .line 1935
    :cond_4
    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 1936
    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v0, v4, v6

    goto :goto_1
.end method

.method private deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V
    .locals 22
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p3, "ordered"    # Z

    .prologue
    .line 703
    const/16 v21, 0x0

    .line 705
    .local v21, "skip":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 708
    .local v20, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 709
    .local v14, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v14}, Lcom/sec/android/emergencymode/EmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 711
    const/16 v21, 0x1

    .line 712
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping deliverToRegisteredReceiverLocked ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": broadcast skipped"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .end local v14    # "action":Ljava/lang/String;
    .end local v20    # "pkgName":Ljava/lang/String;
    :cond_1
    const/16 v19, -0x1

    .line 722
    .local v19, "perm":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v19

    .line 732
    if-eqz v19, :cond_8

    .line 733
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: broadcasting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to registered receiver "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/16 v21, 0x1

    .line 756
    :cond_2
    :goto_0
    if-nez v21, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 757
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    .line 758
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v4, v2, v17

    .line 761
    .local v4, "requiredPermission":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v6, v6, Lcom/android/server/am/ReceiverList;->uid:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v19

    .line 767
    if-eqz v19, :cond_9

    .line 768
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: receiving "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to sender "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/16 v21, 0x1

    .line 798
    .end local v4    # "requiredPermission":Ljava/lang/String;
    .end local v17    # "i":I
    :cond_3
    :goto_2
    if-nez v21, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_5

    .line 799
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v2, Lcom/android/server/am/ReceiverList;->pid:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v8, v2, Lcom/android/server/am/ReceiverList;->uid:I

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v19

    .line 801
    if-eqz v19, :cond_5

    .line 802
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: security check failed when receiving "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to sender "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/16 v21, 0x1

    .line 812
    :cond_5
    if-nez v21, :cond_6

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 816
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: receiving "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires appop "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to sender "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/16 v21, 0x1

    .line 827
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v10, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 895
    :cond_7
    :goto_3
    return-void

    .line 741
    :cond_8
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v18

    .line 742
    .local v18, "opCode":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 745
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: broadcasting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires appop "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to registered receiver "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 779
    .end local v18    # "opCode":I
    .restart local v4    # "requiredPermission":Ljava/lang/String;
    .restart local v17    # "i":I
    :cond_9
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v15

    .line 780
    .local v15, "appOp":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_a

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v15, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v15, v3, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    .line 784
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: receiving "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires appop "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to sender "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/16 v21, 0x1

    .line 794
    goto/16 :goto_2

    .line 757
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 832
    .end local v4    # "requiredPermission":Ljava/lang/String;
    .end local v15    # "appOp":I
    .end local v17    # "i":I
    :cond_b
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_c

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v2, :cond_d

    .line 833
    :cond_c
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping deliver ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": process crashing"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/16 v21, 0x1

    .line 840
    :cond_d
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastFilter;->added:Z

    if-nez v2, :cond_e

    .line 841
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping deliver ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": filter unregistered"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/16 v21, 0x1

    .line 846
    :cond_e
    if-nez v21, :cond_7

    .line 850
    if-eqz p3, :cond_f

    .line 851
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 852
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 853
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 854
    const/4 v2, 0x2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 855
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_f

    .line 861
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 862
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 872
    :cond_f
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v2, :cond_10

    .line 873
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v2, v3

    .line 877
    :cond_10
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v6, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/BroadcastQueue;->mQueueIdx:I

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setBroadcastQueueHint(I)Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v5 .. v13}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 880
    if-eqz p3, :cond_7

    .line 881
    const/4 v2, 0x3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 883
    :catch_0
    move-exception v16

    .line 884
    .local v16, "e":Landroid/os/RemoteException;
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure sending broadcast "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    if-eqz p3, :cond_7

    .line 886
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 887
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 888
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 889
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_7

    .line 890
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    goto/16 :goto_3
.end method

.method private getWhiteList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1744
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->quickbootWhiteList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueue;->quickbootWhiteList:Ljava/util/ArrayList;

    .line 1747
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->quickbootWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->quickbootWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.qapp.quickboot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    :cond_0
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->quickbootWhiteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static initializeDeferrableIntents()V
    .locals 2

    .prologue
    .line 924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueue;->mDeferrableIntents:Ljava/util/ArrayList;

    .line 926
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mDeferrableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mDeferrableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mDeferrableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mDeferrableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mDeferrableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    return-void
.end method

.method private static initializeReplaceableIntents()V
    .locals 2

    .prologue
    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueue;->mReplaceableIntents:Ljava/util/ArrayList;

    .line 936
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mReplaceableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mReplaceableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mReplaceableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mReplaceableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mReplaceableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    return-void
.end method

.method static final isDeferrable(ZLandroid/content/Intent;)Z
    .locals 3
    .param p0, "ordered"    # Z
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 944
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEFERRED_Q_ENABLED:Z

    if-nez v1, :cond_1

    .line 950
    :cond_0
    :goto_0
    return v0

    .line 947
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 950
    :cond_2
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mDeferrableIntents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static final isReplaceable(ZLandroid/content/Intent;)Z
    .locals 3
    .param p0, "ordered"    # Z
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 954
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEFERRED_Q_ENABLED:Z

    if-nez v1, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v0

    .line 957
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 960
    :cond_2
    sget-object v0, Lcom/android/server/am/BroadcastQueue;->mReplaceableIntents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private final makeBroadcastSummaryToStringLocked(Landroid/content/Intent;J)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2012
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2013
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v2, v3, v3, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    if-eqz v0, :cond_0

    .line 2017
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2018
    const-string v2, "    extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2014
    :cond_1
    const-string v2, ", --ms"

    goto :goto_0
.end method

.method private static performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 10
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 685
    if-eqz p0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 699
    :goto_0
    return-void

    .line 693
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "app.thread must not be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_1
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    goto :goto_0
.end method

.method private final processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 422
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 425
    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 426
    iput-object p2, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 427
    iput-object p1, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 428
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 429
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 433
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 435
    const/4 v10, 0x0

    .line 440
    .local v10, "started":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mQueueType:I

    if-ne v0, v1, :cond_2

    .line 445
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTimeDeferred:[J

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 451
    :goto_0
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mQueueIdx:I

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setBroadcastQueueHint(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v7, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v8, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v9, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 455
    const-string v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Process cur broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DELIVERED for app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    const/4 v10, 0x1

    .line 459
    if-nez v10, :cond_1

    .line 462
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 463
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 464
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 467
    :cond_1
    return-void

    .line 447
    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    if-nez v10, :cond_3

    .line 462
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 463
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 464
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    :cond_3
    throw v0
.end method

.method private final ringAdvance(III)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "increment"    # I
    .param p3, "ringSize"    # I

    .prologue
    .line 1874
    add-int/2addr p1, p2

    .line 1875
    if-gez p1, :cond_1

    add-int/lit8 p1, p3, -0x1

    .line 1877
    .end local p1    # "x":I
    :cond_0
    :goto_0
    return p1

    .line 1876
    .restart local p1    # "x":I
    :cond_1
    if-lt p1, p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backgroundServicesFinishedLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 670
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 672
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 673
    const-string v1, "BroadcastQueue"

    const-string v2, "Resuming delayed broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 675
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 676
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 679
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    return-void
.end method

.method final broadcastTimeoutLocked(Z)V
    .locals 20
    .param p1, "fromMsg"    # Z

    .prologue
    .line 1769
    if-eqz p1, :cond_0

    .line 1770
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1773
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1871
    :cond_1
    :goto_0
    return-void

    .line 1777
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1778
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 1779
    .local v5, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz p1, :cond_4

    .line 1780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_3

    .line 1782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1783
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    add-long v18, v6, v8

    .line 1784
    .local v18, "timeoutTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    goto :goto_0

    .line 1787
    .end local v18    # "timeoutTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v4, :cond_1

    .line 1794
    iget-wide v6, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    add-long v18, v6, v8

    .line 1795
    .restart local v18    # "timeoutTime":J
    cmp-long v4, v18, v16

    if-lez v4, :cond_4

    .line 1804
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    goto :goto_0

    .line 1809
    .end local v18    # "timeoutTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/BroadcastRecord;

    .line 1810
    .local v14, "br":Lcom/android/server/am/BroadcastRecord;
    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    .line 1815
    const-string v6, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "] Waited long enough for: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_5

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const/4 v4, 0x0

    iput-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1818
    const/4 v4, 0x0

    iput v4, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1819
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    goto/16 :goto_0

    .line 1815
    :cond_5
    const-string v4, "(null)"

    goto :goto_1

    .line 1823
    :cond_6
    const-string v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Timeout of broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - receiver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", started "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v8, v16, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms ago"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    move-wide/from16 v0, v16

    iput-wide v0, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1826
    iget v4, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 1829
    iget v4, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-gtz v4, :cond_7

    .line 1830
    const-string v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Timeout on receiver with nextReceiver <= 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1834
    :cond_7
    const/4 v12, 0x0

    .line 1835
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v11, 0x0

    .line 1837
    .local v11, "anrMessage":Ljava/lang/String;
    iget-object v4, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 1838
    .local v15, "curReceiver":Ljava/lang/Object;
    const-string v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver during timeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1840
    instance-of v4, v15, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_b

    move-object v13, v15

    .line 1841
    check-cast v13, Lcom/android/server/am/BroadcastFilter;

    .line 1842
    .local v13, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v4, :cond_8

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v6, :cond_8

    .line 1844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1845
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    iget-object v7, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v12, v0

    .line 1847
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1853
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_8
    :goto_2
    if-eqz v12, :cond_9

    .line 1854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1857
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v4, v5, :cond_a

    .line 1858
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1862
    :cond_a
    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v9, v5, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1864
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1866
    if-eqz v11, :cond_1

    .line 1869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v6, Lcom/android/server/am/BroadcastQueue$AppNotResponding;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12, v11}, Lcom/android/server/am/BroadcastQueue$AppNotResponding;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1847
    .restart local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1850
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_b
    iget-object v12, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    goto :goto_2
.end method

.method final cancelBroadcastTimeoutLocked()V
    .locals 2

    .prologue
    .line 1762
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1766
    :cond_0
    return-void
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 1953
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1954
    .local v1, "didSomething":Z
    const/4 v0, 0x0

    .line 1956
    .local v0, "did":Z
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1957
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1959
    if-nez p4, :cond_0

    if-eqz v1, :cond_0

    .line 1960
    const/4 v3, 0x1

    .line 1981
    :goto_1
    return v3

    .line 1956
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1964
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_3

    .line 1965
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    .line 1967
    or-int/2addr v1, v0

    .line 1969
    if-eqz p4, :cond_2

    if-eqz v0, :cond_2

    .line 1970
    const-string/jumbo v4, "splitIntent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast cleanup, package="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", queue="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", nextReceiver="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget v3, v3, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1974
    const-string/jumbo v4, "splitIntent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast cleanup, record="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", receivers.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    :cond_3
    move v3, v1

    .line 1981
    goto/16 :goto_1
.end method

.method final dropDeferredOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const-wide/16 v4, 0x1

    .line 401
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-nez v0, :cond_2

    .line 402
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 404
    .local v1, "old":Lcom/android/server/am/BroadcastRecord;
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v2, v1, :cond_1

    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    if-nez v2, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 406
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 407
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 408
    iget-wide v2, p0, Lcom/android/server/am/BroadcastQueue;->statDroppedBrCount:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/BroadcastQueue;->statDroppedBrCount:J

    .line 401
    .end local v1    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 410
    .restart local v1    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 411
    iget-wide v2, p0, Lcom/android/server/am/BroadcastQueue;->statDroppedBrCount:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/BroadcastQueue;->statDroppedBrCount:J

    goto :goto_1

    .line 415
    .end local v1    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_2
    return-void
.end method

.method final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "needSep"    # Z

    .prologue
    .line 2027
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyy-MM-dd HH:mm:ss"

    invoke-direct/range {v17 .. v18}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2028
    .local v17, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 2030
    :cond_0
    const/4 v12, 0x0

    .line 2031
    .local v12, "printed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_4

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 2033
    .local v5, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_1

    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 2031
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2036
    :cond_1
    if-nez v12, :cond_3

    .line 2037
    if-eqz p7, :cond_2

    .line 2038
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2040
    :cond_2
    const/16 p7, 0x1

    .line 2041
    const/4 v12, 0x1

    .line 2042
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Active broadcasts ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Active Broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_1

    .line 2047
    .end local v5    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_4
    const/4 v12, 0x0

    .line 2048
    const/16 p7, 0x1

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    :goto_2
    if-ltz v7, :cond_8

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 2051
    .restart local v5    # "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_5

    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 2049
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 2054
    :cond_5
    if-nez v12, :cond_7

    .line 2055
    if-eqz p7, :cond_6

    .line 2056
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2058
    :cond_6
    const/16 p7, 0x1

    .line 2059
    const/4 v12, 0x1

    .line 2060
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Active ordered broadcasts ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2062
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Active Ordered Broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/BroadcastRecord;

    const-string v19, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_3

    .line 2065
    .end local v5    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_8
    if-eqz p6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2067
    :cond_9
    if-eqz p7, :cond_a

    .line 2068
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2070
    :cond_a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Pending broadcast ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    const-string v19, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 2076
    :goto_4
    const/16 p7, 0x1

    .line 2081
    .end local v7    # "i":I
    .end local v12    # "printed":Z
    :cond_b
    const/4 v12, 0x0

    .line 2083
    .restart local v12    # "printed":Z
    const/4 v10, 0x0

    .line 2084
    .local v10, "printBootCompleted":Z
    const/4 v11, 0x0

    .line 2086
    .local v11, "printBootCompletedFinished":Z
    const/4 v7, -0x1

    .line 2087
    .restart local v7    # "i":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 2088
    .local v9, "lastIndex":I
    move/from16 v16, v9

    .line 2092
    .local v16, "ringIndex":I
    :cond_c
    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v16

    .line 2093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    aget-object v15, v18, v16

    .line 2095
    .local v15, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v10, :cond_d

    .line 2096
    const/4 v10, 0x0

    .line 2097
    const/4 v11, 0x1

    .line 2098
    move/from16 v16, v9

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    move/from16 v19, v0

    aget-object v15, v18, v19

    .line 2101
    :cond_d
    if-nez v15, :cond_17

    .line 2138
    :cond_e
    :goto_5
    move/from16 v0, v16

    if-ne v0, v9, :cond_c

    if-nez v10, :cond_c

    .line 2140
    if-eqz v11, :cond_f

    .line 2141
    add-int/lit8 v7, v7, -0x1

    .line 2144
    :cond_f
    if-nez p6, :cond_11

    .line 2145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    move/from16 v16, v0

    move/from16 v9, v16

    .line 2148
    const/4 v12, 0x0

    .line 2149
    const/4 v7, -0x1

    .line 2171
    :cond_10
    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v16

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v8, v18, v16

    .line 2174
    .local v8, "intent":Ljava/lang/String;
    if-nez v8, :cond_1e

    .line 2214
    :goto_6
    move/from16 v0, v16

    if-ne v0, v9, :cond_10

    .line 2219
    .end local v8    # "intent":Ljava/lang/String;
    :cond_11
    :goto_7
    const/4 v13, 0x0

    .line 2220
    .local v13, "printedforAbortedTitle":Z
    const/4 v7, -0x1

    .line 2221
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    .line 2222
    move/from16 v16, v9

    .line 2224
    :cond_12
    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v16

    .line 2225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    aget-object v15, v18, v16

    .line 2226
    if-nez v15, :cond_22

    .line 2256
    :cond_13
    :goto_8
    move/from16 v0, v16

    if-ne v0, v9, :cond_12

    .line 2261
    const/4 v14, 0x0

    .line 2262
    .local v14, "printedforDelayedTitle":Z
    const/4 v7, -0x1

    .line 2263
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    .line 2264
    move/from16 v16, v9

    .line 2266
    :cond_14
    const/16 v18, -0x1

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v16

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    aget-object v15, v18, v16

    .line 2268
    if-nez v15, :cond_28

    .line 2308
    :cond_15
    :goto_9
    move/from16 v0, v16

    if-ne v0, v9, :cond_14

    .line 2323
    return p7

    .line 2074
    .end local v9    # "lastIndex":I
    .end local v10    # "printBootCompleted":Z
    .end local v11    # "printBootCompletedFinished":Z
    .end local v13    # "printedforAbortedTitle":Z
    .end local v14    # "printedforDelayedTitle":Z
    .end local v15    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v16    # "ringIndex":I
    :cond_16
    const-string v18, "    (null)"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2105
    .restart local v9    # "lastIndex":I
    .restart local v10    # "printBootCompleted":Z
    .restart local v11    # "printBootCompletedFinished":Z
    .restart local v15    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v16    # "ringIndex":I
    :cond_17
    add-int/lit8 v7, v7, 0x1

    .line 2106
    if-eqz p6, :cond_18

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 2109
    :cond_18
    if-nez v12, :cond_1a

    .line 2110
    if-eqz p7, :cond_19

    .line 2111
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2113
    :cond_19
    const/16 p7, 0x1

    .line 2114
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Historical broadcasts ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    const/4 v12, 0x1

    .line 2117
    :cond_1a
    if-eqz p5, :cond_1c

    .line 2118
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Historical Broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2119
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2120
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 2134
    :cond_1b
    :goto_a
    move/from16 v0, v16

    if-ne v0, v9, :cond_e

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v18

    if-nez v18, :cond_e

    if-nez v11, :cond_e

    .line 2136
    const/4 v10, 0x1

    goto/16 :goto_5

    .line 2122
    :cond_1c
    const-string v18, "  #"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2123
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2124
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2125
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1d

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1d

    .line 2126
    const-string v18, "    targetComp: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2128
    :cond_1d
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2129
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_1b

    .line 2130
    const-string v18, "    extras: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2177
    .end local v6    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "intent":Ljava/lang/String;
    :cond_1e
    if-nez v12, :cond_20

    .line 2178
    if-eqz p7, :cond_1f

    .line 2179
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2181
    :cond_1f
    const/16 p7, 0x1

    .line 2182
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Historical broadcasts summary ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    const/4 v12, 0x1

    .line 2185
    :cond_20
    if-nez p5, :cond_21

    const/16 v18, 0x32

    move/from16 v0, v18

    if-lt v7, v0, :cond_21

    .line 2186
    const-string v18, "  ..."

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2189
    :cond_21
    add-int/lit8 v7, v7, 0x1

    .line 2190
    const-string v18, "  #"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2195
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v16

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2198
    const-string v18, " dispatch "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v16

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2201
    const-string v18, " finish"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2202
    const-string v18, "    enq="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2203
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    const-string v18, " disp="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2205
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    const-string v18, " fin="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2207
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2230
    .end local v8    # "intent":Ljava/lang/String;
    .restart local v13    # "printedforAbortedTitle":Z
    :cond_22
    add-int/lit8 v7, v7, 0x1

    .line 2231
    if-eqz p6, :cond_23

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 2234
    :cond_23
    if-nez v13, :cond_25

    .line 2235
    if-eqz p7, :cond_24

    .line 2236
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2238
    :cond_24
    const/16 p7, 0x1

    .line 2239
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Aborted Historical broadcasts ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2240
    const/4 v13, 0x1

    .line 2242
    :cond_25
    const-string v18, "  #"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2243
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2245
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_26

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_26

    .line 2246
    const-string v18, "    targetComp: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    :cond_26
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2249
    .restart local v6    # "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_27

    .line 2250
    const-string v18, "    extras: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2252
    :cond_27
    iget v0, v15, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v18, v0

    add-int/lit8 v4, v18, -0x1

    .line 2253
    .local v4, "abortedIdx":I
    if-ltz v4, :cond_13

    .line 2254
    const-string v18, "    aborted by : "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2272
    .end local v4    # "abortedIdx":I
    .end local v6    # "bundle":Landroid/os/Bundle;
    .restart local v14    # "printedforDelayedTitle":Z
    :cond_28
    add-int/lit8 v7, v7, 0x1

    .line 2273
    if-eqz p6, :cond_29

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 2276
    :cond_29
    if-nez v14, :cond_2b

    .line 2277
    if-eqz p7, :cond_2a

    .line 2278
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2280
    :cond_2a
    const/16 p7, 0x1

    .line 2281
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Delayed Historical broadcasts ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2283
    const/4 v14, 0x1

    .line 2285
    :cond_2b
    if-eqz p5, :cond_2c

    .line 2286
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Delayed Historical Broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2287
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2288
    const-string v18, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2289
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto/16 :goto_9

    .line 2291
    :cond_2c
    const-string v18, "  #"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2292
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2293
    const-string v18, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2294
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2295
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2296
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2297
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2d

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2d

    .line 2299
    const-string v18, "    targetComp: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2300
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2302
    :cond_2d
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2303
    .restart local v6    # "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_15

    .line 2304
    const-string v18, "    extras: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 355
    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 340
    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "resultAbort"    # Z
    .param p6, "waitForServices"    # Z

    .prologue
    .line 566
    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 567
    .local v5, "state":I
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 568
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    iput v6, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 569
    if-nez v5, :cond_0

    .line 570
    const-string v6, "BroadcastQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "finishReceiver ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] called but state is IDLE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 573
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 574
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-ne v6, p1, :cond_1

    .line 575
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 577
    :cond_1
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v6, :cond_2

    .line 578
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    iget-object v6, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 580
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 581
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 582
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 583
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 587
    iget v6, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v6, :cond_3

    .line 589
    const/4 v6, 0x5

    iget v7, p0, Lcom/android/server/am/BroadcastQueue;->mQueueType:I

    if-ne v6, v7, :cond_5

    .line 590
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTimeDeferred:[J

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 597
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerService;->mReceiverLogThresholdMs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 598
    const-wide/16 v0, 0x0

    .line 600
    .local v0, "duration":J
    const/4 v6, 0x5

    iget v7, p0, Lcom/android/server/am/BroadcastQueue;->mQueueType:I

    if-ne v6, v7, :cond_6

    .line 601
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTimeDeferred:[J

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v6, v6, v7

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTimeDeferred:[J

    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v9, v9, -0x1

    aget-wide v8, v8, v9

    sub-long v0, v6, v8

    .line 609
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerService;->mReceiverLogThresholdMs:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    .line 610
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 611
    const-string v6, "BroadcastQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receiver elapsed time["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms],"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v0    # "duration":J
    :cond_3
    iput p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 621
    iput-object p3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 622
    iput-object p4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 623
    if-eqz p5, :cond_7

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x8000000

    and-int/2addr v6, v7

    if-nez v6, :cond_7

    .line 624
    iput-boolean p5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 627
    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v7, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    aput-object p1, v6, v7

    .line 628
    iget v6, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    .line 634
    :goto_2
    if-eqz p6, :cond_a

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_a

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-boolean v6, v6, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    if-eqz v6, :cond_a

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v6, v6, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v6, v6, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_a

    .line 638
    iget v6, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v7, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 639
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 640
    .local v3, "obj":Ljava/lang/Object;
    instance-of v6, v3, Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_8

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .end local v3    # "obj":Ljava/lang/Object;
    move-object v2, v3

    .line 645
    .local v2, "nextReceiver":Landroid/content/pm/ActivityInfo;
    :goto_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_4

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 652
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActiveServices;->hasBackgroundServices(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 653
    const-string v6, "BroadcastQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delay finish: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v6, 0x4

    iput v6, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 655
    const/4 v6, 0x0

    .line 665
    .end local v2    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :goto_4
    return v6

    .line 592
    :cond_5
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    goto/16 :goto_0

    .line 604
    .restart local v0    # "duration":J
    :cond_6
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v6, v6, v7

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v9, v9, -0x1

    aget-wide v8, v8, v9

    sub-long v0, v6, v8

    goto/16 :goto_1

    .line 631
    .end local v0    # "duration":J
    :cond_7
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    goto/16 :goto_2

    .line 640
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 642
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto :goto_3

    .line 660
    .end local v2    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :cond_a
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 665
    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c

    :cond_b
    const/4 v6, 0x1

    goto :goto_4

    :cond_c
    const/4 v6, 0x0

    goto :goto_4
.end method

.method public getMatchingOrderedReceiver(Landroid/os/IBinder;)Lcom/android/server/am/BroadcastRecord;
    .locals 3
    .param p1, "receiver"    # Landroid/os/IBinder;

    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 557
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    .line 561
    .end local v0    # "r":Lcom/android/server/am/BroadcastRecord;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingBroadcastProcessLocked(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1985
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v2, v4, -0x1

    .line 1986
    .local v2, "logIndex":I
    if-ltz v2, :cond_1

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1987
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1988
    .local v1, "curReceiver":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1989
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 1990
    .local v0, "bf":Lcom/android/server/am/BroadcastFilter;
    const/16 v4, 0x7548

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2008
    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v1    # "curReceiver":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v1    # "curReceiver":Ljava/lang/Object;
    :cond_0
    move-object v3, v1

    .line 1994
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1995
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    const/16 v4, 0x7549

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 2000
    .end local v1    # "curReceiver":Ljava/lang/Object;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-gez v2, :cond_2

    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding broadcast before first receiver is invoked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_2
    const/16 v4, 0x7549

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget v6, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "NONE"

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method final processNextBroadcast(Z)V
    .locals 1
    .param p1, "fromMsg"    # Z

    .prologue
    .line 965
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(ZZ)Z

    .line 966
    return-void
.end method

.method final processNextBroadcast(ZZ)Z
    .locals 57
    .param p1, "fromMsg"    # Z
    .param p2, "trim"    # Z

    .prologue
    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v56, v0

    monitor-enter v56

    .line 983
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 985
    if-eqz p1, :cond_0

    .line 986
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 990
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/BroadcastRecord;

    .line 992
    .local v47, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v47

    iput-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 993
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v47

    iput-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 994
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    .line 997
    .local v17, "N":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 998
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v0, v30

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    .line 1004
    .local v53, "target":Ljava/lang/Object;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    aput-wide v10, v4, v30

    .line 1006
    check-cast v53, Lcom/android/server/am/BroadcastFilter;

    .end local v53    # "target":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V

    .line 1009
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    aput-wide v10, v4, v30

    .line 997
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 1012
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_0

    .line 1738
    .end local v17    # "N":I
    .end local v30    # "i":I
    .end local v47    # "r":Lcom/android/server/am/BroadcastRecord;
    :catchall_0
    move-exception v4

    monitor-exit v56
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1022
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_6

    .line 1028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/ProcessRecord;

    .line 1030
    .local v46, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v46, :cond_3

    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v4, :cond_4

    :cond_3
    const/16 v35, 0x1

    .line 1031
    .local v35, "isDead":Z
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1032
    if-nez v35, :cond_5

    .line 1034
    const/4 v4, 0x0

    :try_start_3
    monitor-exit v56
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1740
    .end local v35    # "isDead":Z
    .end local v46    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_3
    return v4

    .line 1030
    .restart local v46    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    const/16 v35, 0x0

    goto :goto_2

    .line 1031
    .end local v46    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4

    .line 1036
    .restart local v35    # "isDead":Z
    .restart local v46    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pending app  ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " died before responding to broadcast"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v5, v4, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1041
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1045
    .end local v35    # "isDead":Z
    .end local v46    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const/16 v37, 0x0

    .line 1047
    .local v37, "looped":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    .line 1050
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueType:I

    if-eq v4, v5, :cond_8

    .line 1052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 1054
    :cond_8
    if-eqz v37, :cond_a

    .line 1058
    if-eqz p2, :cond_9

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 1060
    const/4 v4, 0x1

    monitor-exit v56

    goto :goto_3

    .line 1062
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1064
    :cond_a
    const/4 v4, 0x0

    monitor-exit v56

    goto/16 :goto_3

    .line 1067
    :cond_b
    const-string v4, "background"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueOnlyRun:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 1070
    const/4 v4, 0x0

    monitor-exit v56

    goto/16 :goto_3

    .line 1074
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/BroadcastRecord;

    .line 1075
    .restart local v47    # "r":Lcom/android/server/am/BroadcastRecord;
    const/16 v29, 0x0

    .line 1084
    .local v29, "forceReceive":Z
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v4, :cond_e

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v39

    .line 1085
    .local v39, "numReceivers":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, v47

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_d

    .line 1086
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v40

    .line 1087
    .local v40, "now":J
    if-lez v39, :cond_d

    move-object/from16 v0, v47

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v10, 0x2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    mul-long/2addr v10, v12

    move/from16 v0, v39

    int-to-long v12, v0

    mul-long/2addr v10, v12

    add-long/2addr v4, v10

    cmp-long v4, v40, v4

    if-lez v4, :cond_d

    .line 1089
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hung broadcast ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] discarded after timeout failure:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " now="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v40

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " dispatchTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-wide v10, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " startTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-wide v10, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " intent="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " numReceivers="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " nextReceiver="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " state="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 1099
    const/16 v29, 0x1

    .line 1100
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1104
    .end local v40    # "now":J
    :cond_d
    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v4, :cond_f

    .line 1109
    const/4 v4, 0x0

    monitor-exit v56

    goto/16 :goto_3

    .line 1084
    .end local v39    # "numReceivers":I
    :cond_e
    const/16 v39, 0x0

    goto/16 :goto_4

    .line 1121
    .restart local v39    # "numReceivers":I
    :cond_f
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    if-eqz v4, :cond_16

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueType:I

    if-ne v4, v5, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    if-nez v4, :cond_16

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v4, :cond_10

    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v0, v39

    if-lt v4, v0, :cond_16

    .line 1124
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 1125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->deferBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1127
    const/16 v47, 0x0

    .line 1128
    const/16 v37, 0x1

    .line 1231
    :cond_11
    :goto_5
    if-eqz v47, :cond_7

    .line 1234
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v48, v0

    add-int/lit8 v4, v48, 0x1

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1238
    .local v48, "recIdx":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v47

    iput-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1239
    if-nez v48, :cond_12

    .line 1240
    move-object/from16 v0, v47

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, v47

    iput-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v47

    iput-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1247
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v4, :cond_13

    .line 1248
    move-object/from16 v0, v47

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    add-long v54, v4, v10

    .line 1252
    .local v54, "timeoutTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 1255
    .end local v54    # "timeoutTime":J
    :cond_13
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v21, v0

    .line 1256
    .local v21, "brOptions":Landroid/app/BroadcastOptions;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v0, v48

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    .line 1258
    .local v38, "nextReceiver":Ljava/lang/Object;
    move-object/from16 v0, v38

    instance-of v4, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_1f

    .line 1261
    move-object/from16 v0, v38

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v28, v0

    .line 1266
    .local v28, "filter":Lcom/android/server/am/BroadcastFilter;
    move-object/from16 v0, v47

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V

    .line 1267
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v4, :cond_14

    move-object/from16 v0, v47

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v4, :cond_1e

    .line 1273
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1281
    :cond_15
    :goto_6
    const/4 v4, 0x0

    monitor-exit v56

    goto/16 :goto_3

    .line 1132
    .end local v21    # "brOptions":Landroid/app/BroadcastOptions;
    .end local v28    # "filter":Lcom/android/server/am/BroadcastFilter;
    .end local v38    # "nextReceiver":Ljava/lang/Object;
    .end local v48    # "recIdx":I
    :cond_16
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v4, :cond_17

    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v0, v39

    if-ge v4, v0, :cond_17

    move-object/from16 v0, v47

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v4, :cond_17

    if-eqz v29, :cond_11

    .line 1136
    :cond_17
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v4, :cond_19

    .line 1138
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->skipResultReceiver:Z

    .line 1139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    const-string v5, "background"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueNum:I

    if-ge v4, v5, :cond_18

    .line 1141
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->skipResultReceiver:Z

    .line 1146
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->skipResultReceiver:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_19

    .line 1153
    :try_start_6
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, v47

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/BroadcastQueue;->mQueueIdx:I

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setBroadcastQueueHint(I)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v47

    iget v12, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v4 .. v12}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1158
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1169
    :cond_19
    :goto_7
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 1180
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1184
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-nez v4, :cond_1a

    .line 1185
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    iget-object v4, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v9}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    const/4 v10, 0x1

    invoke-static {v4, v5, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1190
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Save the BOOT_COMPLETED history constantly, mBroadcastHistory[MAX]="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    aget-object v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1198
    const-string v4, "background"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueNum:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 1201
    const-string/jumbo v4, "splitIntent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Queue : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " intent "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is finished at BG and BG split queue"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". set mSplitStart false."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    .line 1210
    :cond_1b
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    const-string v5, "backgroundsplit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueNum:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_1c

    .line 1213
    const-string/jumbo v4, "splitIntent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Queue : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " intent "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is finished at BG and BG split queue"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". set mSplitStart and mBgSplitQueueOnlyRun false."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueOnlyRun:Z

    .line 1218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1223
    :cond_1c
    const/16 v47, 0x0

    .line 1224
    const/16 v37, 0x1

    .line 1225
    goto/16 :goto_5

    .line 1159
    :catch_0
    move-exception v27

    .line 1160
    .local v27, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 1161
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] sending broadcast result of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1206
    .end local v27    # "e":Landroid/os/RemoteException;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueOnlyRun:Z

    goto/16 :goto_8

    .line 1276
    .restart local v21    # "brOptions":Landroid/app/BroadcastOptions;
    .restart local v28    # "filter":Lcom/android/server/am/BroadcastFilter;
    .restart local v38    # "nextReceiver":Ljava/lang/Object;
    .restart local v48    # "recIdx":I
    :cond_1e
    if-eqz v21, :cond_15

    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_15

    .line 1277
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v10

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v4, v10, v11, v1}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V

    goto/16 :goto_6

    .line 1284
    .end local v28    # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_1f
    if-eqz p1, :cond_20

    move-object/from16 v0, v47

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->isDeferrable(ZLandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    if-nez v4, :cond_20

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getSluggishDelay(Lcom/android/server/am/BroadcastQueue;)I

    move-result v26

    .line 1286
    .local v26, "delay":I
    if-lez v26, :cond_20

    .line 1287
    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1288
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1289
    move/from16 v0, v26

    int-to-long v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked(J)V

    .line 1290
    const/4 v4, 0x0

    monitor-exit v56

    goto/16 :goto_3

    .line 1297
    .end local v26    # "delay":I
    :cond_20
    move-object/from16 v0, v38

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v31, v0

    .line 1299
    .local v31, "info":Landroid/content/pm/ResolveInfo;
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    .local v25, "component":Landroid/content/ComponentName;
    const/16 v52, 0x0

    .line 1306
    .local v52, "skip":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1307
    :cond_21
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 1308
    .local v45, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    .line 1309
    .local v18, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/emergencymode/EmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1310
    const/16 v52, 0x1

    .line 1311
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping processNextBroadcast ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": broadcast skipped"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    .end local v18    # "action":Ljava/lang/String;
    .end local v45    # "pkgName":Ljava/lang/String;
    :cond_22
    const/16 v44, -0x1

    .line 1324
    .local v44, "perm":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, v47

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v31

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->exported:Z

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v44

    .line 1333
    const-string v4, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1334
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    .line 1335
    .local v24, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v49

    .line 1336
    .local v49, "receiverClassName":Ljava/lang/String;
    const-string v4, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1338
    const-string v4, "com.android.settings"

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_30

    .line 1340
    :cond_23
    const/16 v44, 0x0

    .line 1341
    const-string v4, "BroadcastQueue"

    const-string/jumbo v5, "permission granted for keyguard receiver"

    invoke-static {v4, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    .end local v24    # "cn":Landroid/content/ComponentName;
    .end local v49    # "receiverClassName":Ljava/lang/String;
    :cond_24
    :goto_9
    if-eqz v44, :cond_32

    .line 1356
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v4, :cond_31

    .line 1357
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: broadcasting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not exported from uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to receiver "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :goto_a
    const/16 v52, 0x1

    .line 1388
    :cond_25
    :goto_b
    if-nez v52, :cond_26

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_26

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_26

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_26

    .line 1390
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_c
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_26

    .line 1391
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v51, v4, v30
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1393
    .local v51, "requiredPermission":Ljava/lang/String;
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object/from16 v0, v51

    invoke-interface {v4, v0, v5, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v44

    .line 1401
    :goto_d
    if-eqz v44, :cond_33

    .line 1402
    :try_start_9
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: receiving "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requires "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to sender "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/16 v52, 0x1

    .line 1428
    .end local v30    # "i":I
    .end local v51    # "requiredPermission":Ljava/lang/String;
    :cond_26
    :goto_e
    if-nez v52, :cond_27

    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, v47

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7, v9}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_27

    .line 1432
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: receiving "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requires appop "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to sender "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/16 v52, 0x1

    .line 1440
    :cond_27
    if-nez v52, :cond_28

    .line 1441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v47

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v4

    if-nez v4, :cond_35

    const/16 v52, 0x1

    .line 1444
    :cond_28
    :goto_f
    const/16 v36, 0x0

    .line 1446
    .local v36, "isSingleton":Z
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v4, v5, v7, v9, v10}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v36

    .line 1453
    :goto_10
    :try_start_b
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_29

    .line 1454
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_29

    .line 1458
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: Receiver "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requests FLAG_SINGLE_USER, but app does not hold "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/16 v52, 0x1

    .line 1464
    :cond_29
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2a

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v4, :cond_2a

    .line 1466
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping deliver ordered ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": process crashing"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const/16 v52, 0x1

    .line 1472
    :cond_2a
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v4, :cond_2c

    .line 1474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->handleSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;)V

    .line 1476
    const/4 v6, 0x0

    .line 1477
    .local v6, "callerthread":Landroid/app/IApplicationThread;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2b

    .line 1478
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 1479
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, v47

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const-string v9, "broadcast"

    move-object/from16 v0, v47

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v5, v25

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v4

    if-eqz v4, :cond_2c

    .line 1481
    const/16 v52, 0x1

    .line 1486
    .end local v6    # "callerthread":Landroid/app/IApplicationThread;
    :cond_2c
    if-nez v52, :cond_2d

    .line 1487
    const/16 v33, 0x0

    .line 1489
    .local v33, "isAvailable":Z
    :try_start_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v33

    .line 1497
    :goto_11
    if-nez v33, :cond_36

    .line 1502
    const/16 v52, 0x1

    .line 1529
    .end local v33    # "isAvailable":Z
    :cond_2d
    :goto_12
    if-nez v52, :cond_2e

    :try_start_d
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_2e

    .line 1531
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v43

    .line 1533
    .local v43, "pUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    move/from16 v0, v43

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(IZ)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 1534
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not running."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping broadcast of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", pUserid : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", user : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", curUser : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", curComponent : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const/16 v52, 0x1

    .line 1545
    .end local v43    # "pUserId":I
    :cond_2e
    if-nez v52, :cond_2f

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2f

    .line 1547
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "sec_container_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v4

    if-nez v4, :cond_2f

    .line 1551
    :try_start_e
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KNOX 1.0 not supported hence blocked:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1552
    const/16 v52, 0x1

    .line 1561
    :cond_2f
    :goto_13
    if-eqz v52, :cond_37

    .line 1565
    const/4 v4, 0x0

    :try_start_f
    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1566
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1567
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1568
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1569
    const/4 v4, 0x0

    monitor-exit v56

    goto/16 :goto_3

    .line 1343
    .end local v36    # "isSingleton":Z
    .restart local v24    # "cn":Landroid/content/ComponentName;
    .restart local v49    # "receiverClassName":Ljava/lang/String;
    :cond_30
    const-string v4, "BroadcastQueue"

    const-string/jumbo v5, "permission denied for keyguard receiver"

    invoke-static {v4, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/16 v44, -0x1

    goto/16 :goto_9

    .line 1364
    .end local v24    # "cn":Landroid/content/ComponentName;
    .end local v49    # "receiverClassName":Ljava/lang/String;
    :cond_31
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: broadcasting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requires "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to receiver "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1372
    :cond_32
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v4, :cond_25

    .line 1373
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v42

    .line 1374
    .local v42, "opCode":I
    const/4 v4, -0x1

    move/from16 v0, v42

    if-eq v0, v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, v47

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move/from16 v0, v42

    invoke-virtual {v4, v0, v5, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_25

    .line 1377
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: broadcasting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requires appop "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to registered receiver "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const/16 v52, 0x1

    goto/16 :goto_b

    .line 1398
    .end local v42    # "opCode":I
    .restart local v30    # "i":I
    .restart local v51    # "requiredPermission":Ljava/lang/String;
    :catch_1
    move-exception v27

    .line 1399
    .restart local v27    # "e":Landroid/os/RemoteException;
    const/16 v44, -0x1

    goto/16 :goto_d

    .line 1411
    .end local v27    # "e":Landroid/os/RemoteException;
    :cond_33
    invoke-static/range {v51 .. v51}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v20

    .line 1412
    .local v20, "appOp":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_34

    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_34

    .line 1416
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: receiving "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requires appop "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v51 .. v51}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to sender "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/16 v52, 0x1

    .line 1424
    goto/16 :goto_e

    .line 1390
    :cond_34
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_c

    .line 1441
    .end local v20    # "appOp":I
    .end local v30    # "i":I
    .end local v51    # "requiredPermission":Ljava/lang/String;
    :cond_35
    const/16 v52, 0x0

    goto/16 :goto_f

    .line 1449
    .restart local v36    # "isSingleton":Z
    :catch_2
    move-exception v27

    .line 1450
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v4, "BroadcastQueue"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/16 v52, 0x1

    goto/16 :goto_10

    .line 1492
    .end local v27    # "e":Ljava/lang/SecurityException;
    .restart local v33    # "isAvailable":Z
    :catch_3
    move-exception v27

    .line 1494
    .local v27, "e":Ljava/lang/Exception;
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting recipient info for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_11

    .line 1504
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_36
    const/16 v34, 0x0

    .line 1506
    .local v34, "isComponentAvailable":Z
    :try_start_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-interface {v4, v5, v7, v9, v10}, Landroid/content/pm/IPackageManager;->isPackageComponentAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v34

    .line 1516
    :goto_14
    if-nez v34, :cond_2d

    .line 1522
    const/16 v52, 0x1

    goto/16 :goto_12

    .line 1511
    :catch_4
    move-exception v27

    .line 1512
    .restart local v27    # "e":Ljava/lang/Exception;
    :try_start_11
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting recipient info for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 1554
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v33    # "isAvailable":Z
    .end local v34    # "isComponentAvailable":Z
    :catch_5
    move-exception v27

    .line 1555
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13

    .line 1572
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_37
    const/4 v4, 0x1

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1573
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1574
    .local v8, "targetProcess":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1575
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v50, v0

    .line 1577
    .local v50, "receiverUid":I
    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_38

    if-eqz v36, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v47

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v0, v50

    invoke-virtual {v4, v5, v0}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    move-object/from16 v0, v31

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1581
    :cond_38
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 1588
    if-eqz v21, :cond_39

    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_39

    .line 1589
    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v4

    move-object/from16 v0, p0

    move/from16 v1, v50

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V

    .line 1592
    :cond_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-wide v22

    .line 1595
    .local v22, "callingId":J
    :try_start_12
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v47

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-interface {v4, v5, v7, v9}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1613
    :try_start_13
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1617
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x0

    invoke-virtual {v4, v8, v5, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v19

    .line 1619
    .local v19, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v19, :cond_3c

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v4, :cond_3c

    .line 1622
    :try_start_14
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEFERRED_Q_ENABLED:Z

    if-eqz v4, :cond_3b

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueType:I

    if-ne v4, v5, :cond_3b

    move-object/from16 v0, v47

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->isDeferrable(ZLandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    if-nez v4, :cond_3b

    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->emptyCount:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_3b

    move-object/from16 v0, v31

    iget v4, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-gtz v4, :cond_3b

    .line 1626
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    if-nez v4, :cond_3a

    .line 1627
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    .line 1629
    :cond_3a
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    move-object/from16 v0, v38

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1631
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1632
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1633
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1635
    const/4 v4, 0x0

    :try_start_15
    monitor-exit v56

    goto/16 :goto_3

    .line 1597
    .end local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_6
    move-exception v4

    .line 1613
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_15

    .line 1598
    :catch_7
    move-exception v27

    .line 1599
    .local v27, "e":Ljava/lang/IllegalArgumentException;
    :try_start_16
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed trying to unstop package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1606
    move-object/from16 v0, v47

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v47

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v47

    iget-boolean v12, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v47

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1608
    .end local v8    # "targetProcess":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1609
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1610
    const/4 v4, 0x0

    .line 1613
    :try_start_17
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v56

    goto/16 :goto_3

    .end local v27    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_2
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1638
    .restart local v8    # "targetProcess":Ljava/lang/String;
    .restart local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_3b
    :try_start_18
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 1640
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 1641
    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->emptyCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->emptyCount:I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1642
    const/4 v4, 0x0

    :try_start_19
    monitor-exit v56

    goto/16 :goto_3

    .line 1644
    :catch_8
    move-exception v27

    .line 1645
    .local v27, "e":Landroid/os/RemoteException;
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when sending broadcast to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 1670
    .end local v27    # "e":Landroid/os/RemoteException;
    :cond_3c
    const/16 v32, 0x0

    .line 1672
    .local v32, "isAutoRunBlocked":Z
    :try_start_1a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->ASKS_isBlockedAutoRunPackage(Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-result v32

    .line 1677
    :goto_16
    if-eqz v32, :cond_3d

    .line 1678
    :try_start_1b
    const-string v4, "AASAPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Performance test fail for this app:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const-string v4, "AASAPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping delivery of ordered ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " for user-set reason"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1683
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1684
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1685
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1686
    const/4 v4, 0x0

    monitor-exit v56

    goto/16 :goto_3

    .line 1647
    .end local v32    # "isAutoRunBlocked":Z
    :catch_9
    move-exception v27

    .line 1648
    .local v27, "e":Ljava/lang/RuntimeException;
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed sending broadcast to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " with "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1655
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1656
    move-object/from16 v0, v47

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v47

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v47

    iget-boolean v12, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, v47

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1658
    .end local v8    # "targetProcess":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1660
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1661
    const/4 v4, 0x0

    monitor-exit v56

    goto/16 :goto_3

    .line 1674
    .end local v27    # "e":Ljava/lang/RuntimeException;
    .restart local v8    # "targetProcess":Ljava/lang/String;
    .restart local v32    # "isAutoRunBlocked":Z
    :catch_a
    move-exception v27

    .line 1675
    .local v27, "e":Ljava/lang/Exception;
    const-string v4, "AASAPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "exception="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1695
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_3d
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEFERRED_Q_ENABLED:Z

    if-eqz v4, :cond_3f

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueType:I

    if-ne v4, v5, :cond_3f

    move-object/from16 v0, v47

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->isDeferrable(ZLandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    if-nez v4, :cond_3f

    move-object/from16 v0, v31

    iget v4, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-gtz v4, :cond_3f

    .line 1700
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    if-nez v4, :cond_3e

    .line 1701
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    .line 1703
    :cond_3e
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    move-object/from16 v0, v38

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1706
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1707
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1708
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1710
    const/4 v4, 0x0

    monitor-exit v56

    goto/16 :goto_3

    .line 1713
    :cond_3f
    const-string/jumbo v4, "sys.quickboot.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_40

    const-string/jumbo v4, "sys.quickboot.poweron"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_40

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->getWhiteList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    :cond_40
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v10, 0x1

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    or-int/lit8 v11, v4, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v47

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_42

    const/4 v14, 0x1

    :goto_17
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    move-object/from16 v0, v47

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_43

    .line 1724
    :cond_41
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to launch app "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " for broadcast "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": process is bad"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1729
    move-object/from16 v0, v47

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v47

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v47

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v47

    iget-boolean v14, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, v47

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1731
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1732
    const/4 v4, 0x0

    move-object/from16 v0, v47

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1733
    const/4 v4, 0x0

    monitor-exit v56

    goto/16 :goto_3

    .line 1713
    :cond_42
    const/4 v14, 0x0

    goto :goto_17

    .line 1736
    :cond_43
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1737
    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    .line 1738
    monitor-exit v56
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1740
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 380
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 393
    const/4 v1, 0x1

    .line 396
    :goto_1
    return v1

    .line 379
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 396
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 359
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/4 v1, 0x1

    .line 375
    :goto_1
    return v1

    .line 358
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 375
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public scheduleBroadcastsLocked()V
    .locals 3

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 551
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method scheduleBroadcastsLocked(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/16 v2, 0xc8

    .line 534
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v0, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeMessages(ILjava/lang/Object;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 539
    return-void
.end method

.method final scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "duration"    # J
    .param p4, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 898
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 899
    const-wide/32 p2, 0x7fffffff

    .line 907
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 908
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "broadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    iget v1, p4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 910
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 912
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v2, 0xca

    long-to-int v3, p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 920
    return-void

    .line 913
    :cond_2
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 914
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 915
    :cond_3
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 916
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v6, 0x0

    .line 470
    const/4 v7, 0x0

    .line 471
    .local v7, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 472
    .local v1, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, v2, :cond_1

    .line 473
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eq v0, p1, :cond_0

    .line 474
    const-string v0, "BroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App mismatch when sending pending broadcast to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intended target is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_0
    return v6

    .line 479
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 480
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    const/4 v7, 0x1

    :cond_1
    move v6, v7

    .line 494
    goto :goto_0

    .line 482
    :catch_0
    move-exception v8

    .line 483
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "BroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 486
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 488
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 490
    iput v6, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 491
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final setBroadcastQueueIndex(I)V
    .locals 0
    .param p1, "queueIdx"    # I

    .prologue
    .line 321
    iput p1, p0, Lcom/android/server/am/BroadcastQueue;->mQueueIdx:I

    .line 322
    return-void
.end method

.method final setBroadcastTimeoutLocked(J)V
    .locals 3
    .param p1, "timeoutTime"    # J

    .prologue
    .line 1754
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v1, :cond_0

    .line 1755
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1756
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1757
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1759
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v6, 0x0

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    .line 511
    .local v7, "br":Lcom/android/server/am/BroadcastRecord;
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_0

    .line 512
    move-object v1, v7

    .line 515
    .end local v7    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 521
    :cond_1
    if-eqz v1, :cond_2

    .line 522
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 523
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 525
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 527
    :cond_2
    return-void
.end method

.method public skipPendingBroadcastLocked(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 499
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, p1, :cond_0

    .line 500
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 501
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 502
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 503
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 505
    :cond_0
    return-void
.end method
