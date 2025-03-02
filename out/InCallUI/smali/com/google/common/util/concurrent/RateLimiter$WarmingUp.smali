.class Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarmingUp"
.end annotation


# instance fields
.field private halfPermits:D

.field private slope:D

.field final warmupPeriodMicros:J


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
    .param p2, "warmupPeriod"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;Lcom/google/common/util/concurrent/RateLimiter$1;)V

    .line 639
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->warmupPeriodMicros:J

    .line 640
    return-void
.end method


# virtual methods
.method doSetRate(DD)V
    .locals 11
    .param p1, "permitsPerSecond"    # D
    .param p3, "stableIntervalMicros"    # D

    .prologue
    const-wide/16 v8, 0x0

    .line 644
    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    .line 645
    .local v2, "oldMaxPermits":D
    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->warmupPeriodMicros:J

    long-to-double v4, v4

    div-double/2addr v4, p3

    iput-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    .line 646
    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->halfPermits:D

    .line 648
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double v0, p3, v4

    .line 649
    .local v0, "coldIntervalMicros":D
    sub-double v4, v0, p3

    iget-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->halfPermits:D

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->slope:D

    .line 650
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v2, v4

    if-nez v4, :cond_0

    .line 652
    iput-wide v8, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    .line 658
    :goto_0
    return-void

    .line 654
    :cond_0
    cmpl-double v4, v2, v8

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    :goto_1
    iput-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    iget-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    mul-double/2addr v4, v6

    div-double/2addr v4, v2

    goto :goto_1
.end method
