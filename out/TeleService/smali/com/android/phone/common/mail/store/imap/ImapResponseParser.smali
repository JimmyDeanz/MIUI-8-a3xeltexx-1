.class public Lcom/android/phone/common/mail/store/imap/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/store/imap/ImapResponseParser$ByeException;
    }
.end annotation


# instance fields
.field private final mBufferReadUntil:Ljava/lang/StringBuilder;

.field private final mIn:Lcom/android/phone/common/mail/PeekableInputStream;

.field private final mLiteralKeepInMemoryThreshold:I

.field private final mParseBareString:Ljava/lang/StringBuilder;

.field private final mResponsesToDestroy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/common/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 73
    const/high16 v0, 0x200000

    invoke-direct {p0, p1, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;I)V

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "literalKeepInMemoryThreshold"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/android/phone/common/mail/PeekableInputStream;

    invoke-direct {v0, p1}, Lcom/android/phone/common/mail/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/phone/common/mail/PeekableInputStream;

    .line 81
    iput p2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    .line 82
    return-void
.end method

.method private static newEOSException()Ljava/io/IOException;
    .locals 3

    .prologue
    .line 85
    const-string v0, "End of stream reached"

    .line 86
    .local v0, "message":Ljava/lang/String;
    const-string v1, "ImapResponseParser"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "ImapResponseParser"

    const-string v2, "End of stream reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "End of stream reached"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private onParseError(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 180
    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 186
    .end local v0    # "b":I
    :cond_0
    :goto_1
    const-string v2, "ImapResponseParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 178
    .restart local v0    # "b":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "b":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private parseBareString()Lcom/android/phone/common/mail/store/imap/ImapString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 345
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 347
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 350
    .local v0, "ch":I
    const/16 v2, 0x28

    if-eq v0, v2, :cond_1

    const/16 v2, 0x29

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_1

    const/16 v2, 0x25

    if-eq v0, v2, :cond_1

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    if-ltz v0, :cond_0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_4

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 363
    new-instance v2, Lcom/android/phone/common/mail/MessagingException;

    const-string v3, "Expected string, none found."

    invoke-direct {v2, v3}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 365
    :cond_2
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "s":Ljava/lang/String;
    const-string v2, "NIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    sget-object v2, Lcom/android/phone/common/mail/store/imap/ImapString;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapString;

    .line 371
    :goto_1
    return-object v2

    :cond_3
    new-instance v2, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;

    invoke-direct {v2, v1}, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 372
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_5

    .line 374
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 378
    :cond_5
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private parseElement()Lcom/android/phone/common/mail/store/imap/ImapElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 313
    .local v0, "next":I
    sparse-switch v0, :sswitch_data_0

    .line 331
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v1

    :goto_0
    return-object v1

    .line 315
    :sswitch_0
    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-direct {p0, v1, v2}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_0

    .line 317
    :sswitch_1
    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-direct {p0, v1, v2}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_0

    .line 319
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    .line 320
    new-instance v1, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->parseLiteral()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v1

    goto :goto_0

    .line 324
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    .line 325
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V

    goto :goto_0

    .line 328
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_0

    .line 313
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_2
        0x28 -> :sswitch_0
        0x5b -> :sswitch_1
        0x7b -> :sswitch_3
    .end sparse-switch
.end method

.method private parseElements(Lcom/android/phone/common/mail/store/imap/ImapList;C)V
    .locals 3
    .param p1, "list"    # Lcom/android/phone/common/mail/store/imap/ImapList;
    .param p2, "end"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 387
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->peek()I

    move-result v1

    .line 388
    .local v1, "next":I
    if-ne v1, p2, :cond_1

    .line 399
    :cond_0
    return-void

    .line 391
    :cond_1
    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 397
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->parseElement()Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v0

    .line 398
    .local v0, "el":Lcom/android/phone/common/mail/store/imap/ImapElement;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->add(Lcom/android/phone/common/mail/store/imap/ImapElement;)V

    goto :goto_0

    .line 395
    .end local v0    # "el":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_0
.end method

