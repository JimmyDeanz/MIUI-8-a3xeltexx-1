.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$CallState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$ImsCommand;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$PhoneState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilRequest;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilSrvccState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;


# instance fields
.field private bitField0_:I

.field private callIndex_:I

.field private callState_:I

.field public calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

.field public dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private delay_:I

.field private error_:I

.field public imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

.field private imsCommand_:I

.field public imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

.field private mergedCallIndex_:I

.field private nitzTimestampMillis_:J

.field private phoneState_:I

.field public reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

.field private rilRequestId_:I

.field private rilRequest_:I

.field public serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

.field private srcAccessTech_:I

.field private srvccState_:I

.field private targetAccessTech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->cachedSize:I

    return-object p0
.end method

.method public clearCallIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearCallState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearDelay()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearError()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearImsCommand()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearMergedCallIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearNitzTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearPhoneState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearRilRequest()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearRilRequestId()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearSrcAccessTech()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearSrvccState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearTargetAccessTech()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .local v3, "size":I
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v5, 0x6

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v4, v4

    if-lez v4, :cond_7

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v4, v2

    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    const/4 v4, 0x7

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v2    # "i":I
    :cond_7
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    const/16 v5, 0x8

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_8
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    const/16 v5, 0x9

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_9
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    const/16 v5, 0xa

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_a
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    const/16 v5, 0xb

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v4, v4

    if-lez v4, :cond_d

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v4, v4

    if-ge v2, v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    aget-object v1, v4, v2

    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_c

    const/16 v4, 0xc

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .end local v2    # "i":I
    :cond_d
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    const/16 v5, 0xd

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_e
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_f

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    const/16 v5, 0xe

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_f
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    const/16 v5, 0xf

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_10
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_11

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    const/16 v5, 0x10

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_11
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_12

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    const/16 v5, 0x11

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_12
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    const/16 v5, 0x12

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_13
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_14

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    const/16 v5, 0x13

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_14
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_15

    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    const/16 v5, 0x14

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_15
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_16

    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    const/16 v6, 0x15

    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    :cond_16
    return v3
.end method

.method public getCallIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    return v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    return v0
.end method

.method public getDelay()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    return v0
.end method

.method public getImsCommand()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    return v0
.end method

.method public getMergedCallIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    return v0
.end method

.method public getNitzTimestampMillis()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    return-wide v0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    return v0
.end method

.method public getRilRequest()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    return v0
.end method

.method public getRilRequestId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    return v0
.end method

.method public getSrcAccessTech()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    return v0
.end method

.method public getSrvccState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    return v0
.end method

.method public getTargetAccessTech()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    return v0
.end method

.method public hasCallIndex()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasCallState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasDelay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasImsCommand()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasMergedCallIndex()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasNitzTimestampMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasPhoneState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasRilRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasRilRequestId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSrcAccessTech()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSrvccState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTargetAccessTech()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 10
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

    move-result v5

    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    invoke-super {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .local v6, "value":I
    packed-switch v6, :pswitch_data_0

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :pswitch_0
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto :goto_0

    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_1

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :pswitch_1
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto :goto_0

    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-nez v8, :cond_1

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-nez v8, :cond_2

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-nez v8, :cond_3

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-nez v8, :cond_4

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v8, 0x3a

    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-nez v8, :cond_6

    move v1, v7

    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v3, v8, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v1, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-static {v8, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_7

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v1, v8

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_2

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :pswitch_2
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :pswitch_3
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    :sswitch_c
    const/16 v8, 0x62

    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v8, :cond_9

    move v1, v7

    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .local v4, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v8, v4, v1

    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v1, v8

    goto :goto_3

    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_a
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v8, v4, v1

    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_4

    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :pswitch_5
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_5

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :pswitch_6
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_6

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :pswitch_7
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_7

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :pswitch_8
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_12
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-nez v8, :cond_b

    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_8

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :pswitch_9
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_9

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :pswitch_a
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x92 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
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
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public setCallIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setCallState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setError(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setImsCommand(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setMergedCallIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setNitzTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setPhoneState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setRilRequest(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setSrcAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setSrvccState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setTargetAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-lez v3, :cond_7

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v3, v2

    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v2    # "i":I
    :cond_7
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    const/16 v4, 0x8

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    const/16 v4, 0xb

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v3, v3

    if-lez v3, :cond_d

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v3, v3

    if-ge v2, v3, :cond_d

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    aget-object v1, v3, v2

    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_c

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .end local v2    # "i":I
    :cond_d
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    const/16 v4, 0xd

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_e
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_f

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    const/16 v4, 0xe

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_10
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_11

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    const/16 v4, 0x10

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_11
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_12

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    const/16 v4, 0x11

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_12
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    const/16 v4, 0x12

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_13
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_14

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    const/16 v4, 0x13

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_14
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    const/16 v4, 0x14

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_15
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_16

    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    const/16 v3, 0x15

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_16
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
