.class public Lcom/android/phone/common/mail/utils/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field public static final EMPTY_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/utils/Utility;->ASCII:Ljava/nio/charset/Charset;

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/common/mail/utils/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public static combine([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 3
    .param p0, "parts"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v2, 0x0

    .line 46
    :goto_0
    return-object v2

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 41
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "b"    # [B

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 74
    :goto_0
    return-object v1

    .line 73
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 74
    .local v0, "cb":Ljava/nio/CharBuffer;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 3
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 66
    :goto_0
    return-object v1

    .line 63
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 65
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static fromAscii([B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 56
    sget-object v0, Lcom/android/phone/common/mail/utils/Utility;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/phone/common/mail/utils/Utility;->decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static streamFromAsciiString(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 2
    .param p0, "ascii"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/android/phone/common/mail/utils/Utility;->toAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toAscii(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v0, Lcom/android/phone/common/mail/utils/Utility;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/phone/common/mail/utils/Utility;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
