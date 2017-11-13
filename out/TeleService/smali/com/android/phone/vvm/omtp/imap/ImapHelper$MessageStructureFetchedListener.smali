.class final Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;
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
    name = "MessageStructureFetchedListener"
.end annotation


# instance fields
.field private mVoicemail:Landroid/telecom/Voicemail;

.field final synthetic this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;


# direct methods
.method public constructor <init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    return-void
.end method

.method private getNumber([Lcom/android/phone/common/mail/Address;)Ljava/lang/String;
    .locals 6
    .param p1, "fromAddresses"    # [Lcom/android/phone/common/mail/Address;

    .prologue
    const/4 v5, 0x0

    .line 315
    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 316
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 317
    const-string v2, "ImapHelper"

    const-string v3, "More than one from addresses found. Using the first one."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 319
    :cond_0
    aget-object v2, p1, v5

    invoke-virtual {v2}, Lcom/android/phone/common/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "sender":Ljava/lang/String;
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 321
    .local v0, "atPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 323
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 327
    .end local v0    # "atPos":I
    .end local v1    # "sender":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVoicemailFromMessage(Lcom/android/phone/common/mail/Message;)Landroid/telecom/Voicemail;
    .locals 13
    .param p1, "message"    # Lcom/android/phone/common/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 278
    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getMimeType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "multipart/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 279
    const-string v9, "ImapHelper"

    const-string v10, "Ignored non multi-part message"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 304
    :cond_0
    :goto_0
    return-object v8

    .line 283
    :cond_1
    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getBody()Lcom/android/phone/common/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/mail/Multipart;

    .line 284
    .local v4, "multipart":Lcom/android/phone/common/mail/Multipart;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/phone/common/mail/Multipart;->getCount()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 285
    invoke-virtual {v4, v2}, Lcom/android/phone/common/mail/Multipart;->getBodyPart(I)Lcom/android/phone/common/mail/BodyPart;

    move-result-object v0

    .line 286
    .local v0, "bodyPart":Lcom/android/phone/common/mail/BodyPart;
    invoke-virtual {v0}, Lcom/android/phone/common/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "bodyPartMimeType":Ljava/lang/String;
    const-string v9, "ImapHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bodyPart mime type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 289
    const-string v9, "audio/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 291
    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 292
    .local v6, "time":J
    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getFrom()[Lcom/android/phone/common/mail/Address;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->getNumber([Lcom/android/phone/common/mail/Address;)Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getFlags()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "seen"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 295
    .local v3, "isRead":Z
    invoke-static {v6, v7, v5}, Landroid/telecom/Voicemail;->createForInsertion(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    # getter for: Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;
    invoke-static {v9}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->access$300(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telecom/Voicemail$Builder;->setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Voicemail$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    # getter for: Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->access$200(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telecom/Voicemail$Builder;->setSourcePackage(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telecom/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/telecom/Voicemail$Builder;->setIsRead(Z)Landroid/telecom/Voicemail$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Voicemail$Builder;->build()Landroid/telecom/Voicemail;

    move-result-object v8

    goto/16 :goto_0

    .line 284
    .end local v3    # "isRead":Z
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "time":J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public getVoicemail()Landroid/telecom/Voicemail;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->mVoicemail:Landroid/telecom/Voicemail;

    return-object v0
.end method

.method public messageRetrieved(Lcom/android/phone/common/mail/Message;)V
    .locals 5
    .param p1, "message"    # Lcom/android/phone/common/mail/Message;

    .prologue
    const/4 v4, 0x0

    .line 256
    const-string v1, "ImapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetched message structure for "

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

    .line 257
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

    .line 259
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->getVoicemailFromMessage(Lcom/android/phone/common/mail/Message;)Landroid/telecom/Voicemail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->mVoicemail:Landroid/telecom/Voicemail;

    .line 260
    iget-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->mVoicemail:Landroid/telecom/Voicemail;

    if-nez v1, :cond_0

    .line 261
    const-string v1, "ImapHelper"

    const-string v2, "This voicemail does not have an attachment..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lcom/android/phone/common/mail/MessagingException;
    const-string v1, "ImapHelper"

    const-string v2, "Messaging Exception"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    iget-object v1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->this$0:Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    # invokes: Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V
    invoke-static {v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->access$100(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V

    goto :goto_0
.end method
