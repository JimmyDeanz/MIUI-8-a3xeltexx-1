.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;
.super Ljava/lang/Thread;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnectionWithAuthentication"
.end annotation


# instance fields
.field private authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

.field private isVerificationNeeded:Z

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

.field private threadId:Ljava/lang/String;

.field private userCredentialBase64:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p2, "userCredentialBase64"    # Ljava/lang/String;
    .param p3, "threadId"    # Ljava/lang/String;
    .param p4, "isVerificationNeeded"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1280
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1274
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    .line 1275
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->userCredentialBase64:Ljava/lang/String;

    .line 1276
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    .line 1277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->isVerificationNeeded:Z

    .line 1281
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    .line 1282
    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    .line 1283
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->userCredentialBase64:Ljava/lang/String;

    .line 1284
    iput-boolean p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->isVerificationNeeded:Z

    .line 1285
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;

    .prologue
    .line 1272
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private writeToServerSocket(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1288
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 1289
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1290
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1291
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1292
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1296
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    if-nez v7, :cond_0

    .line 1297
    const-string v7, "KnoxVpnProxyServer"

    const-string v8, "Invalid threadid cannot obtain state cache."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :goto_0
    return-void

    .line 1300
    :cond_0
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getUrlStringForAuth()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getHttpVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1301
    .local v6, "urlInfo":[Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->isVerificationNeeded:Z

    if-eqz v7, :cond_2

    .line 1303
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v9

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthenticator(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-static {v8, v9, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v8

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1602(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .line 1304
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1305
    const-string v7, "KnoxVpnProxyServer"

    const-string v8, "In ProxyConnectionWithAuthentication: mAuthenticator = null. Aborting this thread."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v8

    const-string v9, "HTTP/1.1 500 Internal Server Error\r\n"

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 1307
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 1308
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 1309
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1326
    :catch_0
    move-exception v2

    .line 1327
    .local v2, "ex":Ljava/lang/Exception;
    const-string v7, "KnoxVpnProxyServer"

    const-string v8, "In ProxyConnectionWithAuthentication: Exception occured during verification. Ending this thread."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 1329
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 1330
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1312
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->userCredentialBase64:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1314
    const-string v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": Re-authentication failed in ProxyConnectionWithAuthentication for threadID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Restarting UI activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v5

    .line 1316
    .local v5, "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1317
    const-string v7, "KnoxVpnProxyServer"

    const-string v8, "In ProxyConnectionWithAuthentication Resetting connection to server."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v4

    .line 1319
    .local v4, "server":Ljava/net/Socket;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 1320
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->setDestinationSocket(Ljava/net/Socket;)V

    .line 1321
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->startCredentialsActivity(Ljava/lang/String;)V

    .line 1322
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1334
    .end local v4    # "server":Ljava/net/Socket;
    .end local v5    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v1

    .line 1335
    .local v1, "currentState":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1337
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    .line 1339
    :cond_4
    const-string v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Verification success. Authorized? = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1342
    const-string v7, "KnoxVpnProxyServer"

    const-string v8, "Source socket has already been closed. Nothing to do."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1372
    :catch_1
    move-exception v2

    .line 1373
    .restart local v2    # "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 1374
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 1375
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    const-string v7, "KnoxVpnProxyServer"

    const-string v8, ". Exception."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1347
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getRequestLine()Ljava/lang/String;

    move-result-object v3

    .line 1348
    .local v3, "requestLine":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1349
    const-string v7, "KnoxVpnProxyServer"

    const-string v8, "Destination socket has already been closed. Nothing to do."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    goto/16 :goto_0

    .line 1354
    :cond_6
    const-string v7, "KnoxVpnProxyServer"

    const-string v8, "In ProxyConnectionWithAuthentication:run. Sockets all OK."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->userCredentialBase64:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, "credentialAppendedHeader":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getRequestLine()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->writeToServerSocket(Ljava/net/Socket;Ljava/lang/String;)V

    .line 1359
    if-eqz v0, :cond_7

    .line 1360
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->writeToServerSocket(Ljava/net/Socket;Ljava/lang/String;)V

    .line 1362
    :cond_7
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 1364
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isSocketOperational(Ljava/net/Socket;)Z
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isSocketOperational(Ljava/net/Socket;)Z
    invoke-static {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1365
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getDestinationSocket()Ljava/net/Socket;

    move-result-object v9

    if-eqz v0, :cond_9

    const/4 v7, 0x0

    aget-object v7, v0, v7

    :goto_1
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-static {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v10

    invoke-static {v8, v9, v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V

    .line 1368
    :cond_8
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    .line 1369
    const-string v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In ProxyConnectionWithAuthentication:run. Removing thread"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1365
    :cond_9
    const/4 v7, 0x0

    goto :goto_1
.end method
