.class public Lcom/android/phone/common/mail/store/imap/ImapResponse;
.super Lcom/android/phone/common/mail/store/imap/ImapList;
.source "ImapResponse.java"


# instance fields
.field private final mIsContinuationRequest:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isContinuationRequest"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapList;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/phone/common/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lcom/android/phone/common/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    .line 29
    return-void
.end method

.method static isStatusResponse(Ljava/lang/String;)Z
    .locals 1
    .param p0, "symbol"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "OK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BAD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PREAUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BYE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlertTextOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    const-string v1, "ALERT"

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/phone/common/mail/store/imap/ImapString;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapString;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseCodeOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/android/phone/common/mail/store/imap/ImapString;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapString;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/android/phone/common/mail/store/imap/ImapString;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapString;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusResponseTextOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    sget-object v0, Lcom/android/phone/common/mail/store/imap/ImapString;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapString;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getElementOrNone(I)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_0
.end method

.method public isContinuationRequest()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/phone/common/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    return v0
.end method

.method public final isDataResponse(ILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "responseType"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    const-string v1, "OK"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStatusResponse()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isStatusResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTagged()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    .line 132
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v0, "+"

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/android/phone/common/mail/store/imap/ImapList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
