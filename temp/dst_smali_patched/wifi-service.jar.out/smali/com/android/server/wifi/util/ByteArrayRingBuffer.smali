.class public Lcom/android/server/wifi/util/ByteArrayRingBuffer;
.super Ljava/lang/Object;
.source "ByteArrayRingBuffer.java"


# instance fields
.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mBytesUsed:I

.field private mMaxBytes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxBytes"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    return-void
.end method

.method private pruneToSize(I)V
    .locals 4
    .param p1, "sizeBytes"    # I

    .prologue
    iget v1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    .local v1, "newBytesUsed":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-le v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput v1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    return-void
.end method


# virtual methods
.method public appendBuffer([B)Z
    .locals 2
    .param p1, "newData"    # [B

    .prologue
    iget v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->pruneToSize(I)V

    iget v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    const/4 v0, 0x1

    return v0
.end method

.method public getBuffer(I)[B
    .locals 1
    .param p1, "i"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getNumBuffers()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public resize(I)V
    .locals 0
    .param p1, "maxBytes"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->pruneToSize(I)V

    iput p1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    return-void
.end method
