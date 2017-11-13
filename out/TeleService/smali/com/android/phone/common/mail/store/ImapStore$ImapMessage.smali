.class Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
.super Lcom/android/phone/common/mail/internet/MimeMessage;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapMessage"
.end annotation


# instance fields
.field private mFolder:Lcom/android/phone/common/mail/store/ImapFolder;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/phone/common/mail/store/ImapFolder;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "folder"    # Lcom/android/phone/common/mail/store/ImapFolder;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/common/mail/internet/MimeMessage;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->mUid:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    .line 100
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/phone/common/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 109
    return-void
.end method

.method public setFlag(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setFlag(Ljava/lang/String;Z)V

    .line 118
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/android/phone/common/mail/store/ImapFolder;

    new-array v1, v2, [Lcom/android/phone/common/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/phone/common/mail/store/ImapFolder;->setFlags([Lcom/android/phone/common/mail/Message;[Ljava/lang/String;Z)V

    .line 119
    return-void
.end method

.method public setFlagInternal(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/phone/common/mail/internet/MimeMessage;->setFlag(Ljava/lang/String;Z)V

    .line 113
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;->mSize:I

    .line 104
    return-void
.end method
