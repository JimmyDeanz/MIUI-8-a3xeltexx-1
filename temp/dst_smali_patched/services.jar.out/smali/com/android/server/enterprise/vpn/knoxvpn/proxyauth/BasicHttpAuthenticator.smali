.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;
.super Ljava/lang/Object;
.source "BasicHttpAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;


# static fields
.field private static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: Basic "

.field private static final TAG:Ljava/lang/String; = "BasicHttpAuthenticator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCredentialKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "userCred"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    const-string v1, "Proxy-Authorization: Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "byteBuffer":I
    if-gez v1, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    if-gez v1, :cond_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getAuthHeaderKey()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "Proxy-Authorization: Basic "

    return-object v0
.end method

.method public getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "line":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "returnValue":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;->getCredentialKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cred":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .end local v2    # "returnValue":[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .restart local v2    # "returnValue":[Ljava/lang/String;
    return-object v2
.end method

.method public verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "server"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const-string v7, "BasicHttpAuthenticator"

    const-string v8, ": In BasicHttpAuthenticator:verifyProxyAuthCredentials"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .local v0, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .local v4, "retStatus":Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    array-length v7, p4

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    :cond_0
    const-string v7, "BasicHttpAuthenticator"

    const-string v8, ": In BasicHttpAuthenticator:verifyProxyAuthCredentials Invalid input"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_1
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;->getCredentialKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "processedHeaderCred":Ljava/lang/String;
    const-string v7, "HEAD "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p4, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Proxy-Connection: keep-alive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "BasicHttpAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": In BasicHttpAuthenticator:verifyProxyAuthCredentials: Writing to server = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    const/4 v1, 0x0

    .local v1, "line":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "BasicHttpAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Line from server = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4

    :goto_1
    const-string v6, "BasicHttpAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": In verifyProxyAuthCredentials retStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v4

    goto/16 :goto_0

    :cond_4
    const-string v6, "HTTP/1."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    const-string v7, "407"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "BasicHttpAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In verifyProxyAuthCredentials: retStatus= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_3

    goto :goto_1
.end method
