.class public Lcom/android/phone/common/mail/store/ImapStore;
.super Ljava/lang/Object;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/store/ImapStore$ImapException;,
        Lcom/android/phone/common/mail/store/ImapStore$ImapMessage;
    }
.end annotation


# instance fields
.field private mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

.field private mContext:Landroid/content/Context;

.field private mPassword:Ljava/lang/String;

.field private mTransport:Lcom/android/phone/common/mail/MailTransport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/net/Network;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "serverName"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p7, "network"    # Landroid/net/Network;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/phone/common/mail/store/ImapStore;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/phone/common/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/android/phone/common/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/phone/common/mail/MailTransport;

    move-object v1, p1

    move-object v2, p7

    move-object v3, p5

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/common/mail/MailTransport;-><init>(Landroid/content/Context;Landroid/net/Network;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    .line 59
    return-void
.end method

.method static joinMessageUids([Lcom/android/phone/common/mail/Message;)Ljava/lang/String;
    .locals 7
    .param p0, "messages"    # [Lcom/android/phone/common/mail/Message;

    .prologue
    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 84
    .local v4, "notFirst":Z
    move-object v0, p0

    .local v0, "arr$":[Lcom/android/phone/common/mail/Message;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 85
    .local v3, "m":Lcom/android/phone/common/mail/Message;
    if-eqz v4, :cond_0

    .line 86
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    invoke-virtual {v3}, Lcom/android/phone/common/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const/4 v4, 0x1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "m":Lcom/android/phone/common/mail/Message;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method cloneTransport()Lcom/android/phone/common/mail/MailTransport;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mTransport:Lcom/android/phone/common/mail/MailTransport;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/MailTransport;->clone()Lcom/android/phone/common/mail/MailTransport;

    move-result-object v0

    return-object v0
.end method

.method public closeConnection()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/ImapConnection;->close()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    .line 155
    :cond_0
    return-void
.end method

.method public getConnection()Lcom/android/phone/common/mail/store/ImapConnection;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/phone/common/mail/store/ImapConnection;

    invoke-direct {v0, p0}, Lcom/android/phone/common/mail/store/ImapConnection;-><init>(Lcom/android/phone/common/mail/store/ImapStore;)V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mConnection:Lcom/android/phone/common/mail/store/ImapConnection;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    return-object v0
.end method
