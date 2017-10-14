.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;


# instance fields
.field private bitField0_:I

.field public callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

.field public endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

.field public events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

.field private eventsDropped_:Z

.field public histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

.field public smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

.field public startTime:Lcom/android/internal/telephony/TelephonyProto$Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    iput-boolean v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->cachedSize:I

    return-object p0
.end method

.method public clearEventsDropped()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v5

    .local v5, "size":I
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    array-length v6, v6

    if-lez v6, :cond_1

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    array-length v6, v6

    if-ge v4, v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    aget-object v2, v6, v4

    .local v2, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    if-eqz v2, :cond_0

    const/4 v6, 0x1

    invoke-static {v6, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v4    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    array-length v6, v6

    if-lez v6, :cond_3

    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    array-length v6, v6

    if-ge v4, v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    aget-object v1, v6, v4

    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    if-eqz v1, :cond_2

    const/4 v6, 0x2

    invoke-static {v6, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .end local v4    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    array-length v6, v6

    if-lez v6, :cond_5

    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    array-length v6, v6

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    aget-object v0, v6, v4

    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    if-eqz v0, :cond_4

    const/4 v6, 0x3

    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .end local v4    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    array-length v6, v6

    if-lez v6, :cond_7

    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    array-length v6, v6

    if-ge v4, v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    aget-object v3, v6, v4

    .local v3, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    if-eqz v3, :cond_6

    const/4 v6, 0x4

    invoke-static {v6, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v3    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .end local v4    # "i":I
    :cond_7
    iget v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    const/4 v7, 0x5

    invoke-static {v7, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    const/4 v7, 0x6

    invoke-static {v7, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    const/4 v7, 0x7

    invoke-static {v7, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_a
    return v5
.end method

.method public getEventsDropped()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    return v0
.end method

.method public hasEventsDropped()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
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
    const/16 v8, 0xa

    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    if-nez v8, :cond_2

    move v1, v7

    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .local v4, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    if-eqz v1, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    aput-object v8, v4, v1

    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    array-length v1, v8

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :cond_3
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    aput-object v8, v4, v1

    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    goto :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :sswitch_2
    const/16 v8, 0x12

    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    if-nez v8, :cond_5

    move v1, v7

    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v3, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    if-eqz v1, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-static {v8, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    array-length v1, v8

    goto :goto_3

    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :cond_6
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :sswitch_3
    const/16 v8, 0x1a

    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    if-nez v8, :cond_8

    move v1, v7

    .restart local v1    # "i":I
    :goto_5
    add-int v8, v1, v0

    new-array v2, v8, [Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .local v2, "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    if-eqz v1, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-static {v8, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    aput-object v8, v2, v1

    aget-object v8, v2, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    array-length v1, v8

    goto :goto_5

    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_9
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    aput-object v8, v2, v1

    aget-object v8, v2, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :sswitch_4
    const/16 v8, 0x22

    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    if-nez v8, :cond_b

    move v1, v7

    .restart local v1    # "i":I
    :goto_7
    add-int v8, v1, v0

    new-array v5, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .local v5, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    if-eqz v1, :cond_a

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    invoke-static {v8, v7, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_c

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v8, v5, v1

    aget-object v8, v5, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    array-length v1, v8

    goto :goto_7

    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :cond_c
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v8, v5, v1

    aget-object v8, v5, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    goto/16 :goto_0

    :sswitch_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-nez v8, :cond_d

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-nez v8, :cond_e

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    :cond_e
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    array-length v5, v5

    if-lez v5, :cond_1

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    aget-object v2, v5, v4

    .local v2, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    if-eqz v2, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v4    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    array-length v5, v5

    if-lez v5, :cond_3

    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    aget-object v1, v5, v4

    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    if-eqz v1, :cond_2

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .end local v4    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    array-length v5, v5

    if-lez v5, :cond_5

    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    aget-object v0, v5, v4

    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    if-eqz v0, :cond_4

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .end local v4    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    array-length v5, v5

    if-lez v5, :cond_7

    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    aget-object v3, v5, v4

    .local v3, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    if-eqz v3, :cond_6

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v3    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .end local v4    # "i":I
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    const/4 v6, 0x5

    invoke-virtual {p1, v6, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    const/4 v6, 0x6

    invoke-virtual {p1, v6, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    const/4 v6, 0x7

    invoke-virtual {p1, v6, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_a
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
