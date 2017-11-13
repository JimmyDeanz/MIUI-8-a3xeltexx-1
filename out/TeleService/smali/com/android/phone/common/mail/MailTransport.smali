.class public Lcom/android/phone/common/mail/MailTransport;
.super Ljava/lang/Object;
.source "MailTransport.java"


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mHost:Ljava/lang/String;

.field private mIn:Ljava/io/BufferedInputStream;

.field private mNetwork:Landroid/net/Network;

.field private mOut:Ljava/io/BufferedOutputStream;

.field private mPort:I

.field private mSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/mail/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Network;Ljava/lang/String;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "flags"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/phone/common/mail/MailTransport;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    .line 69
    iput-object p3, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    .line 70
    iput p4, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    .line 71
    iput p5, p0, Lcom/android/phone/common/mail/MailTransport;->mFlags:I

    .line 72
    return-void
.end method

.method private static verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    move-object v1, p0

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 165
    .local v1, "ssl":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 167
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 168
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_0

    .line 169
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_0
    sget-object v2, Lcom/android/phone/common/mail/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v2, p1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate hostname not useable for server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_1
    return-void
.end method


# virtual methods
.method public canTrustAllCertificates()Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/phone/common/mail/MailTransport;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canTrySslSecurity()Z
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/phone/common/mail/MailTransport;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone()Lcom/android/phone/common/mail/MailTransport;
    .locals 6

    .prologue
    .line 80
    new-instance v0, Lcom/android/phone/common/mail/MailTransport;

    iget-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    iget-object v3, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    iget v5, p0, Lcom/android/phone/common/mail/MailTransport;->mFlags:I

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/common/mail/MailTransport;-><init>(Landroid/content/Context;Landroid/net/Network;Ljava/lang/String;II)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/phone/common/mail/MailTransport;->clone()Lcom/android/phone/common/mail/MailTransport;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 196
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    :goto_2
    iput-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mIn:Ljava/io/BufferedInputStream;

    .line 206
    iput-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mOut:Ljava/io/BufferedOutputStream;

    .line 207
    iput-object v1, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    .line 208
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_2

    .line 197
    :catch_1
    move-exception v0

    goto :goto_1

    .line 192
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mIn:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mOut:Ljava/io/BufferedOutputStream;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mIn:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;,
            Lcom/android/phone/common/mail/CertificateValidationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 96
    const-string v4, "MailTransport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** IMAP open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, "socketAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/MailTransport;->canTrySslSecurity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    .line 102
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    iget v6, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 122
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/SocketAddress;

    const/16 v6, 0x2710

    invoke-virtual {v5, v4, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/common/mail/MailTransport;->canTrySslSecurity()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/common/mail/MailTransport;->canTrustAllCertificates()Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    iget-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    iget-object v5, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/phone/common/mail/MailTransport;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 130
    :cond_1
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x400

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mIn:Ljava/io/BufferedInputStream;

    .line 131
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const/16 v6, 0x200

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mOut:Ljava/io/BufferedOutputStream;

    .line 132
    iget-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    const v5, 0xea60

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :cond_2
    return-void

    .line 104
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    if-nez v4, :cond_4

    .line 105
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;

    .line 106
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    iget v6, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "ioe":Ljava/io/IOException;
    const-string v4, "MailTransport"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    new-instance v4, Lcom/android/phone/common/mail/MessagingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 108
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    iget-object v5, p0, Lcom/android/phone/common/mail/MailTransport;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 109
    .local v1, "inetAddresses":[Ljava/net/InetAddress;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_5

    .line 110
    new-instance v4, Ljava/net/InetSocketAddress;

    aget-object v5, v1, v0

    iget v6, p0, Lcom/android/phone/common/mail/MailTransport;->mPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_5
    iget-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/common/mail/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 134
    .end local v0    # "i":I
    .end local v1    # "inetAddresses":[Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 135
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v4, "MailTransport"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 136
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 138
    new-instance v4, Lcom/android/phone/common/mail/MessagingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method public writeLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sensitiveReplacement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 222
    if-eqz p2, :cond_0

    .line 223
    const-string v1, "MailTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 229
    .local v0, "out":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 230
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 231
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 232
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 233
    return-void

    .line 225
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_0
    const-string v1, "MailTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/phone/common/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
