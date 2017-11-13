.class public Lcom/android/phone/common/mail/internet/MimeMultipart;
.super Lcom/android/phone/common/mail/Multipart;
.source "MimeMultipart.java"


# instance fields
.field protected mBoundary:Ljava/lang/String;

.field protected mContentType:Ljava/lang/String;

.field protected mPreamble:Ljava/lang/String;

.field protected mSubType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/common/mail/Multipart;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/android/phone/common/mail/internet/MimeMultipart;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    .line 39
    const-string v0, "mixed"

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/common/mail/Multipart;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lcom/android/phone/common/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mSubType:Ljava/lang/String;

    .line 46
    const-string v1, "boundary"

    invoke-static {p1, v1}, Lcom/android/phone/common/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/android/phone/common/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiPart does not contain boundary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/phone/common/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MultiPart Content-Type; must contain subtype and boundary. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public generateBoundary()Ljava/lang/String;
    .locals 6

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4041800000000000L    # 35.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .param p1, "preamble"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 4
    .param p1, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mSubType:Ljava/lang/String;

    .line 81
    const-string v0, "multipart/%s; boundary=\"%s\""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 88
    .local v3, "writer":Ljava/io/BufferedWriter;
    iget-object v4, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 92
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 93
    iget-object v4, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/BodyPart;

    .line 94
    .local v0, "bodyPart":Lcom/android/phone/common/mail/BodyPart;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 96
    invoke-virtual {v0, p1}, Lcom/android/phone/common/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 97
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "bodyPart":Lcom/android/phone/common/mail/BodyPart;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/common/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 102
    return-void
.end method
