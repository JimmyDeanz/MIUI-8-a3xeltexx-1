.class public Lcom/android/phone/common/mail/store/ImapFolder;
.super Ljava/lang/Object;
.source "ImapFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;
    }
.end annotation


# static fields
.field private static final PERMANENT_FLAGS:[Ljava/lang/String;


# instance fields
.field private mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

.field private mExists:Z

.field private mMessageCount:I

.field private mMode:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mStore:Lcom/android/phone/common/mail/store/ImapStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "seen"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "flagged"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "answered"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/common/mail/store/ImapFolder;->PERMANENT_FLAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/common/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1
    .param p1, "store"    # Lcom/android/phone/common/mail/store/ImapStore;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMessageCount:I

    .line 86
    iput-object p1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mStore:Lcom/android/phone/common/mail/store/ImapStore;

    .line 87
    iput-object p2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Lcom/android/phone/common/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    return-void
.end method

.method private static decodeBody(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;ILcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)Lcom/android/phone/common/mail/Body;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "contentTransferEncoding"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "listener"    # Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {p1, p2}, Lcom/android/phone/common/mail/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 450
    new-instance v5, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;

    invoke-direct {v5}, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;-><init>()V

    .line 451
    .local v5, "tempBody":Lcom/android/phone/common/mail/internet/BinaryTempFileBody;
    invoke-virtual {v5}, Lcom/android/phone/common/mail/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 453
    .local v4, "out":Ljava/io/OutputStream;
    const/16 v7, 0x4000

    :try_start_0
    new-array v1, v7, [B

    .line 454
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 455
    .local v3, "n":I
    const/4 v2, 0x0

    .line 456
    .local v2, "count":I
    :goto_0
    const/4 v7, -0x1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v7, v3, :cond_0

    .line 457
    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    add-int/2addr v2, v3

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 466
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v3    # "n":I
    :goto_1
    return-object v5

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "bde":Landroid/util/Base64DataException;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f08028a

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "warning":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .end local v0    # "bde":Landroid/util/Base64DataException;
    .end local v6    # "warning":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v7
.end method

.method private destroyResponses()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/ImapConnection;->destroyResponses()V

    .line 101
    :cond_0
    return-void
.end method

.method private doSelect()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 720
    iget-object v5, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT \"%s\""

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mName:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 724
    .local v4, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/common/mail/store/imap/ImapResponse;>;"
    const-string v5, "mode_read_write"

    iput-object v5, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMode:Ljava/lang/String;

    .line 725
    const/4 v1, -0x1

    .line 726
    .local v1, "messageCount":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/common/mail/store/imap/ImapResponse;

    .line 727
    .local v2, "response":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    const-string v5, "EXISTS"

    invoke-virtual {v2, v10, v5}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 728
    invoke-virtual {v2, v11}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/common/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v1

    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isOk()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 730
    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v3

    .line 731
    .local v3, "responseCode":Lcom/android/phone/common/mail/store/imap/ImapString;
    const-string v5, "READ-ONLY"

    invoke-virtual {v3, v5}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 732
    const-string v5, "mode_read_only"

    iput-object v5, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMode:Ljava/lang/String;

    goto :goto_0

    .line 733
    :cond_2
    const-string v5, "READ-WRITE"

    invoke-virtual {v3, v5}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 734
    const-string v5, "mode_read_write"

    iput-object v5, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMode:Ljava/lang/String;

    goto :goto_0

    .line 736
    .end local v3    # "responseCode":Lcom/android/phone/common/mail/store/imap/ImapString;
    :cond_3
    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 737
    new-instance v5, Lcom/android/phone/common/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 741
    .end local v2    # "response":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :cond_4
    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    .line 742
    new-instance v5, Lcom/android/phone/common/mail/MessagingException;

    const-string v6, "Did not find message count during select"

    invoke-direct {v5, v6}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 744
    :cond_5
    iput v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMessageCount:I

    .line 745
    iput-boolean v10, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mExists:Z

    .line 746
    return-void
.end method

.method private handleUntaggedResponse(Lcom/android/phone/common/mail/store/imap/ImapResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/android/phone/common/mail/store/imap/ImapResponse;

    .prologue
    .line 488
    const/4 v0, 0x1

    const-string v1, "EXISTS"

    invoke-virtual {p1, v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMessageCount:I

    .line 491
    :cond_0
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/common/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/common/mail/store/imap/ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/mail/store/imap/ImapResponse;

    .line 479
    .local v1, "response":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    invoke-direct {p0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->handleUntaggedResponse(Lcom/android/phone/common/mail/store/imap/ImapResponse;)V

    goto :goto_0

    .line 481
    .end local v1    # "response":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :cond_0
    return-void
.end method

.method private ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;
    .locals 5
    .param p1, "connection"    # Lcom/android/phone/common/mail/store/ImapConnection;
    .param p2, "ioe"    # Ljava/io/IOException;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 755
    const-string v0, "ImapFolder"

    const-string v1, "IO Exception detected: "

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 756
    invoke-virtual {p1}, Lcom/android/phone/common/mail/store/ImapConnection;->close()V

    .line 757
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    if-ne p1, v0, :cond_0

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    .line 759
    invoke-virtual {p0, v3}, Lcom/android/phone/common/mail/store/ImapFolder;->close(Z)V

    .line 761
    :cond_0
    new-instance v0, Lcom/android/phone/common/mail/MessagingException;

    const-string v1, "IO Error"

    invoke-direct {v0, v4, v1, p2}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static parseBodyStructure(Lcom/android/phone/common/mail/store/imap/ImapList;Lcom/android/phone/common/mail/Part;Ljava/lang/String;)V
    .locals 26
    .param p0, "bs"    # Lcom/android/phone/common/mail/store/imap/ImapList;
    .param p1, "part"    # Lcom/android/phone/common/mail/Part;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 495
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 499
    new-instance v16, Lcom/android/phone/common/mail/internet/MimeMultipart;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/common/mail/internet/MimeMultipart;-><init>()V

    .line 500
    .local v16, "mp":Lcom/android/phone/common/mail/internet/MimeMultipart;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v11

    .local v11, "count":I
    :goto_0
    if-ge v14, v11, :cond_2

    .line 501
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v12

    .line 502
    .local v12, "e":Lcom/android/phone/common/mail/store/imap/ImapElement;
    invoke-virtual {v12}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 507
    new-instance v7, Lcom/android/phone/common/mail/internet/MimeBodyPart;

    invoke-direct {v7}, Lcom/android/phone/common/mail/internet/MimeBodyPart;-><init>()V

    .line 508
    .local v7, "bp":Lcom/android/phone/common/mail/internet/MimeBodyPart;
    const-string v20, "TEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v20

    add-int/lit8 v21, v14, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/phone/common/mail/store/imap/ImapList;Lcom/android/phone/common/mail/Part;Ljava/lang/String;)V

    .line 514
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/phone/common/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/phone/common/mail/BodyPart;)V

    .line 500
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 512
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v14, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/phone/common/mail/store/imap/ImapList;Lcom/android/phone/common/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    .line 517
    .end local v7    # "bp":Lcom/android/phone/common/mail/internet/MimeBodyPart;
    :cond_1
    invoke-virtual {v12}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isString()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 518
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 523
    .end local v12    # "e":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/phone/common/mail/Part;->setBody(Lcom/android/phone/common/mail/Body;)V

    .line 666
    .end local v16    # "mp":Lcom/android/phone/common/mail/internet/MimeMultipart;
    :goto_2
    return-void

    .line 540
    .end local v11    # "count":I
    .end local v14    # "i":I
    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v19

    .line 541
    .local v19, "type":Lcom/android/phone/common/mail/store/imap/ImapString;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v18

    .line 542
    .local v18, "subType":Lcom/android/phone/common/mail/store/imap/ImapString;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 545
    .local v15, "mimeType":Ljava/lang/String;
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v6

    .line 546
    .local v6, "bodyParams":Lcom/android/phone/common/mail/store/imap/ImapList;
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v8

    .line 547
    .local v8, "cid":Lcom/android/phone/common/mail/store/imap/ImapString;
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v13

    .line 548
    .local v13, "encoding":Lcom/android/phone/common/mail/store/imap/ImapString;
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v17

    .line 550
    .local v17, "size":I
    const-string v20, "message/rfc822"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/android/phone/common/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 560
    new-instance v20, Lcom/android/phone/common/mail/MessagingException;

    const-string v21, "BODYSTRUCTURE message/rfc822 not yet supported."

    invoke-direct/range {v20 .. v21}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 567
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .local v10, "contentType":Ljava/lang/StringBuilder;
    const/4 v14, 0x1

    .restart local v14    # "i":I
    invoke-virtual {v6}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v11

    .restart local v11    # "count":I
    :goto_3
    if-ge v14, v11, :cond_5

    .line 578
    const-string v20, ";\n %s=\"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v6, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    add-int/lit8 v14, v14, 0x2

    goto :goto_3

    .line 583
    :cond_5
    const-string v20, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/phone/common/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v20, "TEXT"

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 592
    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v3

    .line 597
    .local v3, "bodyDisposition":Lcom/android/phone/common/mail/store/imap/ImapList;
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .local v9, "contentDisposition":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v20

    if-lez v20, :cond_8

    .line 600
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 602
    .local v4, "bodyDisposition0Str":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 603
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v5

    .line 607
    .local v5, "bodyDispositionParams":Lcom/android/phone/common/mail/store/imap/ImapList;
    invoke-virtual {v5}, Lcom/android/phone/common/mail/store/imap/ImapList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    .line 612
    const/4 v14, 0x1

    invoke-virtual {v5}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v11

    :goto_5
    if-ge v14, v11, :cond_8

    .line 615
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v21, ";\n %s=\"%s\""

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v5, v14}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    add-int/lit8 v14, v14, 0x2

    goto :goto_5

    .line 594
    .end local v3    # "bodyDisposition":Lcom/android/phone/common/mail/store/imap/ImapList;
    .end local v4    # "bodyDisposition0Str":Ljava/lang/String;
    .end local v5    # "bodyDispositionParams":Lcom/android/phone/common/mail/store/imap/ImapList;
    .end local v9    # "contentDisposition":Ljava/lang/StringBuilder;
    :cond_7
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v3

    .restart local v3    # "bodyDisposition":Lcom/android/phone/common/mail/store/imap/ImapList;
    goto :goto_4

    .line 623
    .restart local v9    # "contentDisposition":Ljava/lang/StringBuilder;
    :cond_8
    if-lez v17, :cond_9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "size"

    invoke-static/range {v20 .. v21}, Lcom/android/phone/common/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_9

    .line 626
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v21, ";\n size=%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_a

    .line 634
    const-string v20, "Content-Disposition"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/phone/common/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_a
    invoke-virtual {v13}, Lcom/android/phone/common/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 643
    const-string v20, "Content-Transfer-Encoding"

    invoke-virtual {v13}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/phone/common/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_b
    invoke-virtual {v8}, Lcom/android/phone/common/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_c

    .line 651
    const-string v20, "Content-ID"

    invoke-virtual {v8}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/phone/common/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_c
    if-lez v17, :cond_d

    .line 655
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v20, p1

    .line 656
    check-cast v20, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 663
    :cond_d
    :goto_6
    const-string v20, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/phone/common/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 657
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/phone/common/mail/internet/MimeBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v20, p1

    .line 658
    check-cast v20, Lcom/android/phone/common/mail/internet/MimeBodyPart;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/internet/MimeBodyPart;->setSize(I)V

    goto :goto_6

    .line 660
    :cond_f
    new-instance v20, Lcom/android/phone/common/mail/MessagingException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown part type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20
.end method


# virtual methods
.method public close(Z)V
    .locals 4
    .param p1, "expunge"    # Z

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->expunge()[Lcom/android/phone/common/mail/Message;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMessageCount:I

    .line 171
    monitor-enter p0

    .line 172
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/phone/common/mail/store/ImapStore;->closeConnection()V

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    .line 174
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lcom/android/phone/common/mail/MessagingException;
    const-string v1, "ImapFolder"

    const-string v2, "Messaging Exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 174
    .end local v0    # "e":Lcom/android/phone/common/mail/MessagingException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public expunge()[Lcom/android/phone/common/mail/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->checkOpen()V

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    const-string v2, "EXPUNGE"

    invoke-virtual {v1, v2}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    .line 677
    const/4 v1, 0x0

    return-object v1

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v1
.end method

.method public fetch([Lcom/android/phone/common/mail/Message;Lcom/android/phone/common/mail/FetchProfile;Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)V
    .locals 4
    .param p1, "messages"    # [Lcom/android/phone/common/mail/Message;
    .param p2, "fp"    # Lcom/android/phone/common/mail/FetchProfile;
    .param p3, "listener"    # Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/common/mail/store/ImapFolder;->fetchInternal([Lcom/android/phone/common/mail/Message;Lcom/android/phone/common/mail/FetchProfile;Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ImapFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 267
    throw v0
.end method

.method public fetchInternal([Lcom/android/phone/common/mail/Message;Lcom/android/phone/common/mail/FetchProfile;Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)V
    .locals 36
    .param p1, "messages"    # [Lcom/android/phone/common/mail/Message;
    .param p2, "fp"    # Lcom/android/phone/common/mail/FetchProfile;
    .param p3, "listener"    # Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 273
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_0

    .line 440
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->checkOpen()V

    .line 277
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v24, "messageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/common/mail/Message;>;"
    move-object/from16 v3, p1

    .local v3, "arr$":[Lcom/android/phone/common/mail/Message;
    array-length v0, v3

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v22, v3, v18

    .line 279
    .local v22, "m":Lcom/android/phone/common/mail/Message;
    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 293
    .end local v22    # "m":Lcom/android/phone/common/mail/Message;
    :cond_1
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 295
    .local v11, "fetchFields":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string v29, "UID"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v29, Lcom/android/phone/common/mail/FetchProfile$Item;->FLAGS:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 297
    const-string v29, "FLAGS"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_2
    sget-object v29, Lcom/android/phone/common/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 300
    const-string v29, "INTERNALDATE"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 301
    const-string v29, "RFC822.SIZE"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 302
    const-string v29, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id)]"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_3
    sget-object v29, Lcom/android/phone/common/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 305
    const-string v29, "BODYSTRUCTURE"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_4
    sget-object v29, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 309
    sget-object v29, Lcom/android/phone/common/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_5
    sget-object v29, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 312
    const-string v29, "BODY.PEEK[]"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/phone/common/mail/FetchProfile;->getFirstPart()Lcom/android/phone/common/mail/Part;

    move-result-object v13

    .line 317
    .local v13, "fetchPart":Lcom/android/phone/common/mail/Part;
    if-eqz v13, :cond_7

    .line 318
    const-string v29, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Lcom/android/phone/common/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 322
    .local v25, "partIds":[Ljava/lang/String;
    if-eqz v25, :cond_7

    .line 323
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "BODY.PEEK["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v30, v25, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v25    # "partIds":[Ljava/lang/String;
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    move-object/from16 v29, v0

    sget-object v30, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v31, "UID FETCH %s (%s)"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/phone/common/mail/store/ImapStore;->joinMessageUids([Lcom/android/phone/common/mail/Message;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v34

    const/16 v35, 0x20

    invoke-static/range {v34 .. v35}, Lcom/android/phone/common/mail/utils/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/phone/common/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_8
    const/16 v26, 0x0

    .line 337
    .local v26, "response":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/common/mail/store/ImapConnection;->readResponse()Lcom/android/phone/common/mail/store/imap/ImapResponse;

    move-result-object v26

    .line 339
    const/16 v29, 0x1

    const-string v30, "FETCH"

    move-object/from16 v0, v26

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v29

    if-nez v29, :cond_9

    .line 434
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    .line 436
    :goto_2
    invoke-virtual/range {v26 .. v26}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v29

    if-eqz v29, :cond_8

    goto/16 :goto_0

    .line 342
    :cond_9
    const/16 v29, 0x2

    :try_start_3
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v12

    .line 343
    .local v12, "fetchList":Lcom/android/phone/common/mail/store/imap/ImapList;
    const-string v29, "UID"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v28

    .line 345
    .local v28, "uid":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v29

    if-eqz v29, :cond_a

    .line 434
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 437
    .end local v12    # "fetchList":Lcom/android/phone/common/mail/store/imap/ImapList;
    .end local v26    # "response":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .end local v28    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 438
    .local v20, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;

    move-result-object v29

    throw v29

    .line 347
    .end local v20    # "ioe":Ljava/io/IOException;
    .restart local v12    # "fetchList":Lcom/android/phone/common/mail/store/imap/ImapList;
    .restart local v26    # "response":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .restart local v28    # "uid":Ljava/lang/String;
    :cond_a
    :try_start_5
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 348
    .local v23, "message":Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
    if-nez v23, :cond_b

    .line 434
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 350
    :cond_b
    :try_start_7
    sget-object v29, Lcom/android/phone/common/mail/FetchProfile$Item;->FLAGS:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 351
    const-string v29, "FLAGS"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v15

    .line 353
    .local v15, "flags":Lcom/android/phone/common/mail/store/imap/ImapList;
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual {v15}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v8

    .local v8, "count":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v8, :cond_10

    .line 354
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v14

    .line 355
    .local v14, "flag":Lcom/android/phone/common/mail/store/imap/ImapString;
    const-string v29, "\\DELETED"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 356
    const-string v29, "deleted"

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V

    .line 353
    :cond_c
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 357
    :cond_d
    const-string v29, "\\ANSWERED"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 358
    const-string v29, "answered"

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 434
    .end local v8    # "count":I
    .end local v12    # "fetchList":Lcom/android/phone/common/mail/store/imap/ImapList;
    .end local v14    # "flag":Lcom/android/phone/common/mail/store/imap/ImapString;
    .end local v15    # "flags":Lcom/android/phone/common/mail/store/imap/ImapList;
    .end local v17    # "i":I
    .end local v23    # "message":Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
    .end local v28    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v29

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v29
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 359
    .restart local v8    # "count":I
    .restart local v12    # "fetchList":Lcom/android/phone/common/mail/store/imap/ImapList;
    .restart local v14    # "flag":Lcom/android/phone/common/mail/store/imap/ImapString;
    .restart local v15    # "flags":Lcom/android/phone/common/mail/store/imap/ImapList;
    .restart local v17    # "i":I
    .restart local v23    # "message":Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
    .restart local v28    # "uid":Ljava/lang/String;
    :cond_e
    :try_start_9
    const-string v29, "\\SEEN"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 360
    const-string v29, "seen"

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V

    goto :goto_4

    .line 361
    :cond_f
    const-string v29, "\\FLAGGED"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 362
    const-string v29, "flagged"

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V

    goto :goto_4

    .line 366
    .end local v8    # "count":I
    .end local v14    # "flag":Lcom/android/phone/common/mail/store/imap/ImapString;
    .end local v15    # "flags":Lcom/android/phone/common/mail/store/imap/ImapList;
    .end local v17    # "i":I
    :cond_10
    sget-object v29, Lcom/android/phone/common/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 367
    const-string v29, "INTERNALDATE"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/common/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v19

    .line 369
    .local v19, "internalDate":Ljava/util/Date;
    const-string v29, "RFC822.SIZE"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/common/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v27

    .line 371
    .local v27, "size":I
    const-string v29, "BODY[HEADER"

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v16

    .line 374
    .local v16, "header":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    .line 375
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 376
    invoke-static/range {v16 .. v16}, Lcom/android/phone/common/mail/utils/Utility;->streamFromAsciiString(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 378
    .end local v16    # "header":Ljava/lang/String;
    .end local v19    # "internalDate":Ljava/util/Date;
    .end local v27    # "size":I
    :cond_11
    sget-object v29, Lcom/android/phone/common/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 379
    const-string v29, "BODYSTRUCTURE"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v6

    .line 381
    .local v6, "bs":Lcom/android/phone/common/mail/store/imap/ImapList;
    invoke-virtual {v6}, Lcom/android/phone/common/mail/store/imap/ImapList;->isEmpty()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v29

    if-nez v29, :cond_12

    .line 383
    :try_start_a
    const-string v29, "TEXT"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v6, v0, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/phone/common/mail/store/imap/ImapList;Lcom/android/phone/common/mail/Part;Ljava/lang/String;)V
    :try_end_a
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 390
    .end local v6    # "bs":Lcom/android/phone/common/mail/store/imap/ImapList;
    :cond_12
    :goto_5
    :try_start_b
    sget-object v29, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_13

    sget-object v29, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/phone/common/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 395
    :cond_13
    const-string v29, "BODY[]"

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v4

    .line 396
    .local v4, "body":Lcom/android/phone/common/mail/store/imap/ImapString;
    invoke-virtual {v4}, Lcom/android/phone/common/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v5

    .line 397
    .local v5, "bodyStream":Ljava/io/InputStream;
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 399
    .end local v4    # "body":Lcom/android/phone/common/mail/store/imap/ImapString;
    .end local v5    # "bodyStream":Ljava/io/InputStream;
    :cond_14
    if-eqz v13, :cond_15

    .line 400
    const-string v29, "BODY["

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/common/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v5

    .line 402
    .restart local v5    # "bodyStream":Ljava/io/InputStream;
    const-string v29, "Content-Transfer-Encoding"

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Lcom/android/phone/common/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 405
    .local v10, "encodings":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 406
    .local v7, "contentTransferEncoding":Ljava/lang/String;
    if-eqz v10, :cond_17

    array-length v0, v10

    move/from16 v29, v0

    if-lez v29, :cond_17

    .line 407
    const/16 v29, 0x0

    aget-object v7, v10, v29
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 419
    :goto_6
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/mail/store/ImapFolder;->mStore:Lcom/android/phone/common/mail/store/ImapStore;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/common/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-interface {v13}, Lcom/android/phone/common/mail/Part;->getSize()I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, p3

    invoke-static {v0, v5, v7, v1, v2}, Lcom/android/phone/common/mail/store/ImapFolder;->decodeBody(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;ILcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;)Lcom/android/phone/common/mail/Body;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Lcom/android/phone/common/mail/Part;->setBody(Lcom/android/phone/common/mail/Body;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 430
    .end local v5    # "bodyStream":Ljava/io/InputStream;
    .end local v7    # "contentTransferEncoding":Ljava/lang/String;
    .end local v10    # "encodings":[Ljava/lang/String;
    :cond_15
    :goto_7
    if-eqz p3, :cond_16

    .line 431
    :try_start_d
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/android/phone/common/mail/store/ImapFolder$MessageRetrievalListener;->messageRetrieved(Lcom/android/phone/common/mail/Message;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 434
    :cond_16
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_2

    .line 384
    .restart local v6    # "bs":Lcom/android/phone/common/mail/store/imap/ImapList;
    :catch_1
    move-exception v9

    .line 385
    .local v9, "e":Lcom/android/phone/common/mail/MessagingException;
    :try_start_f
    const-string v29, "ImapFolder"

    const-string v30, "Error handling message"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v9, v1, v2}, Lcom/android/phone/common/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 386
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->setBody(Lcom/android/phone/common/mail/Body;)V

    goto/16 :goto_5

    .line 411
    .end local v6    # "bs":Lcom/android/phone/common/mail/store/imap/ImapList;
    .end local v9    # "e":Lcom/android/phone/common/mail/MessagingException;
    .restart local v5    # "bodyStream":Ljava/io/InputStream;
    .restart local v7    # "contentTransferEncoding":Ljava/lang/String;
    .restart local v10    # "encodings":[Ljava/lang/String;
    :cond_17
    const-string v7, "7bit"

    goto :goto_6

    .line 421
    :catch_2
    move-exception v9

    .line 426
    .local v9, "e":Ljava/lang/Exception;
    const-string v29, "ImapFolder"

    const-string v30, "Error fetching body %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v9, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/android/phone/common/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_7
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/phone/common/mail/Message;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->checkOpen()V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/common/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "uids":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 227
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    new-instance v2, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;

    invoke-direct {v2, p1, p0}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/phone/common/mail/store/ImapFolder;)V

    .line 231
    :goto_1
    return-object v2

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMessages([Ljava/lang/String;)[Lcom/android/phone/common/mail/Message;
    .locals 1
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    const-string v0, "1:* NOT DELETED"

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 248
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;)[Lcom/android/phone/common/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInternal([Ljava/lang/String;)[Lcom/android/phone/common/mail/Message;
    .locals 5
    .param p1, "uids"    # [Ljava/lang/String;

    .prologue
    .line 252
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .local v2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/common/mail/Message;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 254
    aget-object v3, p1, v0

    .line 255
    .local v3, "uid":Ljava/lang/String;
    new-instance v1, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;

    invoke-direct {v1, v3, p0}, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/phone/common/mail/store/ImapFolder;)V

    .line 256
    .local v1, "message":Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "message":Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
    .end local v3    # "uid":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/phone/common/mail/Message;->EMPTY_ARRAY:[Lcom/android/phone/common/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/phone/common/mail/Message;

    return-object v4
.end method

.method getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/common/mail/store/imap/ImapResponse;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/common/mail/store/imap/ImapResponse;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v4, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/common/mail/store/imap/ImapResponse;

    .line 185
    .local v2, "response":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string v6, "SEARCH"

    invoke-virtual {v2, v5, v6}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 189
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 190
    invoke-virtual {v2, v0}, Lcom/android/phone/common/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v3

    .line 191
    .local v3, "s":Lcom/android/phone/common/mail/store/imap/ImapString;
    invoke-virtual {v3}, Lcom/android/phone/common/mail/store/imap/ImapString;->isString()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    invoke-virtual {v3}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    .end local v2    # "response":Lcom/android/phone/common/mail/store/imap/ImapResponse;
    .end local v3    # "s":Lcom/android/phone/common/mail/store/imap/ImapString;
    :cond_2
    sget-object v5, Lcom/android/phone/common/mail/utils/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mMode:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v2, p1, :cond_1

    .line 110
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    const-string v3, "NOOP"

    invoke-virtual {v2, v3}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V
    :try_end_2
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :try_start_4
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    .line 123
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 124
    :try_start_5
    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mStore:Lcom/android/phone/common/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/phone/common/mail/store/ImapStore;->getConnection()Lcom/android/phone/common/mail/store/ImapConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    .line 125
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 136
    :try_start_6
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->doSelect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 140
    :try_start_7
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V
    :try_end_7
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Lcom/android/phone/common/mail/AuthenticationFailedException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    .line 145
    invoke-virtual {p0, v4}, Lcom/android/phone/common/mail/store/ImapFolder;->close(Z)V

    .line 146
    throw v0

    .line 116
    .end local v0    # "e":Lcom/android/phone/common/mail/AuthenticationFailedException;
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v2
    :try_end_8
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_2

    .line 147
    :catch_2
    move-exception v0

    .line 148
    .local v0, "e":Lcom/android/phone/common/mail/MessagingException;
    iput-boolean v4, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mExists:Z

    .line 149
    invoke-virtual {p0, v4}, Lcom/android/phone/common/mail/store/ImapFolder;->close(Z)V

    .line 150
    throw v0

    .line 120
    .end local v0    # "e":Lcom/android/phone/common/mail/MessagingException;
    :cond_1
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {p0, v2}, Lcom/android/phone/common/mail/store/ImapFolder;->close(Z)V
    :try_end_9
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 125
    :catchall_1
    move-exception v2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_2

    .line 137
    :catch_3
    move-exception v1

    .line 138
    .restart local v1    # "ioe":Ljava/io/IOException;
    :try_start_c
    iget-object v2, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 140
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_2
    move-exception v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v2
    :try_end_d
    .catch Lcom/android/phone/common/mail/AuthenticationFailedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_2
.end method

.method searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "searchCriteria"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->checkOpen()V

    .line 204
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID SEARCH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "command":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-virtual {v4, v0}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/common/mail/store/ImapFolder;->getSearchUids(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "result":[Ljava/lang/String;
    const-string v4, "ImapFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchForUids \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' results: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/android/phone/common/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "result":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 209
    :catch_0
    move-exception v2

    .line 210
    .local v2, "me":Lcom/android/phone/common/mail/store/ImapStore$ImapException;
    :try_start_1
    const-string v4, "ImapFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImapException in search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    sget-object v3, Lcom/android/phone/common/mail/utils/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    goto :goto_0

    .line 212
    .end local v2    # "me":Lcom/android/phone/common/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v1

    .line 213
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string v4, "ImapFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException in search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 214
    iget-object v4, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {p0, v4, v1}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v4
.end method

.method public setFlags([Lcom/android/phone/common/mail/Message;[Ljava/lang/String;Z)V
    .locals 12
    .param p1, "messages"    # [Lcom/android/phone/common/mail/Message;
    .param p2, "flags"    # [Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 682
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->checkOpen()V

    .line 684
    const-string v0, ""

    .line 685
    .local v0, "allFlags":Ljava/lang/String;
    array-length v6, p2

    if-lez v6, :cond_5

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .local v3, "flagList":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v1, p2

    .local v1, "count":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 688
    aget-object v2, p2, v4

    .line 689
    .local v2, "flag":Ljava/lang/String;
    const-string v6, "seen"

    if-ne v2, v6, :cond_1

    .line 690
    const-string v6, " \\SEEN"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 691
    :cond_1
    const-string v6, "deleted"

    if-ne v2, v6, :cond_2

    .line 692
    const-string v6, " \\DELETED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 693
    :cond_2
    const-string v6, "flagged"

    if-ne v2, v6, :cond_3

    .line 694
    const-string v6, " \\FLAGGED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 695
    :cond_3
    const-string v6, "answered"

    if-ne v2, v6, :cond_0

    .line 696
    const-string v6, " \\ANSWERED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 699
    .end local v2    # "flag":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    .end local v1    # "count":I
    .end local v3    # "flagList":Ljava/lang/StringBuilder;
    .end local v4    # "i":I
    :cond_5
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v6, 0x3

    new-array v10, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/android/phone/common/mail/store/ImapStore;->joinMessageUids([Lcom/android/phone/common/mail/Message;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    const/4 v11, 0x1

    if-eqz p3, :cond_6

    const-string v6, "+"

    :goto_2
    aput-object v6, v10, v11

    const/4 v6, 0x2

    aput-object v0, v10, v6

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/phone/common/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    .line 713
    return-void

    .line 702
    :cond_6
    :try_start_1
    const-string v6, "-"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 708
    :catch_0
    move-exception v5

    .line 709
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_2
    iget-object v6, p0, Lcom/android/phone/common/mail/store/ImapFolder;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {p0, v6, v5}, Lcom/android/phone/common/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/phone/common/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/phone/common/mail/MessagingException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 711
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/ImapFolder;->destroyResponses()V

    throw v6
.end method
