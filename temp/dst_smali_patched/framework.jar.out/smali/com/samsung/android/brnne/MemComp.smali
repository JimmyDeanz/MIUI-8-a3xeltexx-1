.class public Lcom/samsung/android/brnne/MemComp;
.super Ljava/lang/Object;
.source "MemComp.java"


# static fields
.field public static final ERROR:I = -0xd

.field public static final ERR_ALREADY_INITIALIZED:I = -0x15

.field public static final ERR_INVALID_BS:I = -0xca

.field public static final ERR_NOT_INITIALIZED:I = -0x16

.field public static final ERR_OUT_OF_MEMORY:I = -0x66

.field public static final ERR_UNKNOWN:I = -0x7cf

.field public static final ERR_UNSUPPORTED:I = -0x67

.field public static final OK:I


# instance fields
.field private streamHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "brnne_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J

    return-void
.end method

.method private native brnnCompressImpl([BI[BIJ)I
.end method

.method private native brnnDecompressImpl([BI[BIJ)I
.end method

.method private native brnnGetDecDstLength([B)I
.end method

.method private checkOffsetOfBuffer([BI)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    if-ltz p2, :cond_0

    array-length v0, p1

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private native createBrnnStream()J
.end method

.method private native endImpl(J)V
.end method


# virtual methods
.method public declared-synchronized compressBuffer([BI[BI)I
    .locals 8
    .param p1, "srcBuffer"    # [B
    .param p2, "srcSize"    # I
    .param p3, "dstBuffer"    # [B
    .param p4, "dstSize"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, -0x16

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/brnne/MemComp;->checkOffsetOfBuffer([BI)V

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/brnne/MemComp;->checkOffsetOfBuffer([BI)V

    iget-wide v6, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/brnne/MemComp;->brnnCompressImpl([BI[BIJ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized decompressBuffer([BI[BI)I
    .locals 8
    .param p1, "srcBuffer"    # [B
    .param p2, "srcSize"    # I
    .param p3, "dstBuffer"    # [B
    .param p4, "dstSize"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, -0x16

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/brnne/MemComp;->checkOffsetOfBuffer([BI)V

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/brnne/MemComp;->checkOffsetOfBuffer([BI)V

    iget-wide v6, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/brnne/MemComp;->brnnDecompressImpl([BI[BIJ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized exitStream()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/brnne/MemComp;->endImpl(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/samsung/android/brnne/MemComp;->exitStream()V

    return-void
.end method

.method public declared-synchronized getOriginalSize([B)I
    .locals 1
    .param p1, "srcBuffer"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/brnne/MemComp;->brnnGetDecDstLength([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initStream()I
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, -0x15

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/brnne/MemComp;->createBrnnStream()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J

    iget-wide v0, p0, Lcom/samsung/android/brnne/MemComp;->streamHandle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/16 v0, -0xd

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
