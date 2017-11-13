.class public Lcom/android/phone/common/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/phone/common/mail/Body;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {p0, p1}, Lcom/android/phone/common/mail/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 345
    new-instance v1, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;

    invoke-direct {v1}, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;-><init>()V

    .line 346
    .local v1, "tempBody":Lcom/android/phone/common/mail/internet/BinaryTempFileBody;
    invoke-virtual {v1}, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 348
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 356
    :goto_0
    return-object v1

    .line 349
    :catch_0
    move-exception v2

    .line 354
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 192
    if-nez p0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-object v4

    .line 195
    :cond_1
    invoke-static {p0}, Lcom/android/phone/common/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "parts":[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 197
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "lowerCaseName":Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    .line 201
    .local v6, "part":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 202
    const-string v8, "="

    invoke-virtual {v6, v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "parameterParts":[Ljava/lang/String;
    array-length v8, v5

    if-lt v8, v11, :cond_0

    .line 206
    aget-object v8, v5, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "parameter":Ljava/lang/String;
    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 208
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 200
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v5    # "parameterParts":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/phone/common/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 326
    const-string v1, "quoted-printable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    move-object p0, v0

    .line 333
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 329
    :cond_1
    const-string v1, "base64"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    new-instance v0, Landroid/util/Base64InputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    move-object p0, v0

    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 293
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 56
    if-nez p0, :cond_1

    .line 57
    const/4 p0, 0x0

    .line 64
    .local v0, "patternMatcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object p0

    .line 59
    .end local v0    # "patternMatcher":Ljava/util/regex/Matcher;
    :cond_1
    sget-object v1, Lcom/android/phone/common/mail/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    .restart local v0    # "patternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 62
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/phone/common/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/common/mail/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
