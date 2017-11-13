.class public Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
.super Ljava/lang/Object;
.source "WifiScanController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiScanController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanLog"
.end annotation


# static fields
.field private static final THRESHOULD_COUNT_FOR_BIG_DATA:I = 0x32

.field private static final TIMEOUT_FOR_BIGDATA:J = 0x124f80L


# instance fields
.field private mCount:I

.field private mCount1_6_11Only:I

.field private mCount2_4Only:I

.field private mCountCached:I

.field private mCountDelayed:I

.field private mCountExceptDFS:I

.field private mCountForBigdata:I

.field private mCountFullChannel:I

.field private final mDateformat:Ljava/text/SimpleDateFormat;

.field private final mInitialTime:J

.field private mLastTime:J

.field public mPackageName:Ljava/lang/String;

.field private mPeriod:D

.field private mStartTimeForBigdata:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mDateformat:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPeriod:D

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStartTimeForBigdata:J

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountDelayed:I

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountCached:I

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountFullChannel:I

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount2_4Only:I

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount1_6_11Only:I

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountExceptDFS:I

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPackageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mInitialTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->resetCounter()V

    return-void
.end method

.method private calcPeriod()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .local v0, "tempCount":I
    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    add-int/lit8 v0, v1, -0x1

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mInitialTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPeriod:D

    return-void
.end method


# virtual methods
.method public addCounter(I)V
    .locals 2
    .param p1, "scanType"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    packed-switch p1, :pswitch_data_0

    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountFullChannel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountFullChannel:I

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount2_4Only:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount2_4Only:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount1_6_11Only:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount1_6_11Only:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountExceptDFS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountExceptDFS:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountCached:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountCached:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountDelayed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountDelayed:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getBigDataExtra()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountDelayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountCached:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountFullChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount2_4Only:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount1_6_11Only:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountExceptDFS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getScanLogData(I)I
    .locals 2
    .param p1, "type"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->calcPeriod()V

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPeriod:D

    double-to-int v0, v0

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountFullChannel:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount2_4Only:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount1_6_11Only:I

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountExceptDFS:I

    goto :goto_0

    :pswitch_6
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountCached:I

    goto :goto_0

    :pswitch_7
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountDelayed:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isReachedLimitation()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStartTimeForBigdata:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->resetCounter()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetCounter()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountDelayed:I

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountCached:I

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountFullChannel:I

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount2_4Only:I

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount1_6_11Only:I

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountExceptDFS:I

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStartTimeForBigdata:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->calcPeriod()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Interval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPeriod:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Start Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mDateformat:Ljava/text/SimpleDateFormat;

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mInitialTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     Last Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mDateformat:Ljava/text/SimpleDateFormat;

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Total/20mins : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        FullCH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountFullChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   2.4GHz Only : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount2_4Only:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     1,6,11 CH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount1_6_11Only:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     Ex.DFS CH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountExceptDFS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        Cached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountCached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       Delayed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountDelayed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
