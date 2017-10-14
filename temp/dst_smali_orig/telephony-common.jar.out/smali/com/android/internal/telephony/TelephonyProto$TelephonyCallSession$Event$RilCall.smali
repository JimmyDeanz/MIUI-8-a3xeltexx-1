.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;


# instance fields
.field private bitField0_:I

.field private callEndReason_:I

.field private index_:I

.field private isMultiparty_:Z

.field private state_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->cachedSize:I

    return-object p0
.end method

.method public clearCallEndReason()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    return-object p0
.end method

.method public clearIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    return-object p0
.end method

.method public clearIsMultiparty()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    return-object p0
.end method

.method public clearState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public getCallEndReason()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    return v0
.end method

.method public getIsMultiparty()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    return v0
.end method

.method public hasCallEndReason()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIndex()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsMultiparty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setCallEndReason(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    return-object p0
.end method

.method public setIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    return-object p0
.end method

.method public setIsMultiparty(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    return-object p0
.end method

.method public setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
