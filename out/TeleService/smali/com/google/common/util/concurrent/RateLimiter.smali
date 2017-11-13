.class public abstract Lcom/google/common/util/concurrent/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/RateLimiter$1;,
        Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;,
        Lcom/google/common/util/concurrent/RateLimiter$Bursty;,
        Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;
    }
.end annotation


# instance fields
.field maxPermits:D

.field private final mutex:Ljava/lang/Object;

.field private nextFreeTicketMicros:J

.field private final offsetNanos:J

.field volatile stableIntervalMicros:D

.field storedPermits:D

.field private final ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;)V
    .locals 2
    .param p1, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutex:Ljava/lang/Object;

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    .line 332
    iput-object p1, p0, Lcom/google/common/util/concurrent/RateLimiter;->ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    .line 333
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->read()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->offsetNanos:J

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;Lcom/google/common/util/concurrent/RateLimiter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/RateLimiter$1;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;)V

    return-void
.end method

.method static create(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 5
    .param p0, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
    .param p1, "permitsPerSecond"    # D

    .prologue
    .line 247
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, p0, v2, v3}, Lcom/google/common/util/concurrent/RateLimiter$Bursty;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)V

    .line 248
    .local v0, "rateLimiter":Lcom/google/common/util/concurrent/RateLimiter;
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 249
    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 1
    .param p0, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
    .param p1, "permitsPerSecond"    # D
    .param p3, "warmupPeriod"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 281
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;JLjava/util/concurrent/TimeUnit;)V

    .line 282
    .local v0, "rateLimiter":Lcom/google/common/util/concurrent/RateLimiter;
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 283
    return-object v0
.end method

.method static createWithCapacity(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 9
    .param p0, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
    .param p1, "permitsPerSecond"    # D
    .param p3, "maxBurstBuildup"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 289
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double v0, v4, v6

    .line 290
    .local v0, "maxBurstSeconds":D
    new-instance v2, Lcom/google/common/util/concurrent/RateLimiter$Bursty;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter$Bursty;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)V

    .line 291
    .local v2, "rateLimiter":Lcom/google/common/util/concurrent/RateLimiter$Bursty;
    invoke-virtual {v2, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->setRate(D)V

    .line 292
    return-object v2
.end method

.method private readSafeMicros()J
    .locals 6

    .prologue
    .line 544
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/common/util/concurrent/RateLimiter;->ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->read()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter;->offsetNanos:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private resync(J)V
    .locals 9
    .param p1, "nowMicros"    # J

    .prologue
    .line 536
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 537
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->maxPermits:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    .line 539
    iput-wide p1, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    .line 541
    :cond_0
    return-void
.end method


# virtual methods
.method abstract doSetRate(DD)V
.end method

.method public final setRate(D)V
    .locals 7
    .param p1, "permitsPerSecond"    # D

    .prologue
    .line 355
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "rate must be positive"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 357
    iget-object v3, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->readSafeMicros()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/common/util/concurrent/RateLimiter;->resync(J)V

    .line 359
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    long-to-double v4, v4

    div-double v0, v4, p1

    .line 360
    .local v0, "stableIntervalMicros":D
    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    .line 361
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter;->doSetRate(DD)V

    .line 362
    monitor-exit v3

    .line 363
    return-void

    .line 355
    .end local v0    # "stableIntervalMicros":D
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 549
    const-string v0, "RateLimiter[stableRate=%3.1fqps]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    iget-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