.method private parseList(CC)Lcom/android/phone/common/mail/store/imap/ImapList;
    .locals 1
    .param p1, "opening"    # C
    .param p2, "closing"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 408
    new-instance v0, Lcom/android/phone/common/mail/store/imap/ImapList;

    invoke-direct {v0}, Lcom/android/phone/common/mail/store/imap/ImapList;-><init>()V

    .line 409
    .local v0, "list":Lcom/android/phone/common/mail/store/imap/ImapList;
    invoke-direct {p0, v0, p2}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->parseElements(Lcom/android/phone/common/mail/store/imap/ImapList;C)V

    .line 410
    invoke-virtual {p0, p2}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 411
    return-object v0
.end method

.method private parseLiteral()Lcom/android/phone/common/mail/store/imap/ImapString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 415
    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 418
    const/16 v3, 0x7d

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 422
    .local v2, "size":I
    if-gez v2, :cond_0

    .line 423
    new-instance v3, Lcom/android/phone/common/mail/MessagingException;

    const-string v4, "Invalid negative length in literal"

    invoke-direct {v3, v4}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 419
    .end local v2    # "size":I
    :catch_0
    move-exception v1

    .line 420
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/phone/common/mail/MessagingException;

    const-string v4, "Invalid length in literal"

    invoke-direct {v3, v4}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "size":I
    :cond_0
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 426
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 427
    new-instance v0, Lcom/android/phone/common/mail/FixedLengthInputStream;

    iget-object v3, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/phone/common/mail/PeekableInputStream;

    invoke-direct {v0, v3, v2}, Lcom/android/phone/common/mail/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 428
    .local v0, "in":Lcom/android/phone/common/mail/FixedLengthInputStream;
    iget v3, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    if-le v2, v3, :cond_1

    .line 429
    new-instance v3, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;

    invoke-direct {v3, v0}, Lcom/android/phone/common/mail/store/imap/ImapTempFileLiteral;-><init>(Lcom/android/phone/common/mail/FixedLengthInputStream;)V

    .line 431
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;

    invoke-direct {v3, v0}, Lcom/android/phone/common/mail/store/imap/ImapMemoryLiteral;-><init>(Lcom/android/phone/common/mail/FixedLengthInputStream;)V

    goto :goto_0
.end method

