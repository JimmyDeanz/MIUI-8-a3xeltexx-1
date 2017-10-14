.class public final Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsCapabilities"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;


# instance fields
.field private bitField0_:I

.field private utOverLte_:Z

.field private utOverWifi_:Z

.field private videoOverLte_:Z

.field private videoOverWifi_:Z

.field private voiceOverLte_:Z

.field private voiceOverWifi_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->clear()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->cachedSize:I

    return-object p0
.end method

.method public clearUtOverLte()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method public clearUtOverWifi()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method public clearVideoOverLte()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method public clearVideoOverWifi()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method public clearVoiceOverLte()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method public clearVoiceOverWifi()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public getUtOverLte()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    return v0
.end method

.method public getUtOverWifi()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    return v0
.end method

.method public getVideoOverLte()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    return v0
.end method

.method public getVideoOverWifi()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    return v0
.end method

.method public getVoiceOverLte()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    return v0
.end method

.method public getVoiceOverWifi()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    return v0
.end method

.method public hasUtOverLte()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasUtOverWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVideoOverLte()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVideoOverWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVoiceOverLte()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVoiceOverWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 2
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

    move-result v0

    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

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
    .end sparse-switch
.end method

.method public setUtOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method public setUtOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method public setVideoOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method public setVideoOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method public setVoiceOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    return-object p0
.end method

.method public setVoiceOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

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
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
