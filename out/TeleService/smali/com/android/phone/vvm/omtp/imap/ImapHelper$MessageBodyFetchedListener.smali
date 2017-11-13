.class final Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;
.super Ljava/lang/Object;
.source "ImapHelper.java"

# interfaces
.implements Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/vvm/omtp/imap/ImapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageBodyFetchedListener"
.end annotation


# instance fields
.field private mVoicemailPayload:Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;

.field final synthetic this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;


# direct methods
.method private constructor <init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;Lcom/android/phone/vvm/omtp/imap/ImapHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/vvm/omtp/imap/ImapHelper;
    .param p2, "x1"    # Lcom/android/phone/vvm/omtp/imap/ImapHelper$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;-><init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V

    return-void
.end method

.method private getAudioDataFromBody(Lcom/android/phone/common/mail/Body;)[B
    .locals 4
    .param p1, "body"    # Lcom/android/phone/common/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 375
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 377
    .local v0, "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/phone/common/mail/Body;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 381
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    return-object v2

    .line 379
    :catchall_0
    move-exception v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private getVoicemailPayloadFromMessage(Lcom/android/phone/common/mail/Message;)Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    .locals 10
    .param p1, "message"    # Lcom/android/phone/common/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 357
    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getBody()Lcom/android/phone/common/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/mail/Multipart;

    .line 358
    .local v4, "multipart":Lcom/android/phone/common/mail/Multipart;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/android/phone/common/mail/Multipart;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 359
    invoke-virtual {v4, v3}, Lcom/android/phone/common/mail/Multipart;->getBodyPart(I)Lcom/android/phone/common/mail/BodyPart;

    move-result-object v0

    .line 360
    .local v0, "bodyPart":Lcom/android/phone/common/mail/BodyPart;
    invoke-virtual {v0}, Lcom/android/phone/common/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "bodyPartMimeType":Ljava/lang/String;
    const-string v5, "ImapHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bodyPart mime type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 363
    const-string v5, "audio/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/android/phone/common/mail/BodyPart;->getBody()Lcom/android/phone/common/mail/Body;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->getAudioDataFromBody(Lcom/android/phone/common/mail/Body;)[B

    move-result-object v2

    .line 365
    .local v2, "bytes":[B
    const-string v5, "ImapHelper"

    const-string v6, "Fetched %s bytes of data"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    array-length v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 366
    new-instance v5, Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;

    invoke-direct {v5, v1, v2}, Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;-><init>(Ljava/lang/String;[B)V

    .line 370
    .end local v0    # "bodyPart":Lcom/android/phone/common/mail/BodyPart;
    .end local v1    # "bodyPartMimeType":Ljava/lang/String;
    .end local v2    # "bytes":[B
    :goto_1
    return-object v5

    .line 358
    .restart local v0    # "bodyPart":Lcom/android/phone/common/mail/BodyPart;
    .restart local v1    # "bodyPartMimeType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "bodyPart":Lcom/android/phone/common/mail/BodyPart;
    .end local v1    # "bodyPartMimeType":Ljava/lang/String;
    :cond_1
    const-string v5, "ImapHelper"

    const-string v6, "No audio attachment found on this voicemail"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 370
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getVoicemailPayload()Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->mVoicemailPayload:Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;

    return-object v0
.end method

.method public messageRetrieved(Lcom/android/phone/common/mail/Message;)V
    .locals 6
    .param p1, "message"    # Lcom/android/phone/common/mail/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 344
    const-string v1, "ImapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetched message body for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 345
    const-string v1, "ImapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message retrieved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 347
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->getVoicemailPayloadFromMessage(Lcom/android/phone/common/mail/Message;)Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->mVoicemailPayload:Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Lcom/android/phone/common/mail/MessagingException;
    const-string v1, "ImapHelper"

    const-string v2, "Messaging Exception:"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 350
    .end local v0    # "e":Lcom/android/phone/common/mail/MessagingException;
    :catch_1
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImapHelper"

    const-string v2, "IO Exception:"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
