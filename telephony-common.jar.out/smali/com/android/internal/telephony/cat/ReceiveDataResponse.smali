.class Lcom/android/internal/telephony/cat/ReceiveDataResponse;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field bytesRemaining:I

.field data:[B

.field dataLength:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2
    .param p1, "recvdata"    # [B
    .param p2, "dataLen"    # I
    .param p3, "bytesInRxbuf"    # I

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 572
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->data:[B

    .line 573
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp[] length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dataLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytesInRxbuf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    iput p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    .line 576
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v4, 0xff

    const/16 v3, 0x80

    .line 545
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v1, v2, 0x80

    .line 546
    .local v1, "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 547
    iget v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    if-ge v2, v3, :cond_1

    .line 548
    iget v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 554
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    if-ge v0, v2, :cond_2

    .line 555
    iget-object v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->data:[B

    aget-byte v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    .end local v0    # "i":I
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    if-ge v2, v4, :cond_0

    .line 550
    const/16 v2, 0x81

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 551
    iget v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->dataLength:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 559
    .restart local v0    # "i":I
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v1, v2, 0x80

    .line 560
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 561
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 562
    iget v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    if-gez v2, :cond_3

    .line 563
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    .line 565
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    const/16 v3, 0xfe

    if-le v2, v3, :cond_4

    .line 566
    iput v4, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    .line 568
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponse;->bytesRemaining:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 570
    return-void
.end method