.method private parseResponse()Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5b

    const/16 v10, 0x20

    .line 236
    const/4 v3, 0x0

    .line 240
    .local v3, "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 241
    .local v0, "ch":I
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    .line 243
    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 244
    new-instance v4, Lcom/android/phone/common/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v4, v8, v9}, Lcom/android/phone/common/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    .end local v3    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .local v4, "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :try_start_1
    new-instance v8, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->add(Lcom/android/phone/common/mail/store/imap/ImapElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    move-object v5, v4

    .line 251
    .local v5, "responseToReturn":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    .line 302
    .end local v4    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .restart local v3    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :goto_0
    if-eqz v3, :cond_0

    .line 304
    invoke-virtual {v3}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->destroy()V

    .line 308
    :cond_0
    return-object v5

    .line 255
    .end local v5    # "responseToReturn":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :cond_1
    const/16 v8, 0x2a

    if-ne v0, v8, :cond_4

    .line 256
    const/4 v7, 0x0

    .line 257
    .local v7, "tag":Ljava/lang/String;
    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    .line 258
    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 262
    :goto_1
    new-instance v4, Lcom/android/phone/common/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/phone/common/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    .end local v3    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .restart local v4    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v1

    .line 265
    .local v1, "firstString":Lcom/android/phone/common/mail/store/imap/ImapString;
    invoke-virtual {v4, v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->add(Lcom/android/phone/common/mail/store/imap/ImapElement;)V

    .line 270
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_7

    .line 271
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    .line 273
    invoke-virtual {v4}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 276
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->peek()I

    move-result v2

    .line 277
    .local v2, "next":I
    if-ne v2, v9, :cond_2

    .line 278
    const/16 v8, 0x5b

    const/16 v9, 0x5d

    invoke-direct {p0, v8, v9}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->add(Lcom/android/phone/common/mail/store/imap/ImapElement;)V

    .line 279
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 280
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "rest":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 287
    new-instance v8, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;

    invoke-direct {v8, v6}, Lcom/android/phone/common/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->add(Lcom/android/phone/common/mail/store/imap/ImapElement;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    .end local v2    # "next":I
    .end local v6    # "rest":Ljava/lang/String;
    :cond_3
    :goto_2
    move-object v5, v4

    .line 299
    .restart local v5    # "responseToReturn":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    .end local v4    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .restart local v3    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    goto :goto_0

    .line 260
    .end local v1    # "firstString":Lcom/android/phone/common/mail/store/imap/ImapString;
    .end local v5    # "responseToReturn":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .end local v7    # "tag":Ljava/lang/String;
    :cond_4
    const/16 v8, 0x20

    :try_start_4
    invoke-virtual {p0, v8}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .restart local v7    # "tag":Ljava/lang/String;
    goto :goto_1

    .line 290
    .end local v3    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .restart local v1    # "firstString":Lcom/android/phone/common/mail/store/imap/ImapString;
    .restart local v4    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :cond_5
    const/4 v8, 0x0

    :try_start_5
    invoke-direct {p0, v4, v8}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->parseElements(Lcom/android/phone/common/mail/store/imap/ImapList;C)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 302
    .end local v1    # "firstString":Lcom/android/phone/common/mail/store/imap/ImapString;
    .end local v7    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v3, v4

    .end local v0    # "ch":I
    .end local v4    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .restart local v3    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :goto_3
    if-eqz v3, :cond_6

    .line 304
    invoke-virtual {v3}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->destroy()V

    :cond_6
    throw v8

    .line 293
    .end local v3    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .restart local v0    # "ch":I
    .restart local v1    # "firstString":Lcom/android/phone/common/mail/store/imap/ImapString;
    .restart local v4    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_7
    const/16 v8, 0xd

    :try_start_6
    invoke-virtual {p0, v8}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 294
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 302
    .end local v0    # "ch":I
    .end local v1    # "firstString":Lcom/android/phone/common/mail/store/imap/ImapString;
    .end local v4    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .end local v7    # "tag":Ljava/lang/String;
    .restart local v3    # "responseToDestroy":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :catchall_1
    move-exception v8

    goto :goto_3
.end method

.method private peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/phone/common/mail/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/phone/common/mail/PeekableInputStream;->peek()I

    move-result v0

    .line 100
    .local v0, "next":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 101
    invoke-static {}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 103
    :cond_0
    return v0
.end method

.method private readByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/phone/common/mail/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/phone/common/mail/PeekableInputStream;->read()I

    move-result v0

    .line 114
    .local v0, "next":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-static {}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 117
    :cond_0
    return v0
.end method


# virtual methods
.method public destroyResponses()V
    .locals 3

    .prologue
    .line 126
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/mail/store/imap/ImapResponse;

    .line 127
    .local v1, "r":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->destroy()V

    goto :goto_0

    .line 129
    .end local v1    # "r":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 130
    return-void
.end method

.method expect(C)V
    .locals 6
    .param p1, "expected"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 195
    .local v0, "next":I
    if-eq p1, v0, :cond_0

    .line 196
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected %04x (%c) but got %04x (%c)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    return-void
.end method

.method public readResponse()Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, "response":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->parseResponse()Lcom/android/phone/common/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 147
    const-string v2, "ImapResponseParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "ImapResponseParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :cond_0
    const/4 v2, 0x0

    const-string v3, "BYE"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const-string v2, "ImapResponseParser"

    const-string v3, "Received BYE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->destroy()V

    .line 164
    new-instance v2, Lcom/android/phone/common/mail/store/imap/ImapResponseParser$ByeException;

    invoke-direct {v2}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser$ByeException;-><init>()V

    throw v2

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 153
    throw v0

    .line 154
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 157
    throw v0

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-object v1
.end method

.method readUntil(C)Ljava/lang/String;
    .locals 3
    .param p1, "end"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 208
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 209
    .local v0, "ch":I
    if-eq v0, p1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method readUntilEol()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "ret":Ljava/lang/String;
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 223
    return-object v0
.end method
