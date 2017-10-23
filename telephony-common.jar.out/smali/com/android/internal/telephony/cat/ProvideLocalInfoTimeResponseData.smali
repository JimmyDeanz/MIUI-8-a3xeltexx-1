.class Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private digit0:B

.field private digit1:B

.field private length:B

.field private tag:B

.field private timeInfo:[B


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "min"    # I
    .param p6, "sec"    # I
    .param p7, "zone"    # I

    .prologue
    const/4 v1, 0x7

    .line 335
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 329
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    .line 330
    const/16 v0, -0x5a

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->tag:B

    .line 331
    iput-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->length:B

    .line 336
    rem-int/lit8 v0, p1, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 337
    rem-int/lit8 v0, p1, 0x64

    div-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 340
    add-int/lit8 p2, p2, 0x1

    .line 341
    rem-int/lit8 v0, p2, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 342
    div-int/lit8 v0, p2, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 345
    rem-int/lit8 v0, p3, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 346
    div-int/lit8 v0, p3, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 349
    rem-int/lit8 v0, p4, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 350
    div-int/lit8 v0, p4, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x3

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 353
    rem-int/lit8 v0, p5, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 354
    div-int/lit8 v0, p5, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 357
    rem-int/lit8 v0, p6, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 358
    div-int/lit8 v0, p6, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x5

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x6

    int-to-byte v2, p7

    aput-byte v2, v0, v1

    .line 362
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 366
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->tag:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 367
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->length:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method
