.class public Lcom/android/internal/telephony/metrics/InProgressSmsSession;
.super Ljava/lang/Object;
.source "InProgressSmsSession.java"


# static fields
.field private static final MAX_EVENTS:I = 0x14


# instance fields
.field public final events:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDropped:Z

.field private mLastElapsedTimeMs:J

.field private mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final phoneId:I

.field public final startElapsedTimeMs:J

.field public final startSystemTimeMin:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mEventsDropped:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->roundSessionStart(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startSystemTimeMin:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mLastElapsedTimeMs:J

    return-void
.end method


# virtual methods
.method public declared-synchronized addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "builder"    # Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mEventsDropped:Z

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mLastElapsedTimeMs:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPrivacyFuzzedTimeInterval(JJ)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setDelay(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-virtual {p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mLastElapsedTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    return-void
.end method

.method public decreaseExpectedResponse()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public getNumExpectedResponses()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public increaseExpectedResponse()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public isEventsDropped()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mEventsDropped:Z

    return v0
.end method
