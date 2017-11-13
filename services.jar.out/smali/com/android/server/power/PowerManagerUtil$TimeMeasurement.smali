.class public Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeMeasurement"
.end annotation


# instance fields
.field mIsPrinted:Z

.field mLapTime:J

.field mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mLapTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mStartTime:J

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mIsPrinted:Z

    .line 219
    return-void
.end method


# virtual methods
.method public printLapTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitTime"    # J

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mLapTime:J

    sub-long v0, v2, v4

    .line 236
    .local v0, "executionTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mLapTime:J

    .line 238
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 239
    const-string v2, "PowerManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 241
    const-string v2, "PowerManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Excessive delay in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public printTotalTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitTime"    # J

    .prologue
    .line 222
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mIsPrinted:Z

    if-nez v2, :cond_1

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mStartTime:J

    sub-long v0, v2, v4

    .line 225
    .local v0, "executionTime":J
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 226
    const-string v2, "PowerManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mIsPrinted:Z

    .line 232
    .end local v0    # "executionTime":J
    :cond_1
    return-void

    .line 227
    .restart local v0    # "executionTime":J
    :cond_2
    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 228
    const-string v2, "PowerManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Excessive delay in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetTime()V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mLapTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mStartTime:J

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->mIsPrinted:Z

    .line 249
    return-void
.end method
