.class public Lcom/android/phone/common/mail/internet/MimeMessage;
.super Lcom/android/phone/common/mail/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private mBcc:[Lcom/android/phone/common/mail/Address;

.field private mBody:Lcom/android/phone/common/mail/Body;

.field private mCc:[Lcom/android/phone/common/mail/Address;

.field private mComplete:Z

.field private mFrom:[Lcom/android/phone/common/mail/Address;

.field private mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

.field private mInhibitLocalMessageId:Z

.field private mReplyTo:[Lcom/android/phone/common/mail/Address;

.field private mSentDate:Ljava/util/Date;

.field protected mSize:I

.field private mTo:[Lcom/android/phone/common/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeMessage;->sRandom:Ljava/util/Random;

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 84
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    .line 86
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/phone/common/mail/Message;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mComplete:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    .line 90
    return-void
.end method

.method private static generateMessageId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    .line 102
    sget-object v4, Lcom/android/phone/common/mail/internet/MimeMessage;->sRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit8 v3, v4, 0x1f

    .line 103
    .local v3, "value":I
    const-string v4, "0123456789abcdefghijklmnopqrstuv"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 104
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "c":C
    .end local v3    # "value":I
    :cond_0
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v4, "@email.android.com>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/android/phone/common/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/phone/common/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mHeader:Lcom/android/phone/common/mail/internet/MimeHeader;

    return-object v0
.end method

.method private init()Lorg/apache/james/mime4j/MimeStreamParser;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/common/mail/internet/MimeHeader;->clear()V

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 128
    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mFrom:[Lcom/android/phone/common/mail/Address;

    .line 129
    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mTo:[Lcom/android/phone/common/mail/Address;

    .line 130
    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mCc:[Lcom/android/phone/common/mail/Address;

    .line 131
    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBcc:[Lcom/android/phone/common/mail/Address;

    .line 132
    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mReplyTo:[Lcom/android/phone/common/mail/Address;

    .line 133
    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 134
    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBody:Lcom/android/phone/common/mail/Body;

    .line 136
    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 137
    .local v0, "parser":Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/android/phone/common/mail/internet/MimeMessage;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    .line 138
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/common/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public getBody()Lcom/android/phone/common/mail/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBody:Lcom/android/phone/common/mail/Body;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 208
    const-string v0, "text/plain"

    .line 210
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()[Lcom/android/phone/common/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mFrom:[Lcom/android/phone/common/mail/Address;

    if-nez v1, :cond_2

    .line 321
    const-string v1, "From"

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/common/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "list":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 323
    :cond_0
    const-string v1, "Sender"

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/common/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_1
    invoke-static {v0}, Lcom/android/phone/common/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/phone/common/mail/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mFrom:[Lcom/android/phone/common/mail/Address;

    .line 327
    .end local v0    # "list":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mFrom:[Lcom/android/phone/common/mail/Address;

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 381
    const-string v1, "Message-ID"

    invoke-virtual {p0, v1}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "messageId":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    if-nez v1, :cond_0

    .line 383
    invoke-static {}, Lcom/android/phone/common/mail/internet/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 386
    :cond_0
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/common/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v2, :cond_0

    .line 174
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Date"

    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/common/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/DateTimeField;

    .line 176
    .local v1, "field":Lorg/apache/james/mime4j/field/DateTimeField;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "field":Lorg/apache/james/mime4j/field/DateTimeField;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v2, :cond_1

    .line 186
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Delivery-date"

    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/common/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/DateTimeField;

    .line 188
    .restart local v1    # "field":Lorg/apache/james/mime4j/field/DateTimeField;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    .end local v1    # "field":Lorg/apache/james/mime4j/field/DateTimeField;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Email Log"

    const-string v3, "Message missing Date header"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 192
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Email Log"

    const-string v3, "Message also missing Delivery-Date header"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 241
    iget v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mSize:I

    return v0
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->init()Lorg/apache/james/mime4j/MimeStreamParser;

    move-result-object v0

    .line 143
    .local v0, "parser":Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 144
    invoke-virtual {v0}, Lorg/apache/james/mime4j/MimeStreamParser;->getPrematureEof()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mComplete:Z

    .line 145
    return-void

    .line 144
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBody(Lcom/android/phone/common/mail/Body;)V
    .locals 6
    .param p1, "body"    # Lcom/android/phone/common/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBody:Lcom/android/phone/common/mail/Body;

    .line 402
    instance-of v1, p1, Lcom/android/phone/common/mail/Multipart;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 403
    check-cast v0, Lcom/android/phone/common/mail/Multipart;

    .line 404
    .local v0, "multipart":Lcom/android/phone/common/mail/Multipart;
    invoke-virtual {v0, p0}, Lcom/android/phone/common/mail/Multipart;->setParent(Lcom/android/phone/common/mail/Part;)V

    .line 405
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Lcom/android/phone/common/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "MIME-Version"

    const-string v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .end local v0    # "multipart":Lcom/android/phone/common/mail/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    instance-of v1, p1, Lcom/android/phone/common/mail/internet/TextBody;

    if-eqz v1, :cond_0

    .line 409
    const-string v1, "Content-Type"

    const-string v2, "%s;\n charset=utf-8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/common/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 370
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/common/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 522
    .local v0, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 523
    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/phone/common/mail/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 526
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 528
    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBody:Lcom/android/phone/common/mail/Body;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMessage;->mBody:Lcom/android/phone/common/mail/Body;

    invoke-interface {v1, p1}, Lcom/android/phone/common/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 531
    :cond_0
    return-void
.end method
