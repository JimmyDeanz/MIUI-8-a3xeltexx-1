.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyHistogram"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;


# instance fields
.field private avgTimeMillis_:I

.field private bitField0_:I

.field private bucketCount_:I

.field public bucketCounters:[I

.field public bucketEndPoints:[I

.field private category_:I

.field private count_:I

.field private id_:I

.field private maxTimeMillis_:I

.field private minTimeMillis_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->cachedSize:I

    return-object p0
.end method

.method public clearAvgTimeMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public clearBucketCount()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public clearCategory()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public clearCount()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public clearId()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public clearMaxTimeMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public clearMinTimeMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .local v3, "size":I
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_4
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    const/4 v5, 0x6

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    const/4 v5, 0x7

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v4, v4

    if-lez v4, :cond_8

    const/4 v0, 0x0

    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v4, v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    aget v1, v4, v2

    .local v1, "element":I
    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "element":I
    :cond_7
    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v4, v4

    if-lez v4, :cond_a

    const/4 v0, 0x0

    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v4, v4

    if-ge v2, v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    aget v1, v4, v2

    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "element":I
    :cond_9
    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_a
    return v3
.end method

.method public getAvgTimeMillis()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    return v0
.end method

.method public getBucketCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    return v0
.end method

.method public getMaxTimeMillis()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    return v0
.end method

.method public getMinTimeMillis()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    return v0
.end method

.method public hasAvgTimeMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasBucketCount()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasCategory()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasCount()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasMaxTimeMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasMinTimeMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 9
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    invoke-super {p0, p1, v6}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    goto :goto_0

    :sswitch_8
    const/16 v8, 0x40

    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    if-nez v8, :cond_2

    move v1, v7

    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v1, v8

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .local v3, "limit":I
    const/4 v0, 0x0

    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    if-nez v8, :cond_6

    move v1, v7

    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v1, v8

    goto :goto_4

    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_a
    const/16 v8, 0x48

    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-nez v8, :cond_9

    move v1, v7

    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [I

    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_8
    :goto_7
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v1, v8

    goto :goto_6

    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .restart local v5    # "startPos":I
    :goto_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_b

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-nez v8, :cond_d

    move v1, v7

    .restart local v1    # "i":I
    :goto_9
    add-int v8, v1, v0

    new-array v4, v8, [I

    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_c

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_c
    :goto_a
    array-length v8, v4

    if-ge v1, v8, :cond_e

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v1, v8

    goto :goto_9

    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_e
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x42 -> :sswitch_9
        0x48 -> :sswitch_a
        0x4a -> :sswitch_b
    .end sparse-switch
.end method

.method public setAvgTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public setBucketCount(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public setCategory(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public setCount(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public setId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public setMaxTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public setMinTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v1, v1

    if-lez v1, :cond_7

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    aget v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v1, v1

    if-lez v1, :cond_8

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v1, v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    aget v1, v1, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_8
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
