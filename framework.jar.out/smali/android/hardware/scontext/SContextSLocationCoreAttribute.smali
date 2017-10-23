.class public Landroid/hardware/scontext/SContextSLocationCoreAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextSLocationCoreAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextSLocationCoreAttribute"


# instance fields
.field private mAccuracy:I

.field private mAction:I

.field private mFenceId:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMin_Ditance:I

.field private mMin_Time:I

.field private mMode:I

.field private mRadius:I

.field private mStatus:I

.field private mSuccessGpsCnt:I

.field private mTimeStamp:J

.field private mTotalGpsCnt:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 40
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 47
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 40
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 76
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 77
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 78
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 79
    return-void
.end method

.method public constructor <init>(IIDDIJ)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "accuracy"    # I
    .param p8, "timestamp"    # J

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 40
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 211
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 212
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 213
    iput-wide p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 214
    iput-wide p5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 215
    iput p7, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 216
    iput-wide p8, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 217
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 218
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 40
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 133
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 134
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 135
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 136
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 137
    return-void
.end method

.method public constructor <init>(IIIDDIII)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "latitude"    # D
    .param p6, "longitude"    # D
    .param p8, "radius"    # I
    .param p9, "total_gps_cnt"    # I
    .param p10, "success_gps_cnt"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 40
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 105
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 106
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 107
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 108
    iput p8, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 109
    iput p9, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 110
    iput p10, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 111
    iput-wide p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 112
    iput-wide p6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 113
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 114
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "min_distance"    # I
    .param p4, "min_time"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 40
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 183
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 184
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 185
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 186
    iput p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 187
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 188
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "radius"    # I
    .param p5, "status"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 32
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 40
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 41
    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 157
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 158
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 159
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 160
    iput p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 161
    iput p5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 162
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 163
    return-void
.end method

.method private setAttribute()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 304
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    .local v4, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, "attribute":Landroid/os/Bundle;
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    packed-switch v5, :pswitch_data_0

    .line 358
    :goto_0
    const-string v5, "Mode"

    iget v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    const-string v5, "Action"

    iget v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    const-string v5, "SContextSLocationCoreAttribute"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAttribute() mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Mode"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Action"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/16 v5, 0x2f

    invoke-super {p0, v5, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 362
    return-void

    .line 309
    :pswitch_0
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-ne v5, v8, :cond_0

    .line 310
    new-array v1, v10, [D

    .line 311
    .local v1, "doubleType":[D
    const/4 v5, 0x4

    new-array v2, v5, [I

    .line 312
    .local v2, "intType":[I
    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v6, v1, v9

    .line 313
    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v6, v1, v8

    .line 314
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v5, v2, v9

    .line 315
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    aput v5, v2, v8

    .line 316
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    aput v5, v2, v10

    .line 317
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v5, v2, v11

    .line 318
    const-string v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 319
    const-string v5, "DoubleType"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 320
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    :cond_0
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-ne v5, v10, :cond_1

    .line 321
    new-array v2, v8, [I

    .line 322
    .restart local v2    # "intType":[I
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v5, v2, v9

    .line 323
    const-string v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 324
    .end local v2    # "intType":[I
    :cond_1
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    .line 325
    new-array v2, v11, [I

    .line 326
    .restart local v2    # "intType":[I
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v5, v2, v9

    .line 327
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    aput v5, v2, v8

    .line 328
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    aput v5, v2, v10

    .line 329
    const-string v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 330
    .end local v2    # "intType":[I
    :cond_2
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 331
    new-array v2, v10, [I

    .line 332
    .restart local v2    # "intType":[I
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    aput v5, v2, v9

    .line 333
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    aput v5, v2, v8

    .line 334
    const-string v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 336
    .end local v2    # "intType":[I
    :cond_3
    const-string v5, "SContextSLocationCoreAttribute"

    const-string v6, "This Type is default attribute type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 340
    :pswitch_1
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 341
    new-array v1, v10, [D

    .line 342
    .restart local v1    # "doubleType":[D
    new-array v2, v8, [I

    .line 343
    .restart local v2    # "intType":[I
    new-array v3, v8, [J

    .line 344
    .local v3, "longType":[J
    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v6, v1, v9

    .line 345
    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v6, v1, v8

    .line 346
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    aput v5, v2, v9

    .line 347
    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    aput-wide v6, v3, v9

    .line 348
    const-string v5, "DoubleType"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 349
    const-string v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 350
    const-string v5, "LongType"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 352
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    .end local v3    # "longType":[J
    :cond_4
    const-string v5, "SContextSLocationCoreAttribute"

    const-string v6, "This Type is default attribute type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method checkAttribute()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 223
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-le v2, v1, :cond_1

    .line 225
    :cond_0
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Mode value is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return v0

    .line 229
    :cond_1
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-nez v2, :cond_3

    .line 230
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-lt v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    .line 232
    :cond_2
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Action value is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_3
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-ne v2, v1, :cond_5

    .line 236
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-lt v2, v3, :cond_4

    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_5

    .line 238
    :cond_4
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Action value is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_5
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    if-gez v2, :cond_6

    .line 244
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "FenceID is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_6
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    if-gez v2, :cond_7

    .line 249
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Radius is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_7
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    if-gez v2, :cond_8

    .line 254
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Status is wrong!1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_8
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v2, :cond_9

    .line 259
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "TotalGpsCount is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_9
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v2, :cond_a

    .line 264
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Success gps count is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_a
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    if-gez v2, :cond_b

    .line 269
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Minimun distnace is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_b
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    if-gez v2, :cond_c

    .line 274
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Minimun time is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_c
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    if-gez v2, :cond_d

    .line 279
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Accuracy is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 283
    :cond_d
    iget-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_e

    .line 284
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Timestamp is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 288
    :cond_e
    iget-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_f

    iget-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10

    .line 289
    :cond_f
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Longitude is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    :cond_10
    iget-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_11

    iget-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_12

    .line 294
    :cond_11
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Latitidue is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 297
    goto/16 :goto_0
.end method
