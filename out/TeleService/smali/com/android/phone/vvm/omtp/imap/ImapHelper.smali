.class public Lcom/android/phone/vvm/omtp/imap/ImapHelper;
.super Ljava/lang/Object;
.source "ImapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/vvm/omtp/imap/ImapHelper$1;,
        Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;,
        Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

.field private mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "network"    # Landroid/net/Network;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "ImapHelper"

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->TAG:Ljava/lang/String;

    .line 67
    :try_start_0
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 69
    invoke-static {p1}, Lcom/android/phone/common/mail/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 71
    const-string v0, "u"

    invoke-static {p1, v0, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailCredentials(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "username":Ljava/lang/String;
    const-string v0, "pw"

    invoke-static {p1, v0, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailCredentials(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "password":Ljava/lang/String;
    const-string v0, "srv"

    invoke-static {p1, v0, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailCredentials(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "serverName":Ljava/lang/String;
    const-string v0, "ipt"

    invoke-static {p1, v0, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailCredentials(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 80
    .local v4, "port":I
    const/4 v6, 0x0

    .line 82
    .local v6, "auth":I
    new-instance v8, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    invoke-direct {v8, p1, v0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    .line 84
    .local v8, "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    const-string v0, "vvm_type_cvvm"

    invoke-virtual {v8}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/16 v4, 0x3e1

    .line 87
    const/4 v6, 0x1

    .line 90
    :cond_0
    new-instance v0, Lcom/android/phone/common/mail/store/ImapStore;

    move-object v1, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/common/mail/store/ImapStore;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/net/Network;)V

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v2    # "username":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "serverName":Ljava/lang/String;
    .end local v6    # "auth":I
    .end local v8    # "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v9

    .line 93
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v0, "ImapHelper"

    const-string v1, "Could not parse port number"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v7}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method private closeImapFolder()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->close(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method private convertToImapMessages(Ljava/util/List;)[Lcom/android/phone/common/mail/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)[",
            "Lcom/android/phone/common/mail/Message;"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/phone/common/mail/Message;

    .line 401
    .local v1, "messages":[Lcom/android/phone/common/mail/Message;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 402
    new-instance v2, Lcom/android/phone/common/mail/internet/MimeMessage;

    invoke-direct {v2}, Lcom/android/phone/common/mail/internet/MimeMessage;-><init>()V

    aput-object v2, v1, v0

    .line 403
    aget-object v3, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Voicemail;

    invoke-virtual {v2}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/phone/common/mail/Message;->setUid(Ljava/lang/String;)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-object v1
.end method

.method private fetchVoicemail(Lcom/android/phone/common/mail/Message;)Landroid/telecom/Voicemail;
    .locals 7
    .param p1, "message"    # Lcom/android/phone/common/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 183
    const-string v2, "ImapHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching message structure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    new-instance v1, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;

    invoke-direct {v1, p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;-><init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)V

    .line 187
    .local v1, "listener":Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;
    new-instance v0, Lcom/android/phone/common/mail/FetchProfile;

    invoke-direct {v0}, Lcom/android/phone/common/mail/FetchProfile;-><init>()V

    .line 188
    .local v0, "fetchProfile":Lcom/android/phone/common/mail/FetchProfile;
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/phone/common/mail/FetchProfile$Item;

    sget-object v3, Lcom/android/phone/common/mail/FetchProfile$Item;->FLAGS:Lcom/android/phone/common/mail/FetchProfile$Item;

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/phone/common/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/phone/common/mail/FetchProfile$Item;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    sget-object v4, Lcom/android/phone/common/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/phone/common/mail/FetchProfile$Item;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/phone/common/mail/FetchProfile;->addAll(Ljava/util/Collection;)Z

    .line 193
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    new-array v3, v6, [Lcom/android/phone/common/mail/Message;

    aput-object p1, v3, v5

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->fetch([Lcom/android/phone/common/mail/Message;Lcom/android/phone/common/mail/FetchProfile;Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)V

    .line 194
    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageStructureFetchedListener;->getVoicemail()Landroid/telecom/Voicemail;

    move-result-object v2

    return-object v2
.end method

.method private fetchVoicemailPayload(Lcom/android/phone/common/mail/Message;)Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    .locals 6
    .param p1, "message"    # Lcom/android/phone/common/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 229
    const-string v2, "ImapHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching message body for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 231
    new-instance v1, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;-><init>(Lcom/android/phone/vvm/omtp/imap/ImapHelper;Lcom/android/phone/vvm/omtp/imap/ImapHelper$1;)V

    .line 233
    .local v1, "listener":Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;
    new-instance v0, Lcom/android/phone/common/mail/FetchProfile;

    invoke-direct {v0}, Lcom/android/phone/common/mail/FetchProfile;-><init>()V

    .line 234
    .local v0, "fetchProfile":Lcom/android/phone/common/mail/FetchProfile;
    sget-object v2, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY:Lcom/android/phone/common/mail/FetchProfile$Item;

    invoke-virtual {v0, v2}, Lcom/android/phone/common/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/phone/common/mail/Message;

    aput-object p1, v3, v5

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->fetch([Lcom/android/phone/common/mail/Message;Lcom/android/phone/common/mail/FetchProfile;Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)V

    .line 237
    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper$MessageBodyFetchedListener;->getVoicemailPayload()Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;

    move-result-object v2

    return-object v2
.end method

.method private openImapFolder(Ljava/lang/String;)Lcom/android/phone/common/mail/store/ImapFolder;
    .locals 6
    .param p1, "modeReadWrite"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 387
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 396
    :goto_0
    return-object v1

    .line 390
    :cond_0
    new-instance v1, Lcom/android/phone/common/mail/store/ImapFolder;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    const-string v4, "INBOX"

    invoke-direct {v1, v3, v4}, Lcom/android/phone/common/mail/store/ImapFolder;-><init>(Lcom/android/phone/common/mail/store/ImapStore;Ljava/lang/String;)V

    .line 391
    .local v1, "folder":Lcom/android/phone/common/mail/store/ImapFolder;
    invoke-virtual {v1, p1}, Lcom/android/phone/common/mail/store/ImapFolder;->open(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    .end local v1    # "folder":Lcom/android/phone/common/mail/store/ImapFolder;
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Lcom/android/phone/common/mail/MessagingException;
    const-string v3, "ImapHelper"

    const-string v4, "Messaging Exception"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v1, v2

    .line 396
    goto :goto_0
.end method

.method private varargs setFlags(Ljava/util/List;[Ljava/lang/String;)Z
    .locals 6
    .param p2, "flags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 138
    :goto_0
    return v1

    .line 128
    :cond_0
    :try_start_0
    const-string v3, "mode_read_write"

    invoke-direct {p0, v3}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/phone/common/mail/store/ImapFolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    .line 129
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    if-eqz v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->convertToImapMessages(Ljava/util/List;)[Lcom/android/phone/common/mail/Message;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p2, v5}, Lcom/android/phone/common/mail/store/ImapFolder;->setFlags([Lcom/android/phone/common/mail/Message;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Lcom/android/phone/common/mail/MessagingException;
    :try_start_1
    const-string v2, "ImapHelper"

    const-string v3, "Messaging exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    goto :goto_0

    .end local v0    # "e":Lcom/android/phone/common/mail/MessagingException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    throw v1
.end method


# virtual methods
.method public fetchAllVoicemails()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 148
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    :try_start_0
    const-string v9, "mode_read_write"

    invoke-direct {p0, v9}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/phone/common/mail/store/ImapFolder;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    .line 152
    iget-object v9, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    move-object v6, v8

    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    :goto_0
    return-object v6

    .line 158
    .restart local v6    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/phone/common/mail/store/ImapFolder;->getMessages([Ljava/lang/String;)[Lcom/android/phone/common/mail/Message;

    move-result-object v5

    .line 160
    .local v5, "messages":[Lcom/android/phone/common/mail/Message;
    move-object v0, v5

    .local v0, "arr$":[Lcom/android/phone/common/mail/Message;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 162
    .local v4, "message":Lcom/android/phone/common/mail/Message;
    invoke-direct {p0, v4}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->fetchVoicemail(Lcom/android/phone/common/mail/Message;)Landroid/telecom/Voicemail;

    move-result-object v7

    .line 163
    .local v7, "voicemail":Landroid/telecom/Voicemail;
    if-eqz v7, :cond_1

    .line 164
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    .end local v4    # "message":Lcom/android/phone/common/mail/Message;
    .end local v7    # "voicemail":Landroid/telecom/Voicemail;
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    goto :goto_0

    .line 168
    .end local v0    # "arr$":[Lcom/android/phone/common/mail/Message;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "messages":[Lcom/android/phone/common/mail/Message;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Lcom/android/phone/common/mail/MessagingException;
    :try_start_2
    const-string v9, "ImapHelper"

    const-string v10, "Messaging Exception"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v1, v10, v11}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    move-object v6, v8

    goto :goto_0

    .end local v1    # "e":Lcom/android/phone/common/mail/MessagingException;
    :catchall_0
    move-exception v8

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    throw v8
.end method

.method public fetchVoicemailPayload(Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;Ljava/lang/String;)Z
    .locals 4
    .param p1, "callback"    # Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 201
    :try_start_0
    const-string v3, "mode_read_write"

    invoke-direct {p0, v3}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/phone/common/mail/store/ImapFolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    .line 202
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    .line 219
    :goto_0
    return v2

    .line 206
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    invoke-virtual {v3, p2}, Lcom/android/phone/common/mail/store/ImapFolder;->getMessage(Ljava/lang/String;)Lcom/android/phone/common/mail/Message;

    move-result-object v0

    .line 207
    .local v0, "message":Lcom/android/phone/common/mail/Message;
    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->fetchVoicemailPayload(Lcom/android/phone/common/mail/Message;)Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    :try_end_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 209
    .local v1, "voicemailPayload":Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    if-nez v1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    goto :goto_0

    .line 213
    :cond_1
    :try_start_2
    invoke-virtual {p1, v1}, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;->setVoicemailContent(Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;)V
    :try_end_2
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    const/4 v2, 0x1

    .line 217
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    goto :goto_0

    .line 215
    .end local v0    # "message":Lcom/android/phone/common/mail/Message;
    .end local v1    # "voicemailPayload":Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
    :catch_0
    move-exception v3

    .line 217
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->closeImapFolder()V

    throw v2
.end method

.method public isSuccessfullyInitialized()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->mImapStore:Lcom/android/phone/common/mail/store/ImapStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markMessagesAsDeleted(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deleted"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setFlags(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markMessagesAsRead(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "voicemails":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Voicemail;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "seen"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->setFlags(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
