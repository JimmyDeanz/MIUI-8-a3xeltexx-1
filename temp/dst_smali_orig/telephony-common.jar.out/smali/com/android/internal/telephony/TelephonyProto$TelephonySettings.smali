.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonySettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonySettings$RilNetworkMode;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonySettings$WiFiCallingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;


# instance fields
.field private bitField0_:I

.field private isAirplaneMode_:Z

.field private isCellularDataEnabled_:Z

.field private isDataRoamingEnabled_:Z

.field private isEnhanced4GLteModeEnabled_:Z

.field private isVtOverLteEnabled_:Z

.field private isVtOverWifiEnabled_:Z

.field private isWifiCallingEnabled_:Z

.field private isWifiEnabled_:Z

.field private preferredNetworkMode_:I

.field private wifiCallingMode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->cachedSize:I

    return-object p0
.end method

.method public clearIsAirplaneMode()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public clearIsCellularDataEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public clearIsDataRoamingEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public clearIsEnhanced4GLteModeEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public clearIsVtOverLteEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public clearIsVtOverWifiEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public clearIsWifiCallingEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public clearIsWifiEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public clearPreferredNetworkMode()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public clearWifiCallingMode()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    return v0
.end method

.method public getIsAirplaneMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    return v0
.end method

.method public getIsCellularDataEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    return v0
.end method

.method public getIsDataRoamingEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    return v0
.end method

.method public getIsEnhanced4GLteModeEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    return v0
.end method

.method public getIsVtOverLteEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    return v0
.end method

.method public getIsVtOverWifiEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    return v0
.end method

.method public getIsWifiCallingEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    return v0
.end method

.method public getIsWifiEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    return v0
.end method

.method public getPreferredNetworkMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    return v0
.end method

.method public getWifiCallingMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    return v0
.end method

.method public hasIsAirplaneMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsCellularDataEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsDataRoamingEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsEnhanced4GLteModeEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsVtOverLteEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsVtOverWifiEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsWifiCallingEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsWifiEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasPreferredNetworkMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasWifiCallingMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
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
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto/16 :goto_0

    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

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
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
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
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setIsAirplaneMode(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public setIsCellularDataEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public setIsDataRoamingEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public setIsEnhanced4GLteModeEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public setIsVtOverLteEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public setIsVtOverWifiEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public setIsWifiCallingEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public setIsWifiEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public setPreferredNetworkMode(I)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    return-object p0
.end method

.method public setWifiCallingMode(I)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

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
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_9
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
