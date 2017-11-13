.class public Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
.super Ljava/lang/Thread;
.source "SocketConnect.java"


# static fields
.field private static final CONNECT:Ljava/lang/String; = "CONNECT "

.field private static final DBG:Z

.field private static final DELETE:Ljava/lang/String; = "DELETE "

.field private static final GET:Ljava/lang/String; = "GET "

.field private static final HEAD:Ljava/lang/String; = "HEAD "

.field private static final OPTIONS:Ljava/lang/String; = "OPTIONS "

.field private static final PATCH:Ljava/lang/String; = "PATCH "

.field private static final POST:Ljava/lang/String; = "POST "

.field private static final PUT:Ljava/lang/String; = "PUT "

.field private static final TAG:Ljava/lang/String; = "SocketConnect"

.field private static final TRACE:Ljava/lang/String; = "TRACE "


# instance fields
.field private appendCredentialsForConnection:Z

.field private from:Ljava/io/InputStream;

.field private mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

.field private protocolBasedUserCredentials:Ljava/lang/String;

.field private to:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Ljava/net/Socket;ZLjava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V
    .locals 1
    .param p1, "from"    # Ljava/net/Socket;
    .param p2, "to"    # Ljava/net/Socket;
    .param p3, "appendCredentials"    # Z
    .param p4, "userCredentials"    # Ljava/lang/String;
    .param p5, "authenticator"    # Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->protocolBasedUserCredentials:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    iput-boolean p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->appendCredentialsForConnection:Z

    iput-object p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->protocolBasedUserCredentials:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->start()V

    return-void
.end method

.method private closeInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V
    .locals 9
    .param p0, "first"    # Ljava/net/Socket;
    .param p1, "second"    # Ljava/net/Socket;
    .param p2, "userCredentials"    # Ljava/lang/String;
    .param p3, "authenticator"    # Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .prologue
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;ZLjava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V

    .local v0, "sc1":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;ZLjava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "sc2":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "sc1":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    .end local v1    # "sc2":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    :goto_1
    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    const-string v2, "SocketConnect"

    const-string v3, "SocketConnect.connect() IOException:"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/lang/Exception;
    const-string v2, "SocketConnect"

    const-string v3, "SocketConnect.run() Exception:"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v0    # "sc1":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    .restart local v1    # "sc2":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private indexOf([B[B)I
    .locals 2
    .param p1, "source"    # [B
    .param p2, "match"    # [B

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    invoke-static {p1, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->startsWith([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private isLineARequest(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const-string v0, "GET "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "POST "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "HEAD "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "PUT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "DELETE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "TRACE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "OPTIONS "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "CONNECT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "PATCH "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static startsWith([BI[B)Z
    .locals 4
    .param p0, "source"    # [B
    .param p1, "offset"    # I
    .param p2, "match"    # [B

    .prologue
    const/4 v1, 0x0

    array-length v2, p2

    array-length v3, p0

    sub-int/2addr v3, p1

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static startsWith([B[B)Z
    .locals 1
    .param p0, "source"    # [B
    .param p1, "match"    # [B

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->startsWith([BI[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v7, 0x800

    new-array v0, v7, [B

    .local v0, "buffer":[B
    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "r":I
    if-gez v6, :cond_2

    const-string v7, "SocketConnect"

    const-string v8, "Closing from and to socket."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->from:Ljava/io/InputStream;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeInputStream(Ljava/io/InputStream;)V

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeOutputStream(Ljava/io/OutputStream;)V

    .end local v6    # "r":I
    :cond_1
    :goto_1
    return-void

    .restart local v6    # "r":I
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->appendCredentialsForConnection:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    instance-of v7, v7, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;

    if-eqz v7, :cond_6

    const-string v7, "\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->indexOf([B[B)I

    move-result v4

    .local v4, "firstLineIndex":I
    const-string v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Index of end of first line read from source = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v4, :cond_5

    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    .local v3, "firstLine":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->isLineARequest(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "First Line detected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->protocolBasedUserCredentials:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->protocolBasedUserCredentials:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Header request appended with credentials: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    const-string v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Writing rest of the blob data = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Remaining size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x2

    sub-int v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v4, 0x2

    sub-int v9, v6, v9

    invoke-virtual {v7, v0, v8, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v4    # "firstLineIndex":I
    .end local v6    # "r":I
    :catch_0
    move-exception v5

    .local v5, "io":Ljava/io/IOException;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SocketConnect.run() IOException: Flag set = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->appendCredentialsForConnection:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "SocketConnect"

    const-string v8, "SocketConnect.run() IOException:"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v5    # "io":Ljava/io/IOException;
    .restart local v4    # "firstLineIndex":I
    .restart local v6    # "r":I
    :cond_5
    :try_start_1
    const-string v7, "SocketConnect"

    const-string v8, "No first line. Passing it along."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v4    # "firstLineIndex":I
    .end local v6    # "r":I
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SocketConnect.run() Exception: Flag set = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->appendCredentialsForConnection:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SocketConnect"

    const-string v8, "SocketConnect.run() Exception:"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "r":I
    :cond_6
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
