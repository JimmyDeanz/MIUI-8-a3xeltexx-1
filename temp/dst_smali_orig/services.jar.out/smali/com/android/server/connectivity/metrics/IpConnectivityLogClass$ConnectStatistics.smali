.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectStatistics"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;


# instance fields
.field public connectCount:I

.field public errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

.field public ipv6AddrCount:I

.field public latenciesMs:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    invoke-static {}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v4

    .local v4, "size":I
    iget v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    iget v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v5, v5

    if-lez v5, :cond_3

    const/4 v0, 0x0

    .local v0, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v5, v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    aget v1, v5, v3

    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "element":I
    :cond_2
    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .end local v0    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    array-length v5, v5

    if-lez v5, :cond_5

    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    aget-object v2, v5, v3

    .local v2, "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_4

    const/4 v5, 0x4

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    .end local v3    # "i":I
    :cond_5
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v7

    .local v7, "tag":I
    sparse-switch v7, :sswitch_data_0

    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v9

    if-nez v9, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    goto :goto_0

    :sswitch_3
    const/16 v9, 0x18

    invoke-static {p1, v9}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .local v0, "arrayLength":I
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    if-nez v9, :cond_2

    move v1, v8

    .local v1, "i":I
    :goto_1
    add-int v9, v1, v0

    new-array v4, v9, [I

    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_1
    :goto_2
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    aput v9, v4, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v1, v9

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    aput v9, v4, v1

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    goto :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .local v3, "limit":I
    const/4 v0, 0x0

    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v6

    .local v6, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    if-nez v9, :cond_6

    move v1, v8

    .restart local v1    # "i":I
    :goto_4
    add-int v9, v1, v0

    new-array v4, v9, [I

    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_5
    :goto_5
    array-length v9, v4

    if-ge v1, v9, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    aput v9, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v1, v9

    goto :goto_4

    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v6    # "startPos":I
    :sswitch_5
    const/16 v9, 0x22

    invoke-static {p1, v9}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    if-nez v9, :cond_9

    move v1, v8

    .restart local v1    # "i":I
    :goto_6
    add-int v9, v1, v0

    new-array v5, v9, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    .local v5, "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_8

    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    invoke-static {v9, v8, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_7
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_a

    new-instance v9, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    invoke-direct {v9}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v9, v5, v1

    aget-object v9, v5, v1

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    :cond_9
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    array-length v1, v9

    goto :goto_6

    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    :cond_a
    new-instance v9, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    invoke-direct {v9}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v9, v5, v1

    aget-object v9, v5, v1

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v2, v2

    if-lez v2, :cond_2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    aget v2, v2, v1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-lez v2, :cond_4

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    aget-object v0, v2, v1

    .local v0, "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    .end local v1    # "i":I
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
